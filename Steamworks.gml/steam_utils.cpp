/// steam_utils.cpp
#include "steam_glue.h"
///
enum class steam_overlay_notification_position {
	top_left = 0,
	top_right,
	bottom_left,
	bottom_right,
};
///
dllx double steam_set_overlay_notification_position(double position) {
	if (!SteamUtils()) return false;
	SteamUtils()->SetOverlayNotificationPosition((ENotificationPosition)(int)position);
	return true;
}
///
dllx double steam_set_overlay_notification_inset(double hor_inset, double vert_inset) {
	if (!SteamUtils()) return false;
	SteamUtils()->SetOverlayNotificationInset((int)hor_inset, (int)vert_inset);
	return true;
}