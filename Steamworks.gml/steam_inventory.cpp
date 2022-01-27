/// steam_inventory.cpp
#include "steam_glue.h"
// @dllg:docName SteamInventoryResult_t steam_inventory_result
// @dllg:docName SteamItemInstanceID_t steam_inventory_item_id
// @dllg:docName SteamItemDef_t steam_inventory_item_def
// @dllg:docName SteamInventoryUpdateHandle_t steam_inventory_update_handle

// helpers:
#define API SteamInventory()

#pragma region Result
///
#define steam_inventory_result_invalid (-1 /*#as steam_inventory_result*/)

dllg int steam_inventory_result_get_status(SteamInventoryResult_t inv_result) {
	return API->GetResultStatus(inv_result);
}
///
enum class steam_inventory_result_status {
	invalid = -1,
	ok = 1,
	fail = 2,
	invalid_param = 8,
	service_unavailable = 20,
	pending = 22,
	limit_exceeded = 25,
	expired = 27,
};

/// (result:steam_inventory_result)->int
dllg int steam_inventory_result_get_unix_timestamp(SteamInventoryResult_t inv_result) {
	return API->GetResultTimestamp(inv_result);
}

dllg const char* steam_inventory_result_get_item_property(SteamInventoryResult_t inv_result, int item_index, const char* prop_name) {
	#if (STEAMWORKS >= 142)
	static vector<char> tmp;
	uint32 size = 0;
	if (!API->GetResultItemProperty(inv_result, item_index, prop_name, nullptr, &size)) return "";
	if (tmp.size() <= size) tmp.resize(size + 1);
	if (!API->GetResultItemProperty(inv_result, item_index, prop_name, tmp.data(), &size)) return "";
	return tmp.data();
	#else
	return "";
	#endif
}

struct steam_inventory_result_item {
	SteamItemInstanceID_t item_id;
	SteamItemDef_t item_def;
	uint16 quantity;
	uint16 flags;
};

dllg vector<steam_inventory_result_item> steam_inventory_result_get_items(SteamInventoryResult_t inv_result) {
	uint32 count = 0;
	API->GetResultItems(inv_result, nullptr, &count);
	vector<SteamItemDetails_t> items{};
	items.resize(count);

	vector<steam_inventory_result_item> out{};
	if (!API->GetResultItems(inv_result, items.data(), &count)) return out;

	out.resize(count);
	for (auto i = 0u; i < count; i++) {
		out[i].item_id = items[i].m_itemId;
		out[i].item_def = items[i].m_iDefinition;
		out[i].quantity = items[i].m_unQuantity;
		out[i].flags = items[i].m_unFlags;
	}

	return out;
}

dllg bool steam_inventory_result_destroy(SteamInventoryResult_t inv_result) {
	if (inv_result != k_SteamInventoryResultInvalid) {
		API->DestroyResult(inv_result);
		return true;
	} else return false;
}
#pragma endregion

dllg SteamInventoryResult_t steam_inventory_trigger_item_drop(SteamItemDef_t item_def) {
	SteamInventoryResult_t result;
	if (API->TriggerItemDrop(&result, item_def)) {
		return result;
	} else return k_SteamInventoryResultInvalid;
}

dllg SteamInventoryResult_t steam_inventory_add_promo_item(SteamItemDef_t item_def) {
	SteamInventoryResult_t result;
	if (API->AddPromoItem(&result, item_def)) {
		return result;
	} else return k_SteamInventoryResultInvalid;
}

dllg SteamInventoryResult_t steam_inventory_add_promo_items(vector<SteamItemDef_t> item_defs) {
	SteamInventoryResult_t result;
	if (API->AddPromoItems(&result, item_defs.data(), item_defs.size())) {
		return result;
	} else return k_SteamInventoryResultInvalid;
}

dllg SteamInventoryResult_t steam_inventory_consume_item(SteamItemInstanceID_t item_id, uint32 quantity) {
	SteamInventoryResult_t result;
	if (API->ConsumeItem(&result, item_id, quantity)) {
		return result;
	} else return k_SteamInventoryResultInvalid;
}

struct steam_inventory_itemdef_w_quantity {
	SteamItemDef_t item_def;
	uint32 quantity;
};
struct steam_inventory_itemid_w_quantity {
	SteamItemInstanceID_t item_id;
	uint32 quantity;
};
dllg SteamInventoryResult_t steam_inventory_exchange_items(vector<steam_inventory_itemdef_w_quantity> create, vector< steam_inventory_itemid_w_quantity> destroy) {
	vector<SteamItemDef_t> create_defs; create_defs.resize(create.size());
	vector<uint32> create_quantities; create_quantities.resize(create.size());
	for (auto i = 0u; i < create.size(); i++) {
		create_defs[i] = create[i].item_def;
		create_quantities[i] = create[i].quantity;
	}
	
	vector<SteamItemInstanceID_t> destroy_items; destroy_items.resize(destroy.size());
	vector<uint32> destroy_quantities; destroy_quantities.resize(destroy.size());
	for (auto i = 0u; i < destroy.size(); i++) {
		destroy_items[i] = destroy[i].item_id;
		destroy_quantities[i] = destroy[i].quantity;
	}
	
	SteamInventoryResult_t result;
	if (API->ExchangeItems(&result, create_defs.data(), create_quantities.data(), create.size(), destroy_items.data(), destroy_quantities.data(), destroy.size())) {
		return result;
	} else return k_SteamInventoryResultInvalid;
}

