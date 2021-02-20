#pragma once
#include "steam_glue.h"
class steam_net_callbacks_t {
public:
	steam_net_callbacks_t() {
		//
	};
	STEAM_CALLBACK(steam_net_callbacks_t, p2p_session_request, P2PSessionRequest_t);
	//STEAM_CALLBACK(steam_net_callbacks_t, OnPersonaStateChange, PersonaStateChange_t);
	STEAM_CALLBACK(steam_net_callbacks_t, lobby_chat_update, LobbyChatUpdate_t);
	STEAM_CALLBACK(steam_net_callbacks_t, lobby_join_requested, GameLobbyJoinRequested_t);
	STEAM_CALLBACK(steam_net_callbacks_t, micro_txn_auth_response, MicroTxnAuthorizationResponse_t);
	void lobby_list_received(LobbyMatchList_t* e, bool failed);
	void lobby_created(LobbyCreated_t* e, bool failed);
	void lobby_joined(LobbyEnter_t* e, bool failed);
	#if STEAMWORKS >= 142
	void item_deleted(DeleteItemResult_t* r, bool failed);
	#endif
	void encrypted_app_ticket_response_received(EncryptedAppTicketResponse_t* pEncryptedAppTicketResponse, bool bIOFailure);
};
extern steam_net_callbacks_t steam_net_callbacks;