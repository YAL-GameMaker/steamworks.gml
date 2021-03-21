function test_controller_type_to_name(_type)
{
    switch(_type)
    {
        case steam_controller_unknown:              return "unknown";              break;
        case steam_controller_steam_controller:     return "steam controller";     break;
        case steam_controller_xbox360:              return "xbox 360";             break;
        case steam_controller_xboxone:              return "xbox one";             break;
        case steam_controller_generic_xinput:       return "generic xinput";       break;
        case steam_controller_ps4:                  return "playstation 4";        break;
        case steam_controller_apple_mfi:            return "apple mfi";            break;
        case steam_controller_android:              return "android";              break;
        case steam_controller_switch_joycon_pair:   return "switch joycon pair";   break;
        case steam_controller_switch_joycon_single: return "switch joycon single"; break;
        case steam_controller_switch_pro:           return "switch pro";           break;
        case steam_controller_mobile_touch:         return "mobile touch";         break;
        case steam_controller_ps3:                  return "playstation 3";        break;
        
        default:
            return "<invalid type>"
        break;
    }

}