dllg SteamInventoryResult_t steam_inventory_generate_items(vector<steam_inventory_itemdef_w_quantity> create) {
	vector<SteamItemDef_t> create_defs; create_defs.resize(create.size());
	vector<uint32> create_quantities; create_quantities.resize(create.size());
	for (auto i = 0u; i < create.size(); i++) {
		create_defs[i] = create[i].item_def;
		create_quantities[i] = create[i].quantity;
	}

	SteamInventoryResult_t result;
	if (API->GenerateItems(&result, create_defs.data(), create_quantities.data(), create.size())) {
		return result;
	} else return k_SteamInventoryResultInvalid;
}


dllg SteamInventoryResult_t steam_inventory_get_all_items() {
	SteamInventoryResult_t result;
	if (API->GetAllItems(&result)) {
		return result;
	} else return k_SteamInventoryResultInvalid;
}

#if (STEAMWORKS >= 142)
CCallResult<steam_net_callbacks_t, SteamInventoryEligiblePromoItemDefIDs_t> _steam_inventory_request_eligible_promo_item_defs;
void steam_net_callbacks_t::steam_inventory_request_eligible_promo_item_defs(SteamInventoryEligiblePromoItemDefIDs_t* e, bool failed) {
	steam_net_event q("inventory_request_eligible_promo_item_defs");
	q.set_result(e->m_result);

	uint64 user_id = e->m_steamID.ConvertToUint64();
	q.set("user_id_high", uint64_high(user_id));
	q.set("user_id_low", uint64_low(user_id));
	static string user_id_str{};
	user_id_str = std::to_string(user_id);
	q.set("user_id_string", user_id_str.data());

	static string json{};
	uint32 n = e->m_numEligiblePromoItemDefs;
	static vector<SteamItemDef_t> item_defs{};
	if (item_defs.size() < n) item_defs.resize(n);
	if (e->m_result == EResult::k_EResultOK && API->GetEligiblePromoItemDefinitionIDs(e->m_steamID, item_defs.data(), &n)) {
		json = "[";
		for (auto i = 0u; i < n; i++) {
			if (i > 0) json.append(",");
			json.append(std::to_string(item_defs[i]));
		}
		json.append("]");
	} else {
		json = "[]";
		n = 0;
	}
	q.set("item_def_json", json.data());
	q.set("item_def_count", n);

	q.set("is_cached_data", e->m_bCachedData);
	q.dispatch();
}

dllg bool steam_inventory_start_purchase(vector<steam_inventory_itemdef_w_quantity> items) {
	vector<SteamItemDef_t> create_defs; create_defs.resize(items.size());
	vector<uint32> create_quantities; create_quantities.resize(items.size());
	for (auto i = 0u; i < items.size(); i++) {
		create_defs[i] = items[i].item_def;
		create_quantities[i] = items[i].quantity;
	}
	auto call = API->StartPurchase(create_defs.data(), create_quantities.data(), items.size());
	return call != k_uAPICallInvalid;
}
#endif

dllg bool steam_inventory_request_eligible_promo_item_defs(uint64 user_id = 0) {
	#if (STEAMWORKS >= 142)
	CSteamID userID{};
	if (user_id != 0) {
		userID.SetFromUint64(user_id);
	} else userID = SteamUser()->GetSteamID();
	SteamAPICall_t call = API->RequestEligiblePromoItemDefinitionsIDs(userID);
	if (call == k_uAPICallInvalid) return false;
	_steam_inventory_request_eligible_promo_item_defs.Set(call, &steam_net_callbacks, &steam_net_callbacks_t::steam_inventory_request_eligible_promo_item_defs);
	return true;
	#else
	return false;
	#endif
}


dllg SteamInventoryResult_t steam_inventory_get_items_by_id(vector<SteamItemInstanceID_t> item_ids) {
	SteamInventoryResult_t result;
	if (API->GetItemsByID(&result, item_ids.data(), item_ids.size())) {
		return result;
	} else return k_SteamInventoryResultInvalid;
}

#pragma region Update properties
dllg SteamInventoryUpdateHandle_t steam_inventory_start_update_properties() {
	#if (STEAMWORKS >= 142)
	return API->StartUpdateProperties();
	#else
	return 0;
	#endif
}

