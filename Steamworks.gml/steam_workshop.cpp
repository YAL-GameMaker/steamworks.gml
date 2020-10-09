/// steam_workshop.cpp
#include "steam_glue.h"

CCallResult<steam_net_callbacks_t, DeleteItemResult_t> steam_item_deleted;

/// Deletes an item from Steam Workshop.
dllx double steam_ugc_delete_item(double published_file_id) {
	if (SteamUGC()) {
		SteamAPICall_t call = SteamUGC()->DeleteItem(published_file_id);
		steam_item_deleted.Set(call, &steam_net_callbacks, &steam_net_callbacks_t::item_deleted);
	}
	return 0;
}

void steam_net_callbacks_t::item_deleted(DeleteItemResult_t* r, bool failed) {
	steam_net_event x("ugc_delete_item");
	x.set_result(r->m_eResult);
	x.set("published_file_id_high", uint64_high(r->m_nPublishedFileId));
	x.set("published_file_id_low", uint64_low(r->m_nPublishedFileId));
	x.dispatch();
}

#pragma endregion

#pragma region Secure App Tickets
dllx double steam_get_app_ownership_ticket_data_raw(char* outbuf, uint32* vals) {
	static ISteamAppTicket* SteamAppTicket = nullptr;
	static bool ready = false;
	if (!ready) {
		ready = true;
		SteamAppTicket = (ISteamAppTicket*)SteamClient()->GetISteamGenericInterface(
			SteamAPI_GetHSteamUser(), SteamAPI_GetHSteamPipe(), STEAMAPPTICKET_INTERFACE_VERSION);
	}
	uint32 ret = 0;
	uint32 iAppID = 0;
	uint32 iSteamID = 0;
	uint32 iSignature = 0;
	uint32 cbSignature = 0;
	if (SteamAppTicket) ret = SteamAppTicket->GetAppOwnershipTicketData(
		vals[0], outbuf, vals[1], &iAppID, &iSteamID, &iSignature, &cbSignature);
	vals[0] = ret;
	vals[1] = iAppID;
	vals[2] = iSteamID;
	vals[3] = iSignature;
	vals[4] = cbSignature;
	return ret;
}

void steam_net_callbacks_t::encrypted_app_ticket_response_received(EncryptedAppTicketResponse_t* r, bool failed) {
	steam_net_event e("user_encrypted_app_ticket_response_received");
	auto result = r->m_eResult;
	if (result == k_EResultOK) {
		uint8 ticket[1024];
		uint32 ticketSize;
		if (SteamUser()->GetEncryptedAppTicket(&ticket, sizeof ticket, &ticketSize)) {
			static std::string s;
			s = b64encode(ticket, ticketSize);
			e.set("ticket_data", &s[0]);
		} else {
			trace("Failed to retrieve GetEncryptedAppTicket data.");
			result = k_EResultFail;
		}
	}
	e.set_result(result);
	e.dispatch();
}

CCallResult<steam_net_callbacks_t, EncryptedAppTicketResponse_t> steam_user_app_ticket;
dllx double steam_user_request_encrypted_app_ticket_raw(char* data, double size) {
	auto cc = SteamUser()->RequestEncryptedAppTicket(data, (int)size);
	steam_user_app_ticket.Set(cc, &steam_net_callbacks, &steam_net_callbacks_t::encrypted_app_ticket_response_received);
	return 1;
}