/// steam_inventory.cpp
#include "steam_glue.h"

/// ->bool
dllx double steam_inventory_trigger_item_drop(double item_def) {
	SteamInventoryResult_t unused;
	if (SteamInventory() && SteamInventory()->TriggerItemDrop(&unused, (SteamItemDef_t)item_def)) {
		SteamInventory()->DestroyResult(unused);
		return true;
	} else return false;
}