dllg bool steam_inventory_set_property_bool(SteamInventoryUpdateHandle_t handle, SteamItemInstanceID_t item_id, const char* prop_name, bool value) {
	#if (STEAMWORKS >= 142)
	return API->SetProperty(handle, item_id, prop_name, value);
	#else
	return false;
	#endif
}
dllg bool steam_inventory_set_property_float(SteamInventoryUpdateHandle_t handle, SteamItemInstanceID_t item_id, const char* prop_name, float value) {
	#if (STEAMWORKS >= 142)
	return API->SetProperty(handle, item_id, prop_name, value);
	#else
	return false;
	#endif
}
dllg bool steam_inventory_set_property_int(SteamInventoryUpdateHandle_t handle, SteamItemInstanceID_t item_id, const char* prop_name, int64 value) {
	#if (STEAMWORKS >= 142)
	return API->SetProperty(handle, item_id, prop_name, value);
	#else
	return false;
	#endif
}
dllg bool steam_inventory_set_property_string(SteamInventoryUpdateHandle_t handle, SteamItemInstanceID_t item_id, const char* prop_name, const char* value) {
	#if (STEAMWORKS >= 142)
	return API->SetProperty(handle, item_id, prop_name, value);
	#else
	return false;
	#endif
}

dllg bool steam_inventory_remove_property(SteamInventoryUpdateHandle_t handle, SteamItemInstanceID_t item_id, const char* prop_name) {
	#if (STEAMWORKS >= 142)
	return API->RemoveProperty(handle, item_id, prop_name);
	#else
	return false;
	#endif
}

dllg SteamInventoryResult_t steam_inventory_submit_update_properties(SteamInventoryUpdateHandle_t handle) {
	#if (STEAMWORKS >= 142)
	SteamInventoryResult_t result;
	return API->SubmitUpdateProperties(handle, &result) ? result : k_SteamInventoryResultInvalid;
	#else
	return k_SteamInventoryResultInvalid;
	#endif
}

#pragma endregion

dllg bool steam_inventory_load_item_definitions() {
	return API->LoadItemDefinitions();
}

#pragma region Prices

dllg optional<uint64> steam_inventory_get_item_price(SteamItemDef_t item_def) {
	#if (STEAMWORKS >= 142)
	uint64 result;
	if (API->GetItemPrice(item_def, &result)) {
		return result;
	} else return {};
	#else
	return {};
	#endif
}

struct steam_inventory_get_item_prices_t {
	SteamItemDef_t item_def;
	uint64 price;
};
dllg optional<vector<steam_inventory_get_item_prices_t>> steam_inventory_get_items_with_prices() {
	#if (STEAMWORKS >= 142)
	auto n = API->GetNumItemsWithPrices();
	vector<SteamItemDef_t> defs; defs.resize(n);
	vector<uint64> prices; prices.resize(n);
	if (!API->GetItemsWithPrices(defs.data(), prices.data(), n)) return {};
	vector<steam_inventory_get_item_prices_t> result; result.resize(n);
	for (auto i = 0u; i < n; i++) {
		result[i].item_def = defs[i];
		result[i].price = prices[i];
	}
	return result;
	#else
	return {};
	#endif
}

#if (STEAMWORKS >= 142)
CCallResult<steam_net_callbacks_t, SteamInventoryRequestPricesResult_t> _steam_inventory_request_prices;
void steam_net_callbacks_t::steam_inventory_request_prices(SteamInventoryRequestPricesResult_t* e, bool failed) {
	steam_net_event q("inventory_request_prices");
	static char currency[5];
	strncpy(currency, e->m_rgchCurrency, 4);
	currency[4] = 0;
	q.set_result(e->m_result);
	q.set("currency", currency);
	q.dispatch();
}
#endif

dllg bool steam_inventory_request_prices() {
	#if (STEAMWORKS >= 142)
	SteamAPICall_t call = API->RequestPrices();
	if (call == k_uAPICallInvalid) return false;
	_steam_inventory_request_prices.Set(call, &steam_net_callbacks, &steam_net_callbacks_t::steam_inventory_request_prices);
	return true;
	#else
	return false;
	#endif
}

// @dllg:cond
#pragma endregion

// todo: serialization functions

dllg SteamInventoryResult_t steam_inventory_transfer_item_quantity(SteamItemInstanceID_t source_item_id, uint32 quantity, SteamItemInstanceID_t dest_item_id) {
	SteamInventoryResult_t result;
	if (API->TransferItemQuantity(&result, source_item_id, quantity, dest_item_id)) {
		return result;
	} else return k_SteamInventoryResultInvalid;
}

#pragma region callbacks

void steam_net_callbacks_t::steam_inventory_result_ready(SteamInventoryResultReady_t* e) {
	steam_net_event r("inventory_result_ready");
	r.set_result(e->m_result);
	r.set("handle", (int32)e->m_handle);
	r.dispatch();
}

void steam_net_callbacks_t::steam_inventory_full_update(SteamInventoryFullUpdate_t* e) {
	steam_net_event r("inventory_full_update");
	r.set_success(true);
	r.set("handle", (int32)e->m_handle);
	r.dispatch();
}

void steam_net_callbacks_t::steam_inventory_definition_update(SteamInventoryDefinitionUpdate_t* e) {
	steam_net_event r("inventory_definition_update");
	r.set_success(true);
	r.dispatch();
}
#pragma endregion

#undef API