{
    "id": "b43f0e54-4a3f-440c-bfe8-ca20c67f923b",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "Steamworks_gml",
    "IncludedResources": [
        "Included Files\\steamworks.gml.html"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 105554163798254,
    "date": "2020-10-26 01:01:57",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "3d8d5f61-6901-4239-9370-0e8b174443de",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "2d3d2066-808e-5b2f-ac86-f84c735366b0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_version",
                    "hidden": false,
                    "value": "1300"
                },
                {
                    "id": "c3d3ce88-808e-5bc1-bd97-07b387f933ee",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_unknown",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "1d1675db-bf12-8fc9-c545-89ad3f009397",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_steam_controller",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "f1c39e4f-ce17-b3ce-6bf0-0eff6957421c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_xbox360",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "897c5a53-a3fd-f2b2-7a1f-95fb10e0de2b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_xboxone",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "1f72a377-a545-b87f-abf4-0fa9c84d6a2a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_generic_xinput",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "39e70219-a4a2-09f0-d068-2a62ae9e198f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_ps4",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "7c76942f-505b-4346-2a60-b2b2c527c9d8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_apple_mfi",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "8c52347c-f855-5ce9-e667-9e565f9bd840",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_android",
                    "hidden": false,
                    "value": "7"
                },
                {
                    "id": "f56f2efa-9b53-a5b2-4849-d01992d139d6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_switch_joycon_pair",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "3bcda3b3-89c0-87e3-4a6f-e51386854ea5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_switch_joycon_single",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "5aa67250-65ac-e788-4e1f-c96400004628",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_switch_pro",
                    "hidden": false,
                    "value": "10"
                },
                {
                    "id": "7b77936a-3a80-a825-9cf3-7948ec50dbd9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_mobile_touch",
                    "hidden": false,
                    "value": "11"
                },
                {
                    "id": "57f092e1-620e-0f73-e0e4-b77b68e83b34",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_ps3",
                    "hidden": false,
                    "value": "12"
                },
                {
                    "id": "5a4a5711-3b35-e058-173d-8f3b0824dd07",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_invalid",
                    "hidden": false,
                    "value": "(-1 \/*#as steam_inventory_result*\/)"
                },
                {
                    "id": "f0e0fdbb-0806-d3f2-351f-3480bcf9885d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_invalid",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "91dab9ac-7a47-612e-ba45-3b872a2b28d3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_ok",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "792dcb1a-937c-b3c6-515f-f1b642e80b89",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_fail",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "d01735a4-66d3-2f9d-497d-10ab2fa44f01",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_invalid_param",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "1b3e64bb-dbab-e4ba-f6df-06d681aa1dfe",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_service_unavailable",
                    "hidden": false,
                    "value": "20"
                },
                {
                    "id": "b1e7e5c4-7148-180b-d06d-731ed0967b01",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_pending",
                    "hidden": false,
                    "value": "22"
                },
                {
                    "id": "926ce08d-5020-cb60-9164-0df3d848f2ba",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_limit_exceeded",
                    "hidden": false,
                    "value": "25"
                },
                {
                    "id": "07f022fc-556a-4d40-4e1f-bf4988c72128",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_expired",
                    "hidden": false,
                    "value": "27"
                },
                {
                    "id": "69796422-a2ac-796b-5379-61d5e335bb64",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_max_chat_message_size",
                    "hidden": false,
                    "value": "4096"
                },
                {
                    "id": "0f1f0244-4c42-970d-8ea4-3480be605582",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_entered",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "d843208e-1a47-da93-6576-4a94afc3a097",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_left",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "c25a07d6-5d26-5d2a-240c-c23177b8bfcd",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_disconnected",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "93e7996a-311f-d0a1-7ab4-97da0a4a07b8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_kicked",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "9e67f8cc-eefe-03cb-e529-22a36bbd6ad5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_banned",
                    "hidden": false,
                    "value": "16"
                },
                {
                    "id": "a2363bf1-780a-47d1-8035-52df62586ba5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_eq",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "5fda95d9-ccfe-4da0-a3cc-b8d79a3566fa",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ne",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "f04cad02-ba95-44a9-9692-0cd0a6671d3e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_lt",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "efaa1498-17a1-41c6-b40f-b91c880bc4d6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_gt",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "e0e3a534-5e00-4fda-a259-8957cb3a9dfc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_le",
                    "hidden": false,
                    "value": "-2"
                },
                {
                    "id": "2f7ad07b-4edc-4be2-a337-1442a8bc59e9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ge",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "6ed1700c-b7d1-4a29-ad8a-ad48b3141a44",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_close",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "0a0f831c-3c9e-49f2-9d91-e17568dbc1a6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_default",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "e3b320b2-7599-4ce3-921b-fc3a59dd6f70",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_far",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "55cedc69-ba24-49f6-8c58-2f3c452f3951",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_worldwide",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "1c0bfe24-fefc-4b0f-8d0a-9c501384283f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_private",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "510ddd05-d333-4706-bc0e-3f73c0a3faea",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_friends_only",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "4997f457-6db7-4ad7-9af6-464c0bb415d2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_public",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "0e082856-a408-40f4-bfa6-e789c5563619",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "70f606ec-1d2f-4f9a-83d6-182015f67d89",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable_nodelay",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "654c8601-b24e-4ec3-89f5-c2a385b3b321",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "a6418d5f-463e-4203-a19d-b51a1d387699",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable_buffer",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "e1f1ecaa-3b35-e0e3-e8c2-cb7f4324994c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_user_avatar_size_small",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "a0cba89f-83de-da93-6798-2cf07d2d4eb5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_user_avatar_size_medium",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "a45a9e4f-c601-a2d7-6ae1-1f70ee293213",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_user_avatar_size_large",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "3c2c3177-e6e8-3d3e-8ea4-ad192abdbb61",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_top_left",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "759efdca-64a9-aded-86fe-f8bbce53a02c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_top_right",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "c2c307d6-5060-0872-304b-b5dd81d7db83",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_bottom_left",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "79f46f01-16ea-a76f-2f53-4826e079f686",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_bottom_right",
                    "hidden": false,
                    "value": "3"
                }
            ],
            "copyToTargets": 105553658380352,
            "filename": "Steamworks.gml.dll",
            "final": "",
            "functions": [
                {
                    "id": "87978acc-3b35-e085-062c-43f7cbcaff2a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_status_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_status_raw",
                    "returnType": 2
                },
                {
                    "id": "3c2c3177-6e60-b53e-cae0-61d5e7e8aa71",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_unix_timestamp_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_unix_timestamp_raw",
                    "returnType": 2
                },
                {
                    "id": "fc0764db-3b56-da90-5acd-85678b481b68",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_result_get_item_property_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_item_property_raw",
                    "returnType": 1
                },
                {
                    "id": "bf1e8414-c683-1e01-c957-3e41a2dd437a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_items_raw",
                    "returnType": 2
                },
                {
                    "id": "fb34e4c4-475f-b422-9d41-cae3b9aca25a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_items_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_items_raw_post",
                    "returnType": 2
                },
                {
                    "id": "af345706-9a47-2564-1001-35698d07e4f1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_destroy_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_destroy_raw",
                    "returnType": 2
                },
                {
                    "id": "4a8725f4-7ddb-80f5-2622-2c224c0d1741",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_trigger_item_drop_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_trigger_item_drop_raw",
                    "returnType": 2
                },
                {
                    "id": "53c76e1f-997d-94c5-d023-d1b0cab504ef",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_add_promo_item_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_add_promo_item_raw",
                    "returnType": 2
                },
                {
                    "id": "a59efd71-2974-cb82-7976-8655965a39c2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_add_promo_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_add_promo_items_raw",
                    "returnType": 2
                },
                {
                    "id": "d2c2df99-0806-d3d0-062c-2591aabddd0f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_consume_item_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_consume_item_raw",
                    "returnType": 2
                },
                {
                    "id": "948fecdb-12cf-cb8a-f9cd-acf70d8f6c2c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_exchange_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_exchange_items_raw",
                    "returnType": 2
                },
                {
                    "id": "3c2c3177-d5db-0e3e-4268-52e6d571bb61",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_generate_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_generate_items_raw",
                    "returnType": 2
                },
                {
                    "id": "2d3d2066-b3bd-682f-173d-70c4f360ee30",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_start_purchase_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_start_purchase_raw",
                    "returnType": 2
                },
                {
                    "id": "87978acc-3b35-e085-ac86-e95d6adb449a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_all_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_all_items_raw",
                    "returnType": 2
                },
                {
                    "id": "0f1f0244-0806-d30d-8ea4-70c4fd1722f2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_request_eligible_promo_item_defs_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_request_eligible_promo_item_defs_raw",
                    "returnType": 2
                },
                {
                    "id": "ae254617-2a47-256f-a0ba-2fc89df3a00e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_items_by_id_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_items_by_id_raw",
                    "returnType": 2
                },
                {
                    "id": "a5b5a8ee-5d53-86a7-e8c2-e95d65609948",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_start_update_properties_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_start_update_properties_raw",
                    "returnType": 2
                },
                {
                    "id": "ce254653-00ed-cb89-c910-eb83648c5fc2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_bool_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_bool_raw",
                    "returnType": 2
                },
                {
                    "id": "a49670a1-2c8f-0879-a8cf-f1ba0b7f7036",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_float_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_float_raw",
                    "returnType": 2
                },
                {
                    "id": "2528c782-0693-0dd5-0d73-e391ad8666be",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_int_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_int_raw",
                    "returnType": 2
                },
                {
                    "id": "ff7194bb-5efe-b4b7-2f25-29a5bd2f48bf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        1,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_string_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_string_raw",
                    "returnType": 2
                },
                {
                    "id": "6cd4a480-3141-0990-68ec-641b001605b9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_remove_property_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_remove_property_raw",
                    "returnType": 2
                },
                {
                    "id": "164b9ddc-5353-da69-91a6-40275a6fdb8b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_submit_update_properties_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_submit_update_properties_raw",
                    "returnType": 2
                },
                {
                    "id": "96adce24-b2cf-165d-8c32-0cf5f06b28c2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_load_item_definitions_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_load_item_definitions_raw",
                    "returnType": 2
                },
                {
                    "id": "e00fad7c-feea-3b45-2515-5b57b8448cf5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_item_price_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_item_price_raw",
                    "returnType": 2
                },
                {
                    "id": "87978acc-808e-5b85-ac86-52e6d6ac33ea",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_items_with_prices_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_items_with_prices_raw",
                    "returnType": 2
                },
                {
                    "id": "1f3457bd-83de-074e-b6ba-2cfc681e7db5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_items_with_prices_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_items_with_prices_raw_post",
                    "returnType": 2
                },
                {
                    "id": "e05a4392-17c8-1960-c152-2c9b77b8fb82",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_request_prices_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_request_prices_raw",
                    "returnType": 2
                },
                {
                    "id": "c22d34e5-6926-5d2d-1d90-0eb9fd19ea9f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_transfer_item_quantity_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_transfer_item_quantity_raw",
                    "returnType": 2
                },
                {
                    "id": "2f345724-0e03-430f-a0ba-38bfc1b1822c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_leaderboard_get_entry_count_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_leaderboard_get_entry_count_raw",
                    "returnType": 2
                },
                {
                    "id": "2d3d2066-7f71-a42f-bd97-16a297e8cc10",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_lobby_send_chat_message_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_send_chat_message_raw",
                    "returnType": 2
                },
                {
                    "id": "a5b5a8ee-e6e8-3da7-9fb5-2591a4ca4498",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_send_chat_message_buffer_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_send_chat_message_buffer_raw",
                    "returnType": 2
                },
                {
                    "id": "96869bdd-e6e8-3d94-240e-ad192d6066bb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_get_chat_message_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_chat_message_data_raw",
                    "returnType": 2
                },
                {
                    "id": "f0e0fdbb-1917-c2f2-715b-61d5e9bd885d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_set_joinable_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_set_joinable_raw",
                    "returnType": 2
                },
                {
                    "id": "3c2c3177-6e60-b53e-8ea4-2591a81711c1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_friends_game_info_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_friends_game_info_raw",
                    "returnType": 2
                },
                {
                    "id": "f7bcdf60-c68b-074f-ae89-874e19a4d7a4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_friends_game_info_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_friends_game_info_raw_post",
                    "returnType": 2
                },
                {
                    "id": "b4a4b9ff-919f-4ab6-062c-da6e5e0600d9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_user_persona_name_sync_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_persona_name_sync_raw",
                    "returnType": 1
                },
                {
                    "id": "776a22d3-3b7a-2f97-5852-4f51116848ef",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_user_avatar_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_avatar_raw",
                    "returnType": 2
                },
                {
                    "id": "5d5f7a77-ddcd-ad25-092d-ee83f953847b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_image_get_size_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_image_get_size_raw",
                    "returnType": 2
                },
                {
                    "id": "e1f1ecaa-d5db-0ee3-bd97-70c4fc35dd0c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_image_get_rgba_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_image_get_rgba_raw",
                    "returnType": 2
                },
                {
                    "id": "43f89b42-04a9-4305-05ba-547c52aa39c2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_image_get_bgra_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_image_get_bgra_raw",
                    "returnType": 2
                },
                {
                    "id": "e95bdddc-7d4e-4d2a-902e-c7efebde1882",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_reset",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_reset",
                    "returnType": 2
                },
                {
                    "id": "3a7c5d3f-8a76-4b9e-8c09-cc4886b11f46",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_init",
                    "help": "steam_controller_init() : Should be called on game start if you use Steam Controller",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_init",
                    "returnType": 2
                },
                {
                    "id": "d38d7624-b79f-495f-ab42-5db5e2c2ee8f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_update",
                    "help": "steam_controller_update() : Can be called prior to other controller functions for lower latency. Called by steam_gml_update.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_update",
                    "returnType": 2
                },
                {
                    "id": "f156e946-1ac1-4013-8c55-d9476427a69f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_max_count_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_max_count_raw",
                    "returnType": 2
                },
                {
                    "id": "447fe437-77ed-4309-ba80-e7bca5643464",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_ids_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_ids_raw",
                    "returnType": 2
                },
                {
                    "id": "44a9b15c-1ce8-469f-d412-c8204e627bf3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_controller_get_type",
                    "help": "steam_controller_get_type()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_type",
                    "returnType": 2
                },
                {
                    "id": "758f834d-abcf-4702-80eb-99d77a7ad698",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_actionset_id",
                    "help": "steam_controller_get_actionset_id() : Assigns and returns ActionSet ID for given name, -1 if actionset is not found",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_actionset_id",
                    "returnType": 2
                },
                {
                    "id": "501f2d3d-df02-432b-ac35-8561c54778c4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_controller_get_actionset",
                    "help": "steam_controller_get_actionset() : Returns action set ID (generated by steam_controller_get_actionset_id), as per GetCurrentActionSet",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_actionset",
                    "returnType": 2
                },
                {
                    "id": "a5b5a8ee-5d53-86a7-715b-70c4fde88858",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_set_actionset",
                    "help": "steam_controller_set_actionset(, ) : Changes controller action set, as per ActivateActionSet",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_set_actionset",
                    "returnType": 2
                },
                {
                    "id": "a90715a6-91d1-49bb-bac4-e8d4e0790eea",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_digital_id",
                    "help": "steam_controller_get_digital_id()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_digital_id",
                    "returnType": 2
                },
                {
                    "id": "557527cb-e406-4ddf-bf95-b1818d7d803f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_digital_value",
                    "help": "steam_controller_get_digital_value(, ) : Retreives digital action state (true\/false)",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_digital_value",
                    "returnType": 2
                },
                {
                    "id": "786db88e-e2d2-4899-b0f5-06b43794db6b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_digital_status",
                    "help": "steam_controller_get_digital_status(, ) : Returns whether the given digital action is currently active (true\/false)",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_digital_status",
                    "returnType": 2
                },
                {
                    "id": "ffb5fd48-cca5-48b8-bbde-61db4c8e74dd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        1
                    ],
                    "externalName": "steam_controller_get_digital_origins_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_digital_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "8aa0de85-bfc9-4ffb-a919-d144f000ae3f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_analog_id",
                    "help": "steam_controller_get_analog_id()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_analog_id",
                    "returnType": 2
                },
                {
                    "id": "787d605f-e6dc-4a7a-a34c-937fee9be541",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_data",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_analog_data",
                    "returnType": 2
                },
                {
                    "id": "53e8f1fa-54db-4c91-add9-03f937835cdf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        1
                    ],
                    "externalName": "steam_controller_get_analog_origins_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_analog_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "6c6b5d3f-1e7c-4f17-83db-58c4e893cc0c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_max_origins_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_max_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "1b701353-cd30-4300-57ab-9de22841824a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "externalName": "RegisterCallbacks",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "RegisterCallbacks",
                    "returnType": 2
                },
                {
                    "id": "686907d6-57b4-4c31-ad91-1fd41a6669a4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_chat_message_text",
                    "help": "steam_lobby_get_chat_message_text()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_chat_message_text",
                    "returnType": 1
                },
                {
                    "id": "784320bd-11fc-5210-5c32-3652f0bf6c86",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_chat_message_size",
                    "help": "steam_lobby_get_chat_message_size()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_chat_message_size",
                    "returnType": 2
                },
                {
                    "id": "a5b5a8ee-a2ac-79a7-715b-8f3b06accc18",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_lobby_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_lobby_id_high",
                    "returnType": 2
                },
                {
                    "id": "359efd17-dd30-e9ab-ee67-05682437e479",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_lobby_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_lobby_id_low",
                    "returnType": 2
                },
                {
                    "id": "9fb15cc4-d241-417a-8c6a-1741ad770509",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_leave",
                    "help": "steam_lobby_leave() : Leaves the current lobby (if any)",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_leave",
                    "returnType": 2
                },
                {
                    "id": "1ccc8dcd-e418-4b75-8692-54493016c330",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_is_owner",
                    "help": "steam_lobby_is_owner() : Returns whether the local user is the owner of the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_is_owner",
                    "returnType": 2
                },
                {
                    "id": "90b49a0e-b17d-49cd-9b4f-2e7dca9f3396",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_owner_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_owner_id_high",
                    "returnType": 2
                },
                {
                    "id": "97884e49-15f5-481a-a729-846b6b875f10",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_owner_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_owner_id_low",
                    "returnType": 2
                },
                {
                    "id": "9a610253-bc21-4306-3b10-574230de7dc2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_set_owner_id_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_set_owner_id_raw",
                    "returnType": 2
                },
                {
                    "id": "499c618d-8f50-4272-9df1-b7839849818c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_member_count",
                    "help": "steam_lobby_get_member_count() : Returns the number of users in the lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_member_count",
                    "returnType": 2
                },
                {
                    "id": "d2a0bdfd-0fef-4055-b04d-c003a9445e91",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_member_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_member_id_high",
                    "returnType": 2
                },
                {
                    "id": "0d7e96ea-fb6f-408c-80d4-14c2f3f7d8b0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_member_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_member_id_low",
                    "returnType": 2
                },
                {
                    "id": "e558479c-965a-4396-b1ac-f02a06e3bb0e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_activate_invite_overlay",
                    "help": "steam_lobby_activate_invite_overlay() : Opens an overlay to invite users to the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_activate_invite_overlay",
                    "returnType": 2
                },
                {
                    "id": "f44a55f3-3a31-46bc-b952-5f5cac67aa0b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_list_request",
                    "help": "steam_lobby_list_request() : Requests the list of lobbies to be (re-)loaded.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_request",
                    "returnType": 2
                },
                {
                    "id": "f7264da9-1558-4b51-8963-64d7687f239f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_list_is_loading",
                    "help": "steam_lobby_list_is_loading() : Returns whether the list of lobbies is currently loading.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_is_loading",
                    "returnType": 2
                },
                {
                    "id": "1d0ad37f-f4d3-4e22-b67d-7186a0aa403d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_list_add_string_filter",
                    "help": "steam_lobby_list_add_string_filter(, , ) : Sets a string filter for the next lobby list request.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_string_filter",
                    "returnType": 2
                },
                {
                    "id": "34d78a66-66dd-488a-a6db-8249273c5c98",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_add_numerical_filter",
                    "help": "steam_lobby_list_add_numerical_filter(, , ) : Sets a numerical filter for the next lobby list request.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_numerical_filter",
                    "returnType": 2
                },
                {
                    "id": "bd0a6ecd-b9c1-4d04-b652-b4221777cb66",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_list_add_near_filter",
                    "help": "steam_lobby_list_add_near_filter(, ) : Sorts the results of the next lobby list request based to proximity to the given value.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_near_filter",
                    "returnType": 2
                },
                {
                    "id": "04239e20-0a6e-4089-a281-53c76863af42",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_add_distance_filter",
                    "help": "steam_lobby_list_add_distance_filter() : Restricts results by region",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_distance_filter",
                    "returnType": 2
                },
                {
                    "id": "87d7d67f-f669-41e8-b9d7-7dff4920cf7c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_list_get_count",
                    "help": "steam_lobby_list_get_count() : Returns the number of the matching lobbies.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_get_count",
                    "returnType": 2
                },
                {
                    "id": "370cb536-f12b-455e-a756-afb5efebb587",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "steam_lobby_list_get_data",
                    "help": "steam_lobby_list_get_data(, ) : Retrieves given information about the given lobby",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_get_data",
                    "returnType": 1
                },
                {
                    "id": "90cc2e16-376b-463e-8977-afbd27ed9770",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_id_high",
                    "returnType": 2
                },
                {
                    "id": "f7b4f0ac-de01-4ade-ae89-92b23ea29bdd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_id_low",
                    "returnType": 2
                },
                {
                    "id": "fd14afcf-aa71-4a10-b546-a8e4b08a3cc9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_owner_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_owner_id_high",
                    "returnType": 2
                },
                {
                    "id": "2239361e-3ad2-4f52-bb2e-66eb92ea6ca6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_owner_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_owner_id_low",
                    "returnType": 2
                },
                {
                    "id": "4d91d2bc-62f0-4391-9564-071aba48cb6c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_count",
                    "help": "steam_lobby_list_get_lobby_member_count() : Returns the number of members in the given lobby in search results.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_get_lobby_member_count",
                    "returnType": 2
                },
                {
                    "id": "ff72d865-a078-4bbb-9dd5-9282ab9d74f9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_member_id_high",
                    "returnType": 2
                },
                {
                    "id": "67c9b884-1126-4270-9ffb-15048731acd1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_member_id_low",
                    "returnType": 2
                },
                {
                    "id": "977bc169-4914-4fce-b5df-5f048f923143",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_join",
                    "help": "steam_lobby_list_join() : [async] Starts joining the given lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_join",
                    "returnType": 2
                },
                {
                    "id": "736c5f8f-f01c-497c-9f17-91ca67f5bbe4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_join_id_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_join_id_raw",
                    "returnType": 2
                },
                {
                    "id": "1a7cf5fc-e3ed-470d-8a11-06980b6dc096",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_create",
                    "help": "steam_lobby_create(, ) : [async] Creates a lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_create",
                    "returnType": 2
                },
                {
                    "id": "01929f10-80f1-410e-b05e-05a1dbb75062",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "steam_lobby_set_data",
                    "help": "steam_lobby_set_data(, ) : [lobby owner only] Sets the data for the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_set_data",
                    "returnType": 2
                },
                {
                    "id": "5eb8762a-bf19-4680-9156-2b2fe9971f1e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_lobby_get_data",
                    "help": "steam_lobby_get_data() : [anyone] Retrieves previously set data for the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_data",
                    "returnType": 1
                },
                {
                    "id": "ece96f24-b115-4e20-82ea-57fe2e9594b5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_set_type",
                    "help": "steam_lobby_set_type() : [lobby owner only] Changes the type of the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_set_type",
                    "returnType": 2
                },
                {
                    "id": "08db8398-10a8-4b0e-9650-d8ce5b8c5f00",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "int64_from_string_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "int64_from_string_high",
                    "returnType": 2
                },
                {
                    "id": "e60ade02-b131-4267-bd11-ad34def6eb3d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "int64_from_string_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "int64_from_string_low",
                    "returnType": 2
                },
                {
                    "id": "61deb4f6-f0e7-4d8a-bacd-1adf708a54a6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "int64_combine_string",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "int64_combine_string",
                    "returnType": 1
                },
                {
                    "id": "a22764fd-0ede-45c7-8364-ba8a59cfce83",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_update",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_update",
                    "returnType": 2
                },
                {
                    "id": "1264b51b-82e3-40d8-9f11-dc6b596be567",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_restart_if_necessary",
                    "help": "steam_restart_if_necessary() : Detects if the app was run from Steam client and restarts if needed. Returns whether app should quit.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_restart_if_necessary",
                    "returnType": 2
                },
                {
                    "id": "80fa9f17-aeb8-49d1-9017-07ad3041cd3f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_api_flags",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_api_flags",
                    "returnType": 2
                },
                {
                    "id": "39ec8c7c-7445-462f-8838-f6873a267e14",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_gml_init_cpp",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_init_cpp",
                    "returnType": 2
                },
                {
                    "id": "2e96b664-5caf-4de4-8a85-f70ecb510153",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_is_ready",
                    "help": "steam_gml_is_ready() : Returns whether the extension has initialized successfully.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_gml_is_ready",
                    "returnType": 2
                },
                {
                    "id": "2c1071f0-c117-498a-83a9-104714c47a6d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_get_version",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_get_version",
                    "returnType": 2
                },
                {
                    "id": "37d5e044-18ca-48d8-a96b-f3172f47c202",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_is_available",
                    "help": "steam_gml_is_available() : Returns whether the extension was loaded at all (GML returns 0 for unloaded extension calls).",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_gml_is_available",
                    "returnType": 2
                },
                {
                    "id": "458b8e8d-58ea-43c0-90ac-4b7d2f17fed9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_init_cpp_pre",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_init_cpp_pre",
                    "returnType": 2
                },
                {
                    "id": "602e74a6-8d6f-4079-9c3b-1182e76721d9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_set_auto_accept_p2p_sessions",
                    "help": "steam_net_set_auto_accept_p2p_sessions() : Sets whether to auto-accept all incoming P2P session requests.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_net_set_auto_accept_p2p_sessions",
                    "returnType": 2
                },
                {
                    "id": "7f05e005-4efa-484f-812e-3f284785b498",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_net_accept_p2p_session_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_accept_p2p_session_raw",
                    "returnType": 2
                },
                {
                    "id": "258e05bc-bc81-4884-9fa3-0c2f9901f3e6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_net_close_p2p_session_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_close_p2p_session_raw",
                    "returnType": 2
                },
                {
                    "id": "5762077b-a331-4c77-a064-571c87f16313",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_packet_set_type",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_set_type",
                    "returnType": 2
                },
                {
                    "id": "c443677f-6acf-4f71-9dca-b3f799a7c3ad",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        1,
                        2
                    ],
                    "externalName": "steam_net_packet_send_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_send_raw",
                    "returnType": 2
                },
                {
                    "id": "c7069640-7bae-4440-8eb6-a04a69cb19cf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_receive",
                    "help": "steam_net_packet_receive() : Receives a packet, returns whether successful (retrieve data via steam_net_packet_).",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_net_packet_receive",
                    "returnType": 2
                },
                {
                    "id": "b1d27e5a-aa00-4ea2-9051-969f60f8b844",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_size",
                    "help": "steam_net_packet_get_size() : Returns the size of the last received packet (in bytes).",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_net_packet_get_size",
                    "returnType": 2
                },
                {
                    "id": "3e268c5e-1c1e-4c23-99ff-4eb7ca0dc893",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_net_packet_get_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_get_data_raw",
                    "returnType": 2
                },
                {
                    "id": "9839f9ed-7f2f-422b-aee0-2bbcd3f03770",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_sender_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_get_sender_id_high",
                    "returnType": 2
                },
                {
                    "id": "ebce9c1f-647b-4bcc-9730-2b7cf309dfd8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_sender_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_get_sender_id_low",
                    "returnType": 2
                },
                {
                    "id": "de157fea-d27c-46a9-9a19-ab3c8ee12082",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_get_user_steam_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_steam_id_high",
                    "returnType": 2
                },
                {
                    "id": "11245d2b-5790-4ca7-b8cc-ba839c9d5d3d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_get_user_steam_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_steam_id_low",
                    "returnType": 2
                },
                {
                    "id": "a57ede3e-4769-4df9-861b-a63e71f3cd77",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_user_set_played_with",
                    "help": "steam_user_set_played_with(, ) : Can be called on lobby session start, adds the user to \"recently played with\" list.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_user_set_played_with",
                    "returnType": 2
                },
                {
                    "id": "f7e961fb-43d7-436c-b7be-a7f0dd35a640",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_activate_overlay_raw",
                    "help": "steam_activate_overlay_raw() : Activates an overlay by it's raw Steam API name.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_activate_overlay_raw",
                    "returnType": 2
                },
                {
                    "id": "78687533-4c42-977a-351f-f84c72db22f5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "steam_set_rich_presence",
                    "help": "steam_set_rich_presence(, ) : Sets rich text presence for the active user. See: https:\/\/partner.steamgames.com\/doc\/api\/ISteamFriends#SetRichPresence",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_set_rich_presence",
                    "returnType": 2
                },
                {
                    "id": "d7bcdf06-55b8-5210-5623-d8b6f59d4e1f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_clear_rich_presence",
                    "help": "steam_clear_rich_presence() : Clears rich text presence.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_clear_rich_presence",
                    "returnType": 2
                },
                {
                    "id": "dd5a23ee-f676-15a4-17b7-f61594c384d2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_set_overlay_notification_position",
                    "help": "steam_set_overlay_notification_position()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_set_overlay_notification_position",
                    "returnType": 2
                },
                {
                    "id": "39f61408-b25a-4d9c-8ca4-eb726413c35f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_set_overlay_notification_inset",
                    "help": "steam_set_overlay_notification_inset(, )",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_set_overlay_notification_inset",
                    "returnType": 2
                },
                {
                    "id": "2d3d2066-919f-4a2f-dbf1-9e2a143577a0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_ugc_delete_item_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_ugc_delete_item_raw",
                    "returnType": 2
                },
                {
                    "id": "f0e0fdbb-a2ac-79f2-f9d3-52e6d4db66bd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "steam_get_app_ownership_ticket_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_app_ownership_ticket_data_raw",
                    "returnType": 2
                },
                {
                    "id": "96869bdd-e6e8-3d94-ac86-2591ac71ff2b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_user_request_encrypted_app_ticket_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_user_request_encrypted_app_ticket_raw",
                    "returnType": 2
                }
            ],
            "init": "steam_gml_init_cpp_pre",
            "kind": 1,
            "order": [
                "5f528970-2e63-4a34-b790-e3c443325efe",
                "602e74a6-8d6f-4079-9c3b-1182e76721d9",
                "7f05e005-4efa-484f-812e-3f284785b498",
                "258e05bc-bc81-4884-9fa3-0c2f9901f3e6",
                "5762077b-a331-4c77-a064-571c87f16313",
                "c443677f-6acf-4f71-9dca-b3f799a7c3ad",
                "c7069640-7bae-4440-8eb6-a04a69cb19cf",
                "b1d27e5a-aa00-4ea2-9051-969f60f8b844",
                "3e268c5e-1c1e-4c23-99ff-4eb7ca0dc893",
                "9839f9ed-7f2f-422b-aee0-2bbcd3f03770",
                "ebce9c1f-647b-4bcc-9730-2b7cf309dfd8",
                "9fb15cc4-d241-417a-8c6a-1741ad770509",
                "1ccc8dcd-e418-4b75-8692-54493016c330",
                "90b49a0e-b17d-49cd-9b4f-2e7dca9f3396",
                "97884e49-15f5-481a-a729-846b6b875f10",
                "499c618d-8f50-4272-9df1-b7839849818c",
                "d2a0bdfd-0fef-4055-b04d-c003a9445e91",
                "0d7e96ea-fb6f-408c-80d4-14c2f3f7d8b0",
                "e558479c-965a-4396-b1ac-f02a06e3bb0e",
                "f44a55f3-3a31-46bc-b952-5f5cac67aa0b",
                "f7264da9-1558-4b51-8963-64d7687f239f",
                "1d0ad37f-f4d3-4e22-b67d-7186a0aa403d",
                "34d78a66-66dd-488a-a6db-8249273c5c98",
                "bd0a6ecd-b9c1-4d04-b652-b4221777cb66",
                "04239e20-0a6e-4089-a281-53c76863af42",
                "87d7d67f-f669-41e8-b9d7-7dff4920cf7c",
                "370cb536-f12b-455e-a756-afb5efebb587",
                "90cc2e16-376b-463e-8977-afbd27ed9770",
                "f7b4f0ac-de01-4ade-ae89-92b23ea29bdd",
                "fd14afcf-aa71-4a10-b546-a8e4b08a3cc9",
                "2239361e-3ad2-4f52-bb2e-66eb92ea6ca6",
                "4d91d2bc-62f0-4391-9564-071aba48cb6c",
                "ff72d865-a078-4bbb-9dd5-9282ab9d74f9",
                "67c9b884-1126-4270-9ffb-15048731acd1",
                "977bc169-4914-4fce-b5df-5f048f923143",
                "736c5f8f-f01c-497c-9f17-91ca67f5bbe4",
                "1a7cf5fc-e3ed-470d-8a11-06980b6dc096",
                "01929f10-80f1-410e-b05e-05a1dbb75062",
                "5eb8762a-bf19-4680-9156-2b2fe9971f1e",
                "ece96f24-b115-4e20-82ea-57fe2e9594b5",
                "e95bdddc-7d4e-4d2a-902e-c7efebde1882",
                "3a7c5d3f-8a76-4b9e-8c09-cc4886b11f46",
                "d38d7624-b79f-495f-ab42-5db5e2c2ee8f",
                "f156e946-1ac1-4013-8c55-d9476427a69f",
                "447fe437-77ed-4309-ba80-e7bca5643464",
                "758f834d-abcf-4702-80eb-99d77a7ad698",
                "501f2d3d-df02-432b-ac35-8561c54778c4",
                "9d0ad139-3cb0-48a0-a418-f14a98af4112",
                "a90715a6-91d1-49bb-bac4-e8d4e0790eea",
                "557527cb-e406-4ddf-bf95-b1818d7d803f",
                "786db88e-e2d2-4899-b0f5-06b43794db6b",
                "ffb5fd48-cca5-48b8-bbde-61db4c8e74dd",
                "8aa0de85-bfc9-4ffb-a919-d144f000ae3f",
                "787d605f-e6dc-4a7a-a34c-937fee9be541",
                "53e8f1fa-54db-4c91-add9-03f937835cdf",
                "6c6b5d3f-1e7c-4f17-83db-58c4e893cc0c",
                "de157fea-d27c-46a9-9a19-ab3c8ee12082",
                "11245d2b-5790-4ca7-b8cc-ba839c9d5d3d",
                "a57ede3e-4769-4df9-861b-a63e71f3cd77",
                "f7e961fb-43d7-436c-b7be-a7f0dd35a640",
                "08db8398-10a8-4b0e-9650-d8ce5b8c5f00",
                "e60ade02-b131-4267-bd11-ad34def6eb3d",
                "61deb4f6-f0e7-4d8a-bacd-1adf708a54a6",
                "a22764fd-0ede-45c7-8364-ba8a59cfce83",
                "1264b51b-82e3-40d8-9f11-dc6b596be567",
                "80fa9f17-aeb8-49d1-9017-07ad3041cd3f",
                "39ec8c7c-7445-462f-8838-f6873a267e14",
                "2e96b664-5caf-4de4-8a85-f70ecb510153",
                "2c1071f0-c117-498a-83a9-104714c47a6d",
                "37d5e044-18ca-48d8-a96b-f3172f47c202",
                "458b8e8d-58ea-43c0-90ac-4b7d2f17fed9",
                "a5b5a8ee-a2ac-79a7-715b-8f3b06accc18",
                "359efd17-dd30-e9ab-ee67-05682437e479",
                "5a4a5711-808e-5b58-351f-16a29ef922f7",
                "16adcef9-82cf-cb83-6701-d21e9e681b79",
                "83c53554-d2ed-2733-23b7-997e58a1b9ba",
                "f0e0fdbb-a2ac-79f2-f9d3-52e6d4db66bd"
            ],
            "origname": "Steamworks.gml.dll",
            "uncompress": false
        },
        {
            "id": "02f2d636-9c3c-48be-adf2-5d69b4f90d5d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "e0b407d6-5cde-d5a3-5bfb-b5af93f2fcfc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_version",
                    "hidden": false,
                    "value": "1300"
                },
                {
                    "id": "aec9e78a-5c8e-18c5-cf73-d3a03539f237",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_unknown",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "a0ce8aeb-c3ad-b611-eeb6-52f1cbbc7cc7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_steam_controller",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "ab50582c-6231-6915-40c1-d6532bf49ffc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_xbox360",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "a3ad5fea-8d95-7f6e-c8df-e307119c1a94",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_xboxone",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "f5ddc6ab-a57b-d1f5-5db9-3b59d7c2ae7b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_generic_xinput",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "91a9c61a-0c78-4e41-57c6-d9ca0fd4ceaf",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_ps4",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "4bf4a1f6-1211-983b-91de-63a39396546a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_apple_mfi",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "70696e29-208b-dbf6-929f-56d6408bbb6f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_android",
                    "hidden": false,
                    "value": "7"
                },
                {
                    "id": "f45216d9-b5d7-1295-f858-618019256c9f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_switch_joycon_pair",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "a882e744-6f23-c9f1-96b1-3a5dc8c3001a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_switch_joycon_single",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "98bffc0e-ecdc-e994-e351-547212222833",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_switch_pro",
                    "hidden": false,
                    "value": "10"
                },
                {
                    "id": "d7845814-6166-017c-892d-969711c646f5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_mobile_touch",
                    "hidden": false,
                    "value": "11"
                },
                {
                    "id": "85725991-f89a-532b-605f-06425d11b478",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_ps3",
                    "hidden": false,
                    "value": "12"
                },
                {
                    "id": "210622dc-700b-f240-a7e5-328a65977c68",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_invalid",
                    "hidden": false,
                    "value": "(-1 \/*#as steam_inventory_result*\/)"
                },
                {
                    "id": "e3c15e39-586f-a08c-18b3-dd0b55b54775",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_invalid",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "7240dab6-0457-c785-c03a-db682657ae4e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_ok",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "4dc9fc37-5a5d-4ca4-d98f-fc1d09f03c15",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_fail",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "e61a603a-9678-c264-9e35-001840073fa0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_invalid_param",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "6d38f074-c723-f509-ef50-915e851e4270",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_service_unavailable",
                    "hidden": false,
                    "value": "20"
                },
                {
                    "id": "f5c1ad3e-a0c1-af54-d4c4-da9dc554c063",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_pending",
                    "hidden": false,
                    "value": "22"
                },
                {
                    "id": "e7e31583-37cc-7384-7978-e8790fa6fd29",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_limit_exceeded",
                    "hidden": false,
                    "value": "25"
                },
                {
                    "id": "bbe15f77-c101-8693-0b7c-f2d68a2586bc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_expired",
                    "hidden": false,
                    "value": "27"
                },
                {
                    "id": "38432006-2c21-3478-d667-e5635eb18297",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_max_chat_message_size",
                    "hidden": false,
                    "value": "4096"
                },
                {
                    "id": "f55c7580-3793-e7c8-5358-2bb9e5f8b1e2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_entered",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "ab34c925-86fd-25dd-5d61-d6e431630186",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_left",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "d712a2d5-6667-b21e-0ed8-692626f2d5a9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_disconnected",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "57fb6a72-0837-1e03-52e3-7ab1e96fd515",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_kicked",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "037dd806-de74-782d-942e-e731afbf6bfe",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_banned",
                    "hidden": false,
                    "value": "16"
                },
                {
                    "id": "0b66689d-8f4c-407d-ae8c-138541c0fe0e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_eq",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "b5a6dc56-a56e-48ae-b977-6a6399631679",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ne",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "1e5c76d9-3838-4477-aba2-38026330ea83",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_lt",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "48420b9e-3cc1-4661-a922-326232394961",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_gt",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "b0ae9a50-4578-4147-ad51-2b4c3017f377",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_le",
                    "hidden": false,
                    "value": "-2"
                },
                {
                    "id": "075a0fe1-1ec4-4b33-916c-ce6b5df0e939",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ge",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "a246763d-c796-4335-807f-a2087d19ce88",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_close",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "7c132e4c-4f58-4669-b907-fb28c0c3af4a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_default",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "af7cf215-0808-45ca-ade6-a3c1e0bb2adc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_far",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "c4883b4d-1f9c-4f8b-b437-bff31e6be725",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_worldwide",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "db181972-686a-4e44-b82e-2e0a93bc7e16",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_private",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "eae46fa2-17f8-4f38-b163-86614b3bc616",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_friends_only",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "a5ce4ec0-d5e6-4f25-bd7c-1d57a939ef62",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_public",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "896d6503-7000-40b2-9e88-4da47776acef",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "55bca1db-2610-40be-8eff-ceb11eb67599",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable_nodelay",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "e2ccad93-7c64-4984-8a34-3403c62848ce",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "2467e2a5-c6c3-4e8e-9f7b-c7e367d0143a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable_buffer",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "5f7e42a2-170b-e72b-f71f-532a5eaa8393",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_user_avatar_size_small",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "bfb688d8-3367-2598-6e78-7d2ba2cda0de",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_user_avatar_size_medium",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "efb37a43-a0e0-d40a-8786-2839b049aede",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_user_avatar_size_large",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "7edd99d7-b76e-3427-f786-5b1871fd962d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_top_left",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "c858a8b8-3f0d-d45f-b5da-c6d50dd9c51c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_top_right",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "bc140cbe-0506-3c2c-31da-e3b3f87c7d9e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_bottom_left",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "bc3e27ff-deff-c32f-0497-1ae6fefe8243",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_bottom_right",
                    "hidden": false,
                    "value": "3"
                }
            ],
            "copyToTargets": 17592320262272,
            "filename": "Steamworks.gml.so",
            "final": "",
            "functions": [
                {
                    "id": "da208388-a232-3c3c-9052-918398683f73",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_status_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_status_raw",
                    "returnType": 2
                },
                {
                    "id": "860f4392-15bc-80fb-2157-79989a69bcf3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_unix_timestamp_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_unix_timestamp_raw",
                    "returnType": 2
                },
                {
                    "id": "7d4e9a55-da65-d0e6-b6cf-0d7ee4b5635a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_result_get_item_property_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_item_property_raw",
                    "returnType": 1
                },
                {
                    "id": "de61b8ae-4123-4f56-3092-747aade2c609",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_items_raw",
                    "returnType": 2
                },
                {
                    "id": "355b74d1-9a8d-2309-08f3-7e4b09417ad3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_items_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_items_raw_post",
                    "returnType": 2
                },
                {
                    "id": "7d90975d-e89d-0932-08ef-5b9cb83dc887",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_destroy_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_destroy_raw",
                    "returnType": 2
                },
                {
                    "id": "f5ff828d-bbca-343d-1909-be355b3ace0b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_trigger_item_drop_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_trigger_item_drop_raw",
                    "returnType": 2
                },
                {
                    "id": "3e22b853-a89f-18ee-1dc0-44fe1e72c3e6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_add_promo_item_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_add_promo_item_raw",
                    "returnType": 2
                },
                {
                    "id": "2f7a2244-aaba-6961-429e-99c8f4429504",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_add_promo_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_add_promo_items_raw",
                    "returnType": 2
                },
                {
                    "id": "4aa561b0-3e89-f785-4fbd-d3bcf7b82303",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_consume_item_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_consume_item_raw",
                    "returnType": 2
                },
                {
                    "id": "782e80f6-69f3-1c1f-a71e-5e493cb57842",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_exchange_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_exchange_items_raw",
                    "returnType": 2
                },
                {
                    "id": "49523135-55b8-8fcd-8698-50337a26f51f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_generate_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_generate_items_raw",
                    "returnType": 2
                },
                {
                    "id": "5b8707d6-5465-d5ab-e734-4a63eb7a474b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_start_purchase_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_start_purchase_raw",
                    "returnType": 2
                },
                {
                    "id": "115cde14-2105-1cf4-9448-793c001fa4e4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_all_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_all_items_raw",
                    "returnType": 2
                },
                {
                    "id": "bdd402d6-b36f-d07c-f240-97df53977951",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_request_eligible_promo_item_defs_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_request_eligible_promo_item_defs_raw",
                    "returnType": 2
                },
                {
                    "id": "71919b00-8bab-ac37-20e0-12ee4dc92e3e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_items_by_id_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_items_by_id_raw",
                    "returnType": 2
                },
                {
                    "id": "0d0481b4-0c7d-4d4a-03a8-1f466953805a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_start_update_properties_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_start_update_properties_raw",
                    "returnType": 2
                },
                {
                    "id": "50fbd1d8-7907-d2c9-47b4-0d7edc33a158",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_bool_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_bool_raw",
                    "returnType": 2
                },
                {
                    "id": "d3da03b9-906c-e11d-aa72-9377d51b4363",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_float_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_float_raw",
                    "returnType": 2
                },
                {
                    "id": "9ffe4f27-187d-4f0a-6063-32b3c9ae1353",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_int_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_int_raw",
                    "returnType": 2
                },
                {
                    "id": "c0acac2e-7231-fd9e-89aa-5b76069042f6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        1,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_string_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_string_raw",
                    "returnType": 2
                },
                {
                    "id": "a4c9957a-edcc-8fc5-77e8-fe5b6e2feb8f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_remove_property_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_remove_property_raw",
                    "returnType": 2
                },
                {
                    "id": "97d3b594-d199-0c8d-ec07-e350ba88762c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_submit_update_properties_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_submit_update_properties_raw",
                    "returnType": 2
                },
                {
                    "id": "49191666-4676-c3c9-c0ad-646892738440",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_load_item_definitions_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_load_item_definitions_raw",
                    "returnType": 2
                },
                {
                    "id": "f56f8ff7-4987-0960-2063-9b7f2a4b4b9f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_item_price_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_item_price_raw",
                    "returnType": 2
                },
                {
                    "id": "6209aa57-a39c-0d83-585a-d39515f16ec1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_items_with_prices_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_items_with_prices_raw",
                    "returnType": 2
                },
                {
                    "id": "a6e08999-1101-bf07-27f3-229efe4295c3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_items_with_prices_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_items_with_prices_raw_post",
                    "returnType": 2
                },
                {
                    "id": "932b5008-b1b6-180f-6cac-6afc1a317a87",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_request_prices_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_request_prices_raw",
                    "returnType": 2
                },
                {
                    "id": "f5814a91-21bd-0987-ee80-af1e9000dbab",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_transfer_item_quantity_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_transfer_item_quantity_raw",
                    "returnType": 2
                },
                {
                    "id": "f268369c-85cc-7a95-1c01-6f59a74a5af5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_leaderboard_get_entry_count_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_leaderboard_get_entry_count_raw",
                    "returnType": 2
                },
                {
                    "id": "e0cba817-91fc-703a-f7cd-e30697f3a00e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_lobby_send_chat_message_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_send_chat_message_raw",
                    "returnType": 2
                },
                {
                    "id": "d3c39e4f-cf0e-6e12-a624-4ab3ee2cf129",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_send_chat_message_buffer_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_send_chat_message_buffer_raw",
                    "returnType": 2
                },
                {
                    "id": "0331a1e8-2198-58ff-2f84-fa0365869de7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_get_chat_message_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_chat_message_data_raw",
                    "returnType": 2
                },
                {
                    "id": "859efdf9-6f12-256e-ba45-7b873e2f6c97",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_set_joinable_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_set_joinable_raw",
                    "returnType": 2
                },
                {
                    "id": "c24b07d6-5a45-5d2d-4ae8-8661459fdcf5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_friends_game_info_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_friends_game_info_raw",
                    "returnType": 2
                },
                {
                    "id": "190c23c7-f550-5868-d07d-928580f1b926",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_friends_game_info_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_friends_game_info_raw_post",
                    "returnType": 2
                },
                {
                    "id": "0e25468e-20ed-1656-3eba-bcfc4a35c686",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_user_persona_name_sync_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_persona_name_sync_raw",
                    "returnType": 1
                },
                {
                    "id": "6e08c0eb-9354-a5ba-5843-7a2da4bd6bf1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_user_avatar_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_avatar_raw",
                    "returnType": 2
                },
                {
                    "id": "4d560c47-505c-d24e-ea03-840896b33c26",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_image_get_size_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_image_get_size_raw",
                    "returnType": 2
                },
                {
                    "id": "f1e1cb1a-97f3-d5a4-b730-0e8296a9d123",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_image_get_rgba_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_image_get_rgba_raw",
                    "returnType": 2
                },
                {
                    "id": "7babf0f5-b386-8530-0d87-06c42e799aaf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_image_get_bgra_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_image_get_bgra_raw",
                    "returnType": 2
                },
                {
                    "id": "dcdc1990-dc8a-42d3-af9a-52c49a282e59",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_reset",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_reset",
                    "returnType": 2
                },
                {
                    "id": "296afaf2-c325-4135-b081-570dd0b2998d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_init",
                    "help": "steam_controller_init() : Should be called on game start if you use Steam Controller",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_init",
                    "returnType": 2
                },
                {
                    "id": "9ff236e9-8281-45d9-b74b-52c528827caa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_update",
                    "help": "steam_controller_update() : Can be called prior to other controller functions for lower latency. Called by steam_gml_update.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_update",
                    "returnType": 2
                },
                {
                    "id": "1417e692-1eb5-4f38-ab47-d105050c9f17",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_max_count_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_max_count_raw",
                    "returnType": 2
                },
                {
                    "id": "4dd348c3-2b60-4a5d-a044-2a2c2e1f878c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_ids_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_ids_raw",
                    "returnType": 2
                },
                {
                    "id": "36d9c5b5-80bf-aeab-53cc-7ad922ebcc82",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_controller_get_type",
                    "help": "steam_controller_get_type()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_type",
                    "returnType": 2
                },
                {
                    "id": "fc06d414-6c0e-4f0b-bfc5-87555e16b936",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_actionset_id",
                    "help": "steam_controller_get_actionset_id() : Assigns and returns ActionSet ID for given name, -1 if actionset is not found",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_actionset_id",
                    "returnType": 2
                },
                {
                    "id": "619cfa68-43aa-4821-9d4a-748687545db1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_controller_get_actionset",
                    "help": "steam_controller_get_actionset() : Returns action set ID (generated by steam_controller_get_actionset_id), as per GetCurrentActionSet",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_actionset",
                    "returnType": 2
                },
                {
                    "id": "c9523124-ed30-1657-2610-7128d8cb284a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_set_actionset",
                    "help": "steam_controller_set_actionset(, ) : Changes controller action set, as per ActivateActionSet",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_set_actionset",
                    "returnType": 2
                },
                {
                    "id": "288089eb-cc69-4266-83af-abde6a94c9c7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_digital_id",
                    "help": "steam_controller_get_digital_id()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_digital_id",
                    "returnType": 2
                },
                {
                    "id": "03937fba-2410-45ba-96e9-fba16559cb0f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_digital_value",
                    "help": "steam_controller_get_digital_value(, ) : Retreives digital action state (true\/false)",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_digital_value",
                    "returnType": 2
                },
                {
                    "id": "4c61f247-ccd5-4f58-ae31-a0d1a65f9096",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_digital_status",
                    "help": "steam_controller_get_digital_status(, ) : Returns whether the given digital action is currently active (true\/false)",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_digital_status",
                    "returnType": 2
                },
                {
                    "id": "78ed8304-9773-49c1-92c7-e62ca3c678a3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        1
                    ],
                    "externalName": "steam_controller_get_digital_origins_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_digital_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "ad92ee6f-eb37-40cc-93ce-5aa268b3aa4c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_analog_id",
                    "help": "steam_controller_get_analog_id()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_analog_id",
                    "returnType": 2
                },
                {
                    "id": "41e8f362-04f0-45f7-90ac-6a12ec445e76",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_data",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_analog_data",
                    "returnType": 2
                },
                {
                    "id": "3079a304-8134-4b10-baf8-73c06ce63c50",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        1
                    ],
                    "externalName": "steam_controller_get_analog_origins_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_analog_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "8c7062b6-5826-440b-baba-51ec7bf24ca8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_max_origins_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_max_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "8df1a0f2-5f0c-7af3-a732-f6c3055b48df",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "externalName": "RegisterCallbacks",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "RegisterCallbacks",
                    "returnType": 2
                },
                {
                    "id": "283a8208-b581-f6fb-5ac5-fc5377f1b226",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_chat_message_text",
                    "help": "steam_lobby_get_chat_message_text()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_chat_message_text",
                    "returnType": 1
                },
                {
                    "id": "0d57f700-1aba-7c3f-ab12-a1b8e194f333",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_chat_message_size",
                    "help": "steam_lobby_get_chat_message_size()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_chat_message_size",
                    "returnType": 2
                },
                {
                    "id": "3de1f829-a1ad-b3c7-bd94-4afed6a9e9a1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_lobby_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_lobby_id_high",
                    "returnType": 2
                },
                {
                    "id": "5cb1c787-a8c8-c119-e30f-1c60c5f18f55",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_lobby_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_lobby_id_low",
                    "returnType": 2
                },
                {
                    "id": "8f8952d1-d2f2-42ef-9dc4-bee7fc6e3c6f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_leave",
                    "help": "steam_lobby_leave() : Leaves the current lobby (if any)",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_leave",
                    "returnType": 2
                },
                {
                    "id": "ca5e4a9b-4421-41d0-926f-1135bef93f3e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_is_owner",
                    "help": "steam_lobby_is_owner() : Returns whether the local user is the owner of the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_is_owner",
                    "returnType": 2
                },
                {
                    "id": "42881791-87b1-4b2c-b0ab-613eb5eb07ba",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_owner_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_owner_id_high",
                    "returnType": 2
                },
                {
                    "id": "7da2a88c-ac01-4e62-a872-7eddb5c40749",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_owner_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_owner_id_low",
                    "returnType": 2
                },
                {
                    "id": "d9c71d25-35b3-3ec5-a70a-a6c19dc20680",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_set_owner_id_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_set_owner_id_raw",
                    "returnType": 2
                },
                {
                    "id": "52555251-1f9b-407c-a23e-9ade37273905",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_member_count",
                    "help": "steam_lobby_get_member_count() : Returns the number of users in the lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_member_count",
                    "returnType": 2
                },
                {
                    "id": "62789a9a-870d-4c1a-901a-c84c34e64e9c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_member_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_member_id_high",
                    "returnType": 2
                },
                {
                    "id": "055bd8de-a900-480a-82ac-24ef98dfe058",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_member_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_member_id_low",
                    "returnType": 2
                },
                {
                    "id": "761ee005-7df6-4777-b8c6-62bdb02eae73",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_activate_invite_overlay",
                    "help": "steam_lobby_activate_invite_overlay() : Opens an overlay to invite users to the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_activate_invite_overlay",
                    "returnType": 2
                },
                {
                    "id": "db240d8f-5373-4c5d-a7b4-af0e4a3d37a6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_list_request",
                    "help": "steam_lobby_list_request() : Requests the list of lobbies to be (re-)loaded.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_request",
                    "returnType": 2
                },
                {
                    "id": "36f6ded6-fc99-44cd-bbbe-e33b52e87256",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_list_is_loading",
                    "help": "steam_lobby_list_is_loading() : Returns whether the list of lobbies is currently loading.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_is_loading",
                    "returnType": 2
                },
                {
                    "id": "33efdb93-097e-4081-b7a9-be67ed214bc9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_list_add_string_filter",
                    "help": "steam_lobby_list_add_string_filter(, , ) : Sets a string filter for the next lobby list request.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_string_filter",
                    "returnType": 2
                },
                {
                    "id": "ee9b32f3-fc04-4171-af1d-8dee37cf4ad8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_add_numerical_filter",
                    "help": "steam_lobby_list_add_numerical_filter(, , ) : Sets a numerical filter for the next lobby list request.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_numerical_filter",
                    "returnType": 2
                },
                {
                    "id": "cff1d7d0-ded4-4353-a72a-e71d7eac6848",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_list_add_near_filter",
                    "help": "steam_lobby_list_add_near_filter(, ) : Sorts the results of the next lobby list request based to proximity to the given value.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_near_filter",
                    "returnType": 2
                },
                {
                    "id": "4c15fefd-af8d-4c95-87dc-68c5510c572f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_add_distance_filter",
                    "help": "steam_lobby_list_add_distance_filter() : Restricts results by region",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_distance_filter",
                    "returnType": 2
                },
                {
                    "id": "01b5afe7-63d4-4f62-b581-0906f6a78fbb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_list_get_count",
                    "help": "steam_lobby_list_get_count() : Returns the number of the matching lobbies.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_get_count",
                    "returnType": 2
                },
                {
                    "id": "975e60d5-8a88-499f-925b-3c3893433221",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "steam_lobby_list_get_data",
                    "help": "steam_lobby_list_get_data(, ) : Retrieves given information about the given lobby",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_get_data",
                    "returnType": 1
                },
                {
                    "id": "7c6983c1-bde4-4cf3-b662-11093f73e8f8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_id_high",
                    "returnType": 2
                },
                {
                    "id": "da78f1c1-1850-458e-acfd-1844898d2fa3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_id_low",
                    "returnType": 2
                },
                {
                    "id": "84212385-1f49-4fc0-bd19-64c4aa5d7ca3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_owner_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_owner_id_high",
                    "returnType": 2
                },
                {
                    "id": "f876ff65-a492-4b57-bb69-cc797bab6e9f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_owner_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_owner_id_low",
                    "returnType": 2
                },
                {
                    "id": "6d34d2b4-b121-452e-819c-8e14f59923f8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_count",
                    "help": "steam_lobby_list_get_lobby_member_count() : Returns the number of members in the given lobby in search results.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_get_lobby_member_count",
                    "returnType": 2
                },
                {
                    "id": "58e2a579-4eee-4cc7-a953-e5420258061d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_member_id_high",
                    "returnType": 2
                },
                {
                    "id": "e6f9de7e-f6a7-4603-a050-be0ebb1a1bc1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_member_id_low",
                    "returnType": 2
                },
                {
                    "id": "071d6457-2527-4854-8d8c-237fef332a30",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_join",
                    "help": "steam_lobby_list_join() : [async] Starts joining the given lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_join",
                    "returnType": 2
                },
                {
                    "id": "91592d79-2d86-4bc2-9b23-0a93980c8a13",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_join_id_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_join_id_raw",
                    "returnType": 2
                },
                {
                    "id": "e989c99e-2144-4946-93fe-7aec8c4fd17a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_create",
                    "help": "steam_lobby_create(, ) : [async] Creates a lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_create",
                    "returnType": 2
                },
                {
                    "id": "16c532f6-deae-4bea-9c61-0bcee80c8e7a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "steam_lobby_set_data",
                    "help": "steam_lobby_set_data(, ) : [lobby owner only] Sets the data for the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_set_data",
                    "returnType": 2
                },
                {
                    "id": "cc95d338-7df5-44f9-9d8a-dbba55e158ed",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_lobby_get_data",
                    "help": "steam_lobby_get_data() : [anyone] Retrieves previously set data for the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_data",
                    "returnType": 1
                },
                {
                    "id": "25cc6e84-78d1-477d-b7d9-bd52508b5e7a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_set_type",
                    "help": "steam_lobby_set_type() : [lobby owner only] Changes the type of the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_set_type",
                    "returnType": 2
                },
                {
                    "id": "bb294bab-0bcd-400f-95f6-085efef0b13f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "int64_from_string_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "int64_from_string_high",
                    "returnType": 2
                },
                {
                    "id": "9badbc51-c51b-4aec-8ec3-e9543796cc56",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "int64_from_string_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "int64_from_string_low",
                    "returnType": 2
                },
                {
                    "id": "5d3c1cd3-ac1d-4f7a-bab5-81e28e9170bf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "int64_combine_string",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "int64_combine_string",
                    "returnType": 1
                },
                {
                    "id": "880e71a4-b077-498e-8de9-62cbdf5bcedf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_update",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_update",
                    "returnType": 2
                },
                {
                    "id": "b609bed2-d29a-4d31-aa3e-4fae87ca8f5e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_restart_if_necessary",
                    "help": "steam_restart_if_necessary() : Detects if the app was run from Steam client and restarts if needed. Returns whether app should quit.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_restart_if_necessary",
                    "returnType": 2
                },
                {
                    "id": "d506731b-16c7-44cc-b69c-5761a9307ec6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_api_flags",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_api_flags",
                    "returnType": 2
                },
                {
                    "id": "2dc8c8ea-3d0d-4514-98c2-c81c814ad811",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_gml_init_cpp",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_init_cpp",
                    "returnType": 2
                },
                {
                    "id": "9706f054-6505-47ea-8acd-87bae58566f6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_is_ready",
                    "help": "steam_gml_is_ready() : Returns whether the extension has initialized successfully.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_gml_is_ready",
                    "returnType": 2
                },
                {
                    "id": "0f4fd79d-4feb-40ed-8159-f9b8583d45cc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_get_version",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_get_version",
                    "returnType": 2
                },
                {
                    "id": "cc556d3d-0884-4c07-a111-34f293f6274b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_is_available",
                    "help": "steam_gml_is_available() : Returns whether the extension was loaded at all (GML returns 0 for unloaded extension calls).",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_gml_is_available",
                    "returnType": 2
                },
                {
                    "id": "ace1132b-9fbc-488f-b0f2-6f6e2f242b4f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_init_cpp_pre",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_init_cpp_pre",
                    "returnType": 2
                },
                {
                    "id": "8137b1de-4982-4963-8018-692e199fcd14",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_set_auto_accept_p2p_sessions",
                    "help": "steam_net_set_auto_accept_p2p_sessions() : Sets whether to auto-accept all incoming P2P session requests.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_net_set_auto_accept_p2p_sessions",
                    "returnType": 2
                },
                {
                    "id": "5e685d10-dff9-4384-ba66-d783949c1b73",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_net_accept_p2p_session_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_accept_p2p_session_raw",
                    "returnType": 2
                },
                {
                    "id": "0448daf5-d5f2-4d19-9250-e4118d8a8b12",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_net_close_p2p_session_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_close_p2p_session_raw",
                    "returnType": 2
                },
                {
                    "id": "64f80d95-204f-4e92-9879-44399466e492",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_packet_set_type",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_set_type",
                    "returnType": 2
                },
                {
                    "id": "90c3c239-2103-4cd0-a73e-5b6f9f96f192",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        1,
                        2
                    ],
                    "externalName": "steam_net_packet_send_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_send_raw",
                    "returnType": 2
                },
                {
                    "id": "363a267d-4ed7-4aeb-bf01-a75648a98c2f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_receive",
                    "help": "steam_net_packet_receive() : Receives a packet, returns whether successful (retrieve data via steam_net_packet_).",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_net_packet_receive",
                    "returnType": 2
                },
                {
                    "id": "8ebf4137-a82c-4438-9519-cfcdb14bc9de",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_size",
                    "help": "steam_net_packet_get_size() : Returns the size of the last received packet (in bytes).",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_net_packet_get_size",
                    "returnType": 2
                },
                {
                    "id": "4edae300-fe10-4230-abac-b5734e3e2272",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_net_packet_get_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_get_data_raw",
                    "returnType": 2
                },
                {
                    "id": "6ea11cc0-56ab-4404-ae20-fcbbf5b78bd9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_sender_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_get_sender_id_high",
                    "returnType": 2
                },
                {
                    "id": "3a73509d-a971-4772-b903-5cbbd667bea6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_sender_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_get_sender_id_low",
                    "returnType": 2
                },
                {
                    "id": "f38d68e6-4b63-4c62-aa58-d9649283c734",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_get_user_steam_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_steam_id_high",
                    "returnType": 2
                },
                {
                    "id": "f99ac380-5b55-49d6-8227-74f42360f6cf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_get_user_steam_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_steam_id_low",
                    "returnType": 2
                },
                {
                    "id": "3e5e2c33-2b04-4111-97cb-91e1cff3aa49",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_user_set_played_with",
                    "help": "steam_user_set_played_with(, ) : Can be called on lobby session start, adds the user to \"recently played with\" list.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_user_set_played_with",
                    "returnType": 2
                },
                {
                    "id": "f953ac2d-4d5b-4936-8a79-8a9b5182fee9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_activate_overlay_raw",
                    "help": "steam_activate_overlay_raw() : Activates an overlay by it's raw Steam API name.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_activate_overlay_raw",
                    "returnType": 2
                },
                {
                    "id": "790f25f4-7f7e-196e-1516-68e1b0cc8123",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "steam_set_rich_presence",
                    "help": "steam_set_rich_presence(, ) : Sets rich text presence for the active user. See: https:\/\/partner.steamgames.com\/doc\/api\/ISteamFriends#SetRichPresence",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_set_rich_presence",
                    "returnType": 2
                },
                {
                    "id": "7e51e5a6-8879-c1db-e3b7-ed7b6f6831a9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_clear_rich_presence",
                    "help": "steam_clear_rich_presence() : Clears rich text presence.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_clear_rich_presence",
                    "returnType": 2
                },
                {
                    "id": "4995d2af-9692-996a-6bc9-694e36285758",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_set_overlay_notification_position",
                    "help": "steam_set_overlay_notification_position()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_set_overlay_notification_position",
                    "returnType": 2
                },
                {
                    "id": "ff2d5800-97de-e075-6655-89506e585296",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_set_overlay_notification_inset",
                    "help": "steam_set_overlay_notification_inset(, )",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_set_overlay_notification_inset",
                    "returnType": 2
                },
                {
                    "id": "03f89bca-25b8-da9f-a923-647ab865c668",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_ugc_delete_item_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_ugc_delete_item_raw",
                    "returnType": 2
                },
                {
                    "id": "3952318e-9a47-cb8a-f010-acfe1bf81b1f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "steam_get_app_ownership_ticket_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_app_ownership_ticket_data_raw",
                    "returnType": 2
                },
                {
                    "id": "795231ac-84a9-0749-cc01-812c1f6e7da4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_user_request_encrypted_app_ticket_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_user_request_encrypted_app_ticket_raw",
                    "returnType": 2
                }
            ],
            "init": "steam_gml_init_cpp_pre",
            "kind": 1,
            "order": [
                "2166d1fc-2f7b-4327-9609-fa9b183d27b4",
                "8137b1de-4982-4963-8018-692e199fcd14",
                "5e685d10-dff9-4384-ba66-d783949c1b73",
                "0448daf5-d5f2-4d19-9250-e4118d8a8b12",
                "64f80d95-204f-4e92-9879-44399466e492",
                "90c3c239-2103-4cd0-a73e-5b6f9f96f192",
                "363a267d-4ed7-4aeb-bf01-a75648a98c2f",
                "8ebf4137-a82c-4438-9519-cfcdb14bc9de",
                "4edae300-fe10-4230-abac-b5734e3e2272",
                "6ea11cc0-56ab-4404-ae20-fcbbf5b78bd9",
                "3a73509d-a971-4772-b903-5cbbd667bea6",
                "8f8952d1-d2f2-42ef-9dc4-bee7fc6e3c6f",
                "ca5e4a9b-4421-41d0-926f-1135bef93f3e",
                "42881791-87b1-4b2c-b0ab-613eb5eb07ba",
                "7da2a88c-ac01-4e62-a872-7eddb5c40749",
                "52555251-1f9b-407c-a23e-9ade37273905",
                "62789a9a-870d-4c1a-901a-c84c34e64e9c",
                "055bd8de-a900-480a-82ac-24ef98dfe058",
                "761ee005-7df6-4777-b8c6-62bdb02eae73",
                "db240d8f-5373-4c5d-a7b4-af0e4a3d37a6",
                "36f6ded6-fc99-44cd-bbbe-e33b52e87256",
                "33efdb93-097e-4081-b7a9-be67ed214bc9",
                "ee9b32f3-fc04-4171-af1d-8dee37cf4ad8",
                "cff1d7d0-ded4-4353-a72a-e71d7eac6848",
                "4c15fefd-af8d-4c95-87dc-68c5510c572f",
                "01b5afe7-63d4-4f62-b581-0906f6a78fbb",
                "975e60d5-8a88-499f-925b-3c3893433221",
                "7c6983c1-bde4-4cf3-b662-11093f73e8f8",
                "da78f1c1-1850-458e-acfd-1844898d2fa3",
                "84212385-1f49-4fc0-bd19-64c4aa5d7ca3",
                "f876ff65-a492-4b57-bb69-cc797bab6e9f",
                "6d34d2b4-b121-452e-819c-8e14f59923f8",
                "58e2a579-4eee-4cc7-a953-e5420258061d",
                "e6f9de7e-f6a7-4603-a050-be0ebb1a1bc1",
                "071d6457-2527-4854-8d8c-237fef332a30",
                "91592d79-2d86-4bc2-9b23-0a93980c8a13",
                "e989c99e-2144-4946-93fe-7aec8c4fd17a",
                "16c532f6-deae-4bea-9c61-0bcee80c8e7a",
                "cc95d338-7df5-44f9-9d8a-dbba55e158ed",
                "25cc6e84-78d1-477d-b7d9-bd52508b5e7a",
                "dcdc1990-dc8a-42d3-af9a-52c49a282e59",
                "296afaf2-c325-4135-b081-570dd0b2998d",
                "9ff236e9-8281-45d9-b74b-52c528827caa",
                "1417e692-1eb5-4f38-ab47-d105050c9f17",
                "4dd348c3-2b60-4a5d-a044-2a2c2e1f878c",
                "fc06d414-6c0e-4f0b-bfc5-87555e16b936",
                "619cfa68-43aa-4821-9d4a-748687545db1",
                "e2f617e9-542d-4512-8108-e233fef73869",
                "288089eb-cc69-4266-83af-abde6a94c9c7",
                "03937fba-2410-45ba-96e9-fba16559cb0f",
                "4c61f247-ccd5-4f58-ae31-a0d1a65f9096",
                "78ed8304-9773-49c1-92c7-e62ca3c678a3",
                "ad92ee6f-eb37-40cc-93ce-5aa268b3aa4c",
                "41e8f362-04f0-45f7-90ac-6a12ec445e76",
                "3079a304-8134-4b10-baf8-73c06ce63c50",
                "8c7062b6-5826-440b-baba-51ec7bf24ca8",
                "f38d68e6-4b63-4c62-aa58-d9649283c734",
                "f99ac380-5b55-49d6-8227-74f42360f6cf",
                "3e5e2c33-2b04-4111-97cb-91e1cff3aa49",
                "f953ac2d-4d5b-4936-8a79-8a9b5182fee9",
                "bb294bab-0bcd-400f-95f6-085efef0b13f",
                "9badbc51-c51b-4aec-8ec3-e9543796cc56",
                "5d3c1cd3-ac1d-4f7a-bab5-81e28e9170bf",
                "880e71a4-b077-498e-8de9-62cbdf5bcedf",
                "b609bed2-d29a-4d31-aa3e-4fae87ca8f5e",
                "d506731b-16c7-44cc-b69c-5761a9307ec6",
                "2dc8c8ea-3d0d-4514-98c2-c81c814ad811",
                "9706f054-6505-47ea-8acd-87bae58566f6",
                "0f4fd79d-4feb-40ed-8159-f9b8583d45cc",
                "cc556d3d-0884-4c07-a111-34f293f6274b",
                "ace1132b-9fbc-488f-b0f2-6f6e2f242b4f"
            ],
            "origname": "extensions\\Steamworks.gml.so",
            "uncompress": false
        },
        {
            "id": "aebfad5d-bc2f-4f06-8847-7d4d7006ee56",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "e6e4c822-0aba-a4b6-3917-c6192d2e59fa",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_version",
                    "hidden": false,
                    "value": "1300"
                },
                {
                    "id": "07f12032-bbd3-8dd5-3346-3a4586a0d130",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_unknown",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "58f08bc8-203b-c2a2-d001-e05eb26261c1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_steam_controller",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "b9939729-e3a0-068c-759c-19782c02bb4e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_xbox360",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "3937c3ac-69f7-839c-de71-544d6af7fd15",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_xboxone",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "145614d0-1274-f6a2-6a78-fdab6340288e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_generic_xinput",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "ea830629-228a-b5e1-995f-43e824cc006c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_ps4",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "43429f19-d7ac-5b6b-1bda-a0ff99024521",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_apple_mfi",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "665abd6a-4a7d-039e-ea61-798d6524daec",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_android",
                    "hidden": false,
                    "value": "7"
                },
                {
                    "id": "f5393d42-1149-1bde-6ec9-f76c73ff2c23",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_switch_joycon_pair",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "20ad6b82-7c45-9489-28db-0e223a1e3763",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_switch_joycon_single",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "1acc838b-ed63-7786-baff-a36502bcb09e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_switch_pro",
                    "hidden": false,
                    "value": "10"
                },
                {
                    "id": "1050065d-4bf7-6e59-0f02-887d67e0025f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_mobile_touch",
                    "hidden": false,
                    "value": "11"
                },
                {
                    "id": "7bb87019-0d71-8c4b-b96d-1f8183b6982c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_controller_ps3",
                    "hidden": false,
                    "value": "12"
                },
                {
                    "id": "08c8a539-8f61-8f56-a2cf-6e87a14dc130",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_invalid",
                    "hidden": false,
                    "value": "(-1 \/*#as steam_inventory_result*\/)"
                },
                {
                    "id": "9e397534-b4eb-62c3-16b9-240730475d12",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_invalid",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "5aae1370-94e8-c7a9-bab7-cb77cf800faa",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_ok",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "4a4a1f14-cac8-b22d-53e3-6b72d74c2cc0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_fail",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "0504afd6-ec8c-1fb9-d7ec-b1c5c271a8d3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_invalid_param",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "7f8d9472-7f2c-cb68-24d5-f673e8774107",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_service_unavailable",
                    "hidden": false,
                    "value": "20"
                },
                {
                    "id": "d6de5e17-31d1-2f2d-0f3a-38df54d275be",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_pending",
                    "hidden": false,
                    "value": "22"
                },
                {
                    "id": "daf907a7-6c01-cdd7-de73-e6289cd6daaa",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_limit_exceeded",
                    "hidden": false,
                    "value": "25"
                },
                {
                    "id": "7d926cba-f714-4708-f93c-cb75df7a17e2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_inventory_result_status_expired",
                    "hidden": false,
                    "value": "27"
                },
                {
                    "id": "1f78ad7c-ff89-1966-6bfa-a4da72ed6749",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_max_chat_message_size",
                    "hidden": false,
                    "value": "4096"
                },
                {
                    "id": "f00b12fa-c3c6-4784-8843-f13fbb7c316c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_entered",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "0837f5b3-a9de-1719-f8b0-f8f718c54855",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_left",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "9164fff4-40e4-1435-2f69-b5480596a5c4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_disconnected",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "6104857d-f56d-e686-1bd3-d5322ad2983d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_kicked",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "7c84a605-713b-1c43-6711-8e1b85f9cbf8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_member_change_banned",
                    "hidden": false,
                    "value": "16"
                },
                {
                    "id": "704c5309-9091-4536-ad49-4c083f3e324b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_eq",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "88222e50-685f-442e-9454-be30194811e4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ne",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "a1af9058-458f-4811-a604-7291c9ab1634",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_lt",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "faf46536-1763-441c-a252-8b9d317586a0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_gt",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "59d5c83a-9752-4205-a5eb-802131bf0ea2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_le",
                    "hidden": false,
                    "value": "-2"
                },
                {
                    "id": "893ea64c-d79a-44af-91a4-5181d1eb13a1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ge",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "e1b46ae2-dd8b-4567-9d8b-22e452398851",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_close",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "e516ea90-5d81-4472-a0de-ca001856a465",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_default",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "d12a27fa-6dd3-4bab-9320-17eea2561a31",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_far",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "f921b0f1-20cf-43f1-bad5-bf21714030b9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_worldwide",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "57384aad-e296-46bc-8baa-90b524e014aa",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_private",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "ffd4f0a8-1bac-401d-9fd9-1e6aba6937b7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_friends_only",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "f416bc4a-8feb-4b7e-81aa-b5e1879251c7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_public",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "a2aab721-460f-4854-80bf-407b60117071",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "7cf21972-7b6f-4be6-8ca4-3c880e8f4cde",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable_nodelay",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "0c1779e0-c79f-485d-90ac-18bc97a6ed47",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "856926d7-430b-489d-87f1-bc27c0caffac",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable_buffer",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "c009b9d8-9f06-d0fa-644b-f1d49ee5203d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_user_avatar_size_small",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "5ded4a6e-76b5-ac31-eb80-742018200783",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_user_avatar_size_medium",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "f29d7b26-0649-e125-fb00-1e8e78dad0a8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_user_avatar_size_large",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "aad7f322-3ac4-1903-51c1-0b8eef6b3bfd",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_top_left",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "b7dea754-d7bd-0c07-a7a3-50603d3dee5f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_top_right",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "ed06f9a2-c0be-be45-7675-e2312285b0b3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_bottom_left",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "28b7043b-42f6-e96f-fbe6-91c4bc0e8967",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_overlay_notification_position_bottom_right",
                    "hidden": false,
                    "value": "3"
                }
            ],
            "copyToTargets": 67108866,
            "filename": "Steamworks.gml.dylib",
            "final": "",
            "functions": [
                {
                    "id": "4ccfd18d-2860-6976-fa6b-f2c4b8794ea6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_status_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_status_raw",
                    "returnType": 2
                },
                {
                    "id": "9803b500-5676-90fb-e9ab-74d8cd14f39b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_unix_timestamp_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_unix_timestamp_raw",
                    "returnType": 2
                },
                {
                    "id": "a009a27f-c4b8-2b1f-3acf-5a2aa294fcb6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_result_get_item_property_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_item_property_raw",
                    "returnType": 1
                },
                {
                    "id": "4a288dc5-10ff-c279-7c62-8875890be90b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_items_raw",
                    "returnType": 2
                },
                {
                    "id": "4b8f5186-fa95-ec14-9eb1-fcddf0cedc82",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_items_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_get_items_raw_post",
                    "returnType": 2
                },
                {
                    "id": "3cae1085-1cb0-3c49-327c-a157a3d5cec6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_result_destroy_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_result_destroy_raw",
                    "returnType": 2
                },
                {
                    "id": "1226acbe-7c39-4780-ce07-b125eec3a824",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_trigger_item_drop_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_trigger_item_drop_raw",
                    "returnType": 2
                },
                {
                    "id": "62d0f973-ab76-93c8-4129-09bc58dde85e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_add_promo_item_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_add_promo_item_raw",
                    "returnType": 2
                },
                {
                    "id": "0b5ae121-61cd-d49c-e963-9c7a2b856a9d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_add_promo_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_add_promo_items_raw",
                    "returnType": 2
                },
                {
                    "id": "5a2b37aa-d545-25a5-0ee1-f71d10683f95",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_consume_item_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_consume_item_raw",
                    "returnType": 2
                },
                {
                    "id": "c6f62480-325e-6fae-a534-e2dfdea84f1d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_exchange_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_exchange_items_raw",
                    "returnType": 2
                },
                {
                    "id": "0e8770a1-2726-a2d8-a40e-e0b90b718cf7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_generate_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_generate_items_raw",
                    "returnType": 2
                },
                {
                    "id": "e19083aa-3676-53ce-b979-9ccc44de59e3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_start_purchase_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_start_purchase_raw",
                    "returnType": 2
                },
                {
                    "id": "776bcb4a-2809-0750-5d37-a4755d55f7c0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_all_items_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_all_items_raw",
                    "returnType": 2
                },
                {
                    "id": "327df233-0841-e96a-08e2-0769974d3b8d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_request_eligible_promo_item_defs_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_request_eligible_promo_item_defs_raw",
                    "returnType": 2
                },
                {
                    "id": "9993acf3-c40a-a3b6-9e4e-c1acd61f1249",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_items_by_id_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_items_by_id_raw",
                    "returnType": 2
                },
                {
                    "id": "5a6899f9-633a-1865-1a35-c82a91bfefa4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_start_update_properties_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_start_update_properties_raw",
                    "returnType": 2
                },
                {
                    "id": "57be1778-828a-1a49-dca3-f0db7883c4b2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_bool_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_bool_raw",
                    "returnType": 2
                },
                {
                    "id": "f065adc7-7231-5988-3be0-f36c6da58e5a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_float_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_float_raw",
                    "returnType": 2
                },
                {
                    "id": "c5adca37-5c32-3b97-e9b5-9ea362c9db07",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_int_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_int_raw",
                    "returnType": 2
                },
                {
                    "id": "cab59528-a60b-1d6d-9ef0-3a881ddfe9a0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        1,
                        1
                    ],
                    "externalName": "steam_inventory_set_property_string_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_set_property_string_raw",
                    "returnType": 2
                },
                {
                    "id": "0199c81e-e941-d712-bf4d-ce6bb0fd5a02",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_inventory_remove_property_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_remove_property_raw",
                    "returnType": 2
                },
                {
                    "id": "4c459ea4-ec89-f9f6-f960-505d0012aafa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_submit_update_properties_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_submit_update_properties_raw",
                    "returnType": 2
                },
                {
                    "id": "201b401a-ed7a-81bc-53d9-07cc663c4fd0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_load_item_definitions_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_load_item_definitions_raw",
                    "returnType": 2
                },
                {
                    "id": "e78759d8-ab15-9682-bd17-3e0af876b37b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_item_price_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_item_price_raw",
                    "returnType": 2
                },
                {
                    "id": "f5241c4d-fde7-6170-7fbc-b7dcb74679d8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_items_with_prices_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_items_with_prices_raw",
                    "returnType": 2
                },
                {
                    "id": "990ca1b4-28bf-6fe9-92ed-61ae5c2fe88d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_get_items_with_prices_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_get_items_with_prices_raw_post",
                    "returnType": 2
                },
                {
                    "id": "19b184be-4204-8794-6a6a-e36c94b608c9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_request_prices_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_request_prices_raw",
                    "returnType": 2
                },
                {
                    "id": "9a16f305-3c8c-a5bf-d0c3-7af5a87719d9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_inventory_transfer_item_quantity_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_inventory_transfer_item_quantity_raw",
                    "returnType": 2
                },
                {
                    "id": "b1d4bc7f-c12a-c56c-c060-a4095b97081d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_leaderboard_get_entry_count_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_leaderboard_get_entry_count_raw",
                    "returnType": 2
                },
                {
                    "id": "f1f0bc6d-ed3c-e69a-3516-68816599b47e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "steam_lobby_send_chat_message_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_send_chat_message_raw",
                    "returnType": 2
                },
                {
                    "id": "f80d5155-ccdc-23cb-ee5c-ccdfa5ac7bf5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_send_chat_message_buffer_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_send_chat_message_buffer_raw",
                    "returnType": 2
                },
                {
                    "id": "ec9a7e7a-f894-43cf-5d26-6e0eb049640e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_get_chat_message_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_chat_message_data_raw",
                    "returnType": 2
                },
                {
                    "id": "3da55283-0afe-d5a0-29d0-0e5246a90120",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_set_joinable_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_set_joinable_raw",
                    "returnType": 2
                },
                {
                    "id": "e4c80500-1010-fc35-0cf4-cd1fbbbc7be6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_friends_game_info_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_friends_game_info_raw",
                    "returnType": 2
                },
                {
                    "id": "f509574c-fc3c-2b40-c243-97037d362dca",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_friends_game_info_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_friends_game_info_raw_post",
                    "returnType": 2
                },
                {
                    "id": "4ac3f829-ac55-5d24-a378-86172b71447c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_user_persona_name_sync_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_persona_name_sync_raw",
                    "returnType": 1
                },
                {
                    "id": "bb8e1214-3e4c-46f9-50a3-7ab3ff5a2f8d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_get_user_avatar_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_avatar_raw",
                    "returnType": 2
                },
                {
                    "id": "36f85201-4e5f-58ce-cb4e-853c885f9126",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_image_get_size_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_image_get_size_raw",
                    "returnType": 2
                },
                {
                    "id": "419c4b88-7898-1c3b-e38d-b40fdc7e59ac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_image_get_rgba_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_image_get_rgba_raw",
                    "returnType": 2
                },
                {
                    "id": "0ae73f91-2095-5cb8-2064-e694eaca6ae2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_image_get_bgra_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_image_get_bgra_raw",
                    "returnType": 2
                },
                {
                    "id": "f333b4c8-f60e-4cba-8883-c9c6d1dae52e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_reset",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_reset",
                    "returnType": 2
                },
                {
                    "id": "49b6396e-9a4d-4950-bdf0-36cfc3c6c55f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_init",
                    "help": "steam_controller_init() : Should be called on game start if you use Steam Controller",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_init",
                    "returnType": 2
                },
                {
                    "id": "0b2ded16-83a0-49a9-a289-1c4287841428",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_update",
                    "help": "steam_controller_update() : Can be called prior to other controller functions for lower latency. Called by steam_gml_update.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_update",
                    "returnType": 2
                },
                {
                    "id": "56e3137f-95e5-4ed5-8f34-df87b2ceca7f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_max_count_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_max_count_raw",
                    "returnType": 2
                },
                {
                    "id": "b060ebbe-d642-4a44-a8bc-4f84d086be46",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_ids_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_ids_raw",
                    "returnType": 2
                },
                {
                    "id": "36293c51-4d2a-3cf6-9834-cc1e12da46ee",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_controller_get_type",
                    "help": "steam_controller_get_type()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_type",
                    "returnType": 2
                },
                {
                    "id": "6d425447-b978-4c17-812d-825ced214a1c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_actionset_id",
                    "help": "steam_controller_get_actionset_id() : Assigns and returns ActionSet ID for given name, -1 if actionset is not found",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_actionset_id",
                    "returnType": 2
                },
                {
                    "id": "f25ccc0c-d7a5-4032-b26c-ba4e2339cf53",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_controller_get_actionset",
                    "help": "steam_controller_get_actionset() : Returns action set ID (generated by steam_controller_get_actionset_id), as per GetCurrentActionSet",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_actionset",
                    "returnType": 2
                },
                {
                    "id": "3db45283-0fbc-a2d2-1405-5b103b77f8bb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_set_actionset",
                    "help": "steam_controller_set_actionset(, ) : Changes controller action set, as per ActivateActionSet",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_set_actionset",
                    "returnType": 2
                },
                {
                    "id": "7d2ac120-7436-4573-866a-2526822464d4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_digital_id",
                    "help": "steam_controller_get_digital_id()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_digital_id",
                    "returnType": 2
                },
                {
                    "id": "217d397b-2d94-41f5-a5f4-a621ce05d96e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_digital_value",
                    "help": "steam_controller_get_digital_value(, ) : Retreives digital action state (true\/false)",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_digital_value",
                    "returnType": 2
                },
                {
                    "id": "97345585-9efa-4780-aa3f-6ebe816ba878",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_digital_status",
                    "help": "steam_controller_get_digital_status(, ) : Returns whether the given digital action is currently active (true\/false)",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_digital_status",
                    "returnType": 2
                },
                {
                    "id": "685683d0-0a49-4b0f-b3c3-8c22e4621abf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        1
                    ],
                    "externalName": "steam_controller_get_digital_origins_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_digital_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "34e623e5-274f-4dfd-bb74-450d5716fd5c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_analog_id",
                    "help": "steam_controller_get_analog_id()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_analog_id",
                    "returnType": 2
                },
                {
                    "id": "b8357ece-27f4-4691-9109-b9338f257282",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_data",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_analog_data",
                    "returnType": 2
                },
                {
                    "id": "8a3756da-485a-4e22-a2b9-7c3c78e16b8f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        1
                    ],
                    "externalName": "steam_controller_get_analog_origins_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_analog_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "55caabe6-2119-48cb-835e-70837eda7c3d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_max_origins_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_max_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "f56f4b3b-8ddd-09d1-2172-88834500339c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "externalName": "RegisterCallbacks",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "RegisterCallbacks",
                    "returnType": 2
                },
                {
                    "id": "cab86a72-0296-3c2b-e846-2fdc07845622",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_chat_message_text",
                    "help": "steam_lobby_get_chat_message_text()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_chat_message_text",
                    "returnType": 1
                },
                {
                    "id": "34bbe35d-4b92-7eb8-b2ce-a92b76e8a57b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_chat_message_size",
                    "help": "steam_lobby_get_chat_message_size()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_chat_message_size",
                    "returnType": 2
                },
                {
                    "id": "73ba2eee-9232-8695-0853-d6a0126b0cc9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_lobby_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_lobby_id_high",
                    "returnType": 2
                },
                {
                    "id": "28813c80-34ea-2b4a-38e2-881cee0e4063",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_lobby_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_lobby_id_low",
                    "returnType": 2
                },
                {
                    "id": "c1c865c0-dc88-464e-b82e-7a765375f9ea",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_leave",
                    "help": "steam_lobby_leave() : Leaves the current lobby (if any)",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_leave",
                    "returnType": 2
                },
                {
                    "id": "e99bf982-6cef-40f7-b30e-057bd86aad2a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_is_owner",
                    "help": "steam_lobby_is_owner() : Returns whether the local user is the owner of the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_is_owner",
                    "returnType": 2
                },
                {
                    "id": "3c010276-4fc6-4db7-ae88-674865e6f55e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_owner_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_owner_id_high",
                    "returnType": 2
                },
                {
                    "id": "3c704849-0316-4e04-968c-90faac993b22",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_owner_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_owner_id_low",
                    "returnType": 2
                },
                {
                    "id": "b1d4df2a-967f-5cf4-6425-f20443176e13",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_set_owner_id_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_set_owner_id_raw",
                    "returnType": 2
                },
                {
                    "id": "235e5aca-ee9e-4220-be18-42e517d741d2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_member_count",
                    "help": "steam_lobby_get_member_count() : Returns the number of users in the lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_member_count",
                    "returnType": 2
                },
                {
                    "id": "4db6ef34-6ccc-4894-a6b9-d7f2eec1bd76",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_member_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_member_id_high",
                    "returnType": 2
                },
                {
                    "id": "6140a01c-b373-4cb5-a52f-f9080e661ab8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_member_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_member_id_low",
                    "returnType": 2
                },
                {
                    "id": "fbe79c7e-1b9f-487c-905f-3def4cc8a540",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_activate_invite_overlay",
                    "help": "steam_lobby_activate_invite_overlay() : Opens an overlay to invite users to the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_activate_invite_overlay",
                    "returnType": 2
                },
                {
                    "id": "12bbd18a-1dee-4c4c-aca9-a5985d029e5c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_list_request",
                    "help": "steam_lobby_list_request() : Requests the list of lobbies to be (re-)loaded.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_request",
                    "returnType": 2
                },
                {
                    "id": "463553f6-810e-48dd-8527-d932174b0d14",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_list_is_loading",
                    "help": "steam_lobby_list_is_loading() : Returns whether the list of lobbies is currently loading.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_is_loading",
                    "returnType": 2
                },
                {
                    "id": "d326f37e-7c0e-4fb9-9486-f6aaa7a2b5ff",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_list_add_string_filter",
                    "help": "steam_lobby_list_add_string_filter(, , ) : Sets a string filter for the next lobby list request.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_string_filter",
                    "returnType": 2
                },
                {
                    "id": "d98eb063-d1de-45db-b70d-b97bb29a660d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_add_numerical_filter",
                    "help": "steam_lobby_list_add_numerical_filter(, , ) : Sets a numerical filter for the next lobby list request.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_numerical_filter",
                    "returnType": 2
                },
                {
                    "id": "734e025e-30b8-4421-8973-dc515c90e3f1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_lobby_list_add_near_filter",
                    "help": "steam_lobby_list_add_near_filter(, ) : Sorts the results of the next lobby list request based to proximity to the given value.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_near_filter",
                    "returnType": 2
                },
                {
                    "id": "c8b7abb1-75ff-42cd-97e6-8a0783e81f67",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_add_distance_filter",
                    "help": "steam_lobby_list_add_distance_filter() : Restricts results by region",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_add_distance_filter",
                    "returnType": 2
                },
                {
                    "id": "6b6c3e38-e523-453b-86e6-8660e5c95a7e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_list_get_count",
                    "help": "steam_lobby_list_get_count() : Returns the number of the matching lobbies.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_get_count",
                    "returnType": 2
                },
                {
                    "id": "2a5df565-82ff-4675-8d09-842fa83911b3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "steam_lobby_list_get_data",
                    "help": "steam_lobby_list_get_data(, ) : Retrieves given information about the given lobby",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_get_data",
                    "returnType": 1
                },
                {
                    "id": "690191d4-301b-4067-aaa7-84097f60b990",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_id_high",
                    "returnType": 2
                },
                {
                    "id": "7606f825-4a77-4618-a2d9-6c4f01bffcc3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_id_low",
                    "returnType": 2
                },
                {
                    "id": "70775a22-1e05-4db9-8827-4d8ffa2b292d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_owner_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_owner_id_high",
                    "returnType": 2
                },
                {
                    "id": "a20bf085-1506-4b24-94d3-b777a8d7a345",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_owner_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_owner_id_low",
                    "returnType": 2
                },
                {
                    "id": "9be9522b-b700-4616-be18-12b7540afac3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_count",
                    "help": "steam_lobby_list_get_lobby_member_count() : Returns the number of members in the given lobby in search results.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_get_lobby_member_count",
                    "returnType": 2
                },
                {
                    "id": "a52c8b4d-077b-46b7-850e-0f253a0f174b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_member_id_high",
                    "returnType": 2
                },
                {
                    "id": "90412fb5-8fde-4147-897f-02d1a21ec3f0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_list_get_lobby_member_id_low",
                    "returnType": 2
                },
                {
                    "id": "39b2da1c-bc62-4799-8396-d2f24297136b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_join",
                    "help": "steam_lobby_list_join() : [async] Starts joining the given lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_list_join",
                    "returnType": 2
                },
                {
                    "id": "f3443bcd-da83-4ff9-a628-50f988405aa0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_join_id_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_join_id_raw",
                    "returnType": 2
                },
                {
                    "id": "e639916d-1a97-402e-8c10-9118a8ed6ee2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_create",
                    "help": "steam_lobby_create(, ) : [async] Creates a lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_create",
                    "returnType": 2
                },
                {
                    "id": "5addd04b-f476-4d16-8851-87bb04f9f79c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "steam_lobby_set_data",
                    "help": "steam_lobby_set_data(, ) : [lobby owner only] Sets the data for the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_set_data",
                    "returnType": 2
                },
                {
                    "id": "96515424-773f-43e2-95c6-0e5998ee210d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_lobby_get_data",
                    "help": "steam_lobby_get_data() : [anyone] Retrieves previously set data for the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_get_data",
                    "returnType": 1
                },
                {
                    "id": "f31702ce-ee93-4d53-9301-ef7e52678e6b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_set_type",
                    "help": "steam_lobby_set_type() : [lobby owner only] Changes the type of the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_set_type",
                    "returnType": 2
                },
                {
                    "id": "3da2b2fe-4fc4-40ca-8493-997449f58cdd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "int64_from_string_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "int64_from_string_high",
                    "returnType": 2
                },
                {
                    "id": "d56e0dc3-35f4-4e45-a366-a1996b79c467",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "int64_from_string_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "int64_from_string_low",
                    "returnType": 2
                },
                {
                    "id": "0877a323-68c0-4c10-ba95-fa466fb228ee",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "int64_combine_string",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "int64_combine_string",
                    "returnType": 1
                },
                {
                    "id": "df6c66a8-7487-4108-b9c2-a4fd6b81968d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_update",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_update",
                    "returnType": 2
                },
                {
                    "id": "24b2b759-5dab-4310-8c68-36a1c2f46d60",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_restart_if_necessary",
                    "help": "steam_restart_if_necessary() : Detects if the app was run from Steam client and restarts if needed. Returns whether app should quit.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_restart_if_necessary",
                    "returnType": 2
                },
                {
                    "id": "64058cc8-9f2f-4af4-b264-1c1342dfe235",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_api_flags",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_api_flags",
                    "returnType": 2
                },
                {
                    "id": "d4c93e14-897d-44cd-966c-b5a6eeea8765",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_gml_init_cpp",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_init_cpp",
                    "returnType": 2
                },
                {
                    "id": "c6a792d4-7b71-466a-aa44-f54202404cd6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_is_ready",
                    "help": "steam_gml_is_ready() : Returns whether the extension has initialized successfully.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_gml_is_ready",
                    "returnType": 2
                },
                {
                    "id": "b78d5544-a660-4240-a19c-1c451f1da848",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_get_version",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_get_version",
                    "returnType": 2
                },
                {
                    "id": "39d21d3a-9f51-4d8d-a712-a88fa9c733e5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_is_available",
                    "help": "steam_gml_is_available() : Returns whether the extension was loaded at all (GML returns 0 for unloaded extension calls).",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_gml_is_available",
                    "returnType": 2
                },
                {
                    "id": "a492b826-d624-4597-bba9-693e4ac77dc4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_init_cpp_pre",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_init_cpp_pre",
                    "returnType": 2
                },
                {
                    "id": "db147790-6a3b-4fc4-8787-958db3e5fdcd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_set_auto_accept_p2p_sessions",
                    "help": "steam_net_set_auto_accept_p2p_sessions() : Sets whether to auto-accept all incoming P2P session requests.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_net_set_auto_accept_p2p_sessions",
                    "returnType": 2
                },
                {
                    "id": "c33c1844-eef4-43e2-a64d-5cf122151c68",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_net_accept_p2p_session_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_accept_p2p_session_raw",
                    "returnType": 2
                },
                {
                    "id": "24b6dec7-7c9d-4c26-9057-602ffeb0c32e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_net_close_p2p_session_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_close_p2p_session_raw",
                    "returnType": 2
                },
                {
                    "id": "b2e64478-0f86-4cc3-8204-e877879419b1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_packet_set_type",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_set_type",
                    "returnType": 2
                },
                {
                    "id": "6c2b5c27-1aea-4c06-a9ca-20ba62ec27c3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        1,
                        2
                    ],
                    "externalName": "steam_net_packet_send_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_send_raw",
                    "returnType": 2
                },
                {
                    "id": "ff747f29-220d-4ddf-b3c2-db9d9e081fe3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_receive",
                    "help": "steam_net_packet_receive() : Receives a packet, returns whether successful (retrieve data via steam_net_packet_).",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_net_packet_receive",
                    "returnType": 2
                },
                {
                    "id": "0ed8a6bb-ecaf-42e0-9d23-1bb692455b11",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_size",
                    "help": "steam_net_packet_get_size() : Returns the size of the last received packet (in bytes).",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_net_packet_get_size",
                    "returnType": 2
                },
                {
                    "id": "af11b7c6-536e-42b3-a87e-6bec845837a7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_net_packet_get_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_get_data_raw",
                    "returnType": 2
                },
                {
                    "id": "1f4583ff-412c-4eaf-bb56-ac6b78aeb795",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_sender_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_get_sender_id_high",
                    "returnType": 2
                },
                {
                    "id": "5ff18769-ae63-4882-9746-cd4cd68814b7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_sender_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_get_sender_id_low",
                    "returnType": 2
                },
                {
                    "id": "686ac792-12c4-4732-8de5-93282f2a020f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_get_user_steam_id_high",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_steam_id_high",
                    "returnType": 2
                },
                {
                    "id": "530f27b6-dc2f-4d75-be9c-26b4f194d6cb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_get_user_steam_id_low",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_user_steam_id_low",
                    "returnType": 2
                },
                {
                    "id": "0329a138-0196-4164-8ea9-b9b3da545a7a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_user_set_played_with",
                    "help": "steam_user_set_played_with(, ) : Can be called on lobby session start, adds the user to \"recently played with\" list.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_user_set_played_with",
                    "returnType": 2
                },
                {
                    "id": "a1f90f46-29cb-4673-9e56-a426ecb13717",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_activate_overlay_raw",
                    "help": "steam_activate_overlay_raw() : Activates an overlay by it's raw Steam API name.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_activate_overlay_raw",
                    "returnType": 2
                },
                {
                    "id": "c4c80b88-6dcd-487b-e540-7c902f0d6a61",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "steam_set_rich_presence",
                    "help": "steam_set_rich_presence(, ) : Sets rich text presence for the active user. See: https:\/\/partner.steamgames.com\/doc\/api\/ISteamFriends#SetRichPresence",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_set_rich_presence",
                    "returnType": 2
                },
                {
                    "id": "821894c4-73a2-3ac2-8353-9a0a11681936",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_clear_rich_presence",
                    "help": "steam_clear_rich_presence() : Clears rich text presence.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_clear_rich_presence",
                    "returnType": 2
                },
                {
                    "id": "e10d4cf7-7764-6a46-b8c2-201088858673",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_set_overlay_notification_position",
                    "help": "steam_set_overlay_notification_position()",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_set_overlay_notification_position",
                    "returnType": 2
                },
                {
                    "id": "d4c3b615-7d0b-5de4-f264-d5539f5d0c92",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_set_overlay_notification_inset",
                    "help": "steam_set_overlay_notification_inset(, )",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_set_overlay_notification_inset",
                    "returnType": 2
                },
                {
                    "id": "9769cb1a-9117-3b4c-b9d4-4a4459559fc4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_ugc_delete_item_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_ugc_delete_item_raw",
                    "returnType": 2
                },
                {
                    "id": "b5c38f5e-d978-3b40-9bf2-2cc5b3f64b80",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "steam_get_app_ownership_ticket_data_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_get_app_ownership_ticket_data_raw",
                    "returnType": 2
                },
                {
                    "id": "e0c3ad7c-f485-d5a1-aead-d31a70c77a94",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "steam_user_request_encrypted_app_ticket_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_user_request_encrypted_app_ticket_raw",
                    "returnType": 2
                }
            ],
            "init": "steam_gml_init_cpp_pre",
            "kind": 1,
            "order": [
                "79957aba-fbb3-40b7-ab09-1e39fdfb0ade",
                "db147790-6a3b-4fc4-8787-958db3e5fdcd",
                "c33c1844-eef4-43e2-a64d-5cf122151c68",
                "24b6dec7-7c9d-4c26-9057-602ffeb0c32e",
                "b2e64478-0f86-4cc3-8204-e877879419b1",
                "6c2b5c27-1aea-4c06-a9ca-20ba62ec27c3",
                "ff747f29-220d-4ddf-b3c2-db9d9e081fe3",
                "0ed8a6bb-ecaf-42e0-9d23-1bb692455b11",
                "af11b7c6-536e-42b3-a87e-6bec845837a7",
                "1f4583ff-412c-4eaf-bb56-ac6b78aeb795",
                "5ff18769-ae63-4882-9746-cd4cd68814b7",
                "c1c865c0-dc88-464e-b82e-7a765375f9ea",
                "e99bf982-6cef-40f7-b30e-057bd86aad2a",
                "3c010276-4fc6-4db7-ae88-674865e6f55e",
                "3c704849-0316-4e04-968c-90faac993b22",
                "235e5aca-ee9e-4220-be18-42e517d741d2",
                "4db6ef34-6ccc-4894-a6b9-d7f2eec1bd76",
                "6140a01c-b373-4cb5-a52f-f9080e661ab8",
                "fbe79c7e-1b9f-487c-905f-3def4cc8a540",
                "12bbd18a-1dee-4c4c-aca9-a5985d029e5c",
                "463553f6-810e-48dd-8527-d932174b0d14",
                "d326f37e-7c0e-4fb9-9486-f6aaa7a2b5ff",
                "d98eb063-d1de-45db-b70d-b97bb29a660d",
                "734e025e-30b8-4421-8973-dc515c90e3f1",
                "c8b7abb1-75ff-42cd-97e6-8a0783e81f67",
                "6b6c3e38-e523-453b-86e6-8660e5c95a7e",
                "2a5df565-82ff-4675-8d09-842fa83911b3",
                "690191d4-301b-4067-aaa7-84097f60b990",
                "7606f825-4a77-4618-a2d9-6c4f01bffcc3",
                "70775a22-1e05-4db9-8827-4d8ffa2b292d",
                "a20bf085-1506-4b24-94d3-b777a8d7a345",
                "9be9522b-b700-4616-be18-12b7540afac3",
                "a52c8b4d-077b-46b7-850e-0f253a0f174b",
                "90412fb5-8fde-4147-897f-02d1a21ec3f0",
                "39b2da1c-bc62-4799-8396-d2f24297136b",
                "f3443bcd-da83-4ff9-a628-50f988405aa0",
                "e639916d-1a97-402e-8c10-9118a8ed6ee2",
                "5addd04b-f476-4d16-8851-87bb04f9f79c",
                "96515424-773f-43e2-95c6-0e5998ee210d",
                "f31702ce-ee93-4d53-9301-ef7e52678e6b",
                "f333b4c8-f60e-4cba-8883-c9c6d1dae52e",
                "49b6396e-9a4d-4950-bdf0-36cfc3c6c55f",
                "0b2ded16-83a0-49a9-a289-1c4287841428",
                "56e3137f-95e5-4ed5-8f34-df87b2ceca7f",
                "b060ebbe-d642-4a44-a8bc-4f84d086be46",
                "6d425447-b978-4c17-812d-825ced214a1c",
                "f25ccc0c-d7a5-4032-b26c-ba4e2339cf53",
                "9a6f59a8-0fa8-483e-81fe-6fa2d4f7ba4a",
                "7d2ac120-7436-4573-866a-2526822464d4",
                "217d397b-2d94-41f5-a5f4-a621ce05d96e",
                "97345585-9efa-4780-aa3f-6ebe816ba878",
                "685683d0-0a49-4b0f-b3c3-8c22e4621abf",
                "34e623e5-274f-4dfd-bb74-450d5716fd5c",
                "b8357ece-27f4-4691-9109-b9338f257282",
                "8a3756da-485a-4e22-a2b9-7c3c78e16b8f",
                "55caabe6-2119-48cb-835e-70837eda7c3d",
                "686ac792-12c4-4732-8de5-93282f2a020f",
                "530f27b6-dc2f-4d75-be9c-26b4f194d6cb",
                "0329a138-0196-4164-8ea9-b9b3da545a7a",
                "a1f90f46-29cb-4673-9e56-a426ecb13717",
                "3da2b2fe-4fc4-40ca-8493-997449f58cdd",
                "d56e0dc3-35f4-4e45-a366-a1996b79c467",
                "0877a323-68c0-4c10-ba95-fa466fb228ee",
                "df6c66a8-7487-4108-b9c2-a4fd6b81968d",
                "24b2b759-5dab-4310-8c68-36a1c2f46d60",
                "64058cc8-9f2f-4af4-b264-1c1342dfe235",
                "d4c93e14-897d-44cd-966c-b5a6eeea8765",
                "c6a792d4-7b71-466a-aa44-f54202404cd6",
                "b78d5544-a660-4240-a19c-1c451f1da848",
                "39d21d3a-9f51-4d8d-a712-a88fa9c733e5",
                "a492b826-d624-4597-bba9-693e4ac77dc4"
            ],
            "origname": "extensions\\Steamworks.gml.dylib",
            "uncompress": false
        },
        {
            "id": "a3cffd59-2e11-4b28-82d5-95dc67ced2eb",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "steam_networking.gml",
            "final": "",
            "functions": [
                {
                    "id": "984279c8-ca10-4cc8-b197-aa1b27b311fd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_accept_p2p_session",
                    "help": "steam_net_accept_p2p_session(user_id) : Accepts a P2P session with the given user. Should only be called in the \"p2p_session_request\" event.",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_accept_p2p_session",
                    "returnType": 2
                },
                {
                    "id": "957427cb-d6fe-44d1-80d3-24e9bc106025",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_close_p2p_session",
                    "help": "steam_net_close_p2p_session(user_id) : Closes the P2P session with the given user (if any)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_close_p2p_session",
                    "returnType": 2
                },
                {
                    "id": "7705a3f8-b729-4b84-bbff-14e6ca0e1021",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_sender_id",
                    "help": "steam_net_packet_get_sender_id() : Returns the sender ID (int64) of the last received packet.",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_packet_get_sender_id",
                    "returnType": 2
                },
                {
                    "id": "ef9120e9-98cb-4ed3-abbb-fd5a83c1b59e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_packet_get_data",
                    "help": "steam_net_packet_get_data(buffer) : Copies the current packet data to the given buffer.",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_packet_get_data",
                    "returnType": 2
                },
                {
                    "id": "4efd29b4-da43-436e-b8ce-1aabe23c25c6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_net_packet_send",
                    "help": "steam_net_packet_send(steam_id, buffer, size, type) : Sends a packet to the given destination.",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_packet_send",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "984279c8-ca10-4cc8-b197-aa1b27b311fd",
                "957427cb-d6fe-44d1-80d3-24e9bc106025",
                "7705a3f8-b729-4b84-bbff-14e6ca0e1021",
                "ef9120e9-98cb-4ed3-abbb-fd5a83c1b59e",
                "4efd29b4-da43-436e-b8ce-1aabe23c25c6"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4c7eeb73-a714-41ee-b696-f2861b184c90",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "steam_misc.gml",
            "final": "",
            "functions": [
                {
                    "id": "09d6b784-249e-e309-58d1-7b13b23d4865",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        
                    ],
                    "externalName": "steam_ugc_delete_item",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_ugc_delete_item",
                    "returnType": 2
                },
                {
                    "id": "b1990112-8a39-41fe-9860-13675c323130",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "steam_get_app_ownership_ticket_data",
                    "help": "steam_get_app_ownership_ticket_data(buffer, ?app_id)->[size_total, ofs_app_id, ofs_steam_id, ofs_signature, size_signature]",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_get_app_ownership_ticket_data",
                    "returnType": 2
                },
                {
                    "id": "eec828f9-dea3-4536-89de-77e737245ff7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "steam_user_request_encrypted_app_ticket",
                    "help": "steam_user_request_encrypted_app_ticket(?bufferOrStringToInclude, ?bufferToIncludeSize)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_user_request_encrypted_app_ticket",
                    "returnType": 2
                },
                {
                    "id": "96869bdd-e6e8-3d94-bd97-3480b7ca558b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_image_create_sprite",
                    "help": "steam_image_create_sprite(img:steam_image_id)->sprite",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_image_create_sprite",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "a27e036d-c4af-4bfa-8687-9ea60d9dee41",
                "b1990112-8a39-41fe-9860-13675c323130",
                "eec828f9-dea3-4536-89de-77e737245ff7",
                "09d6b784-249e-e309-58d1-7b13b23d4865"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3f49524c-bc90-42e4-8b66-739b86609a81",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "steam_matchmaking.gml",
            "final": "",
            "functions": [
                {
                    "id": "0378d13f-e816-464a-932b-5dbb28c922df",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_join_id",
                    "help": "steam_lobby_join_id(lobby_id)->ok? : Joins the given lobby",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_join_id",
                    "returnType": 2
                },
                {
                    "id": "c7572147-3c1c-4859-9a8b-1af4412be05e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_lobby_id",
                    "help": "steam_lobby_get_lobby_id()->lobby_id : Returns the lobby ID of the current lobby",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_get_lobby_id",
                    "returnType": 2
                },
                {
                    "id": "e4108867-7ea2-4ab9-9080-c2aa5ba4df65",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_owner_id",
                    "help": "steam_lobby_get_owner_id()->user_id : Returns the user ID of the authoritative user in the lobby.",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_get_owner_id",
                    "returnType": 2
                },
                {
                    "id": "b001103f-0ad9-43ec-f720-c5ff1d5099ab",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_set_owner_id",
                    "help": "steam_lobby_set_owner_id(user_id)->bool : Transfers lobby ownership",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_set_owner_id",
                    "returnType": 2
                },
                {
                    "id": "47a60c8d-e353-4313-85e4-c8cf9bf1cf76",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_member_id",
                    "help": "steam_lobby_get_member_id(index)->user_id : Returns the user ID of the given user in the lobby.",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_get_member_id",
                    "returnType": 2
                },
                {
                    "id": "2a05f9f2-171a-45c0-8914-bc3dcfa8f6b9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_id",
                    "help": "steam_lobby_list_get_lobby_id(index)->lobby_id : Returns the ID of the given lobby.",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_list_get_lobby_id",
                    "returnType": 2
                },
                {
                    "id": "3015a249-3e5a-4afc-a6bc-1f8cce7afce6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_owner_id",
                    "help": "steam_lobby_list_get_lobby_owner_id(index)->user_id : Returns the user ID of the owner of the given lobby.",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_list_get_lobby_owner_id",
                    "returnType": 2
                },
                {
                    "id": "f2bdfa0f-925c-42a7-8521-715a042e14ba",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_id",
                    "help": "steam_lobby_list_get_lobby_owner_id(lobby_index, member_index)->user_id : Returns the user ID of the given member of the given lobby.",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_list_get_lobby_member_id",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "0378d13f-e816-464a-932b-5dbb28c922df",
                "c7572147-3c1c-4859-9a8b-1af4412be05e",
                "e4108867-7ea2-4ab9-9080-c2aa5ba4df65",
                "47a60c8d-e353-4313-85e4-c8cf9bf1cf76",
                "2a05f9f2-171a-45c0-8914-bc3dcfa8f6b9",
                "3015a249-3e5a-4afc-a6bc-1f8cce7afce6",
                "f2bdfa0f-925c-42a7-8521-715a042e14ba",
                "b001103f-0ad9-43ec-f720-c5ff1d5099ab"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "809200cd-45fc-4e00-b59b-1c202cd38eba",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "2d3d2066-0806-d32f-cae0-16a29c2477a0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_id_use_int64",
                    "hidden": false,
                    "value": "true"
                }
            ],
            "copyToTargets": -1,
            "filename": "steam_id.gml",
            "final": "",
            "functions": [
                {
                    "id": "e29553ed-8aac-4ebe-93e0-734d79ff7c92",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_id_create",
                    "help": "steam_id_create(high, low)->steam_id",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_create",
                    "returnType": 2
                },
                {
                    "id": "cae3216c-dcb4-4cb6-86ad-2053cba205b3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_id_get_high",
                    "help": "steam_id_get_high(steam_id)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_get_high",
                    "returnType": 2
                },
                {
                    "id": "c3e0cd13-1be1-4368-b410-04902ed0ced7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_id_get_low",
                    "help": "steam_id_get_low(steam_id)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_get_low",
                    "returnType": 2
                },
                {
                    "id": "224f400c-b2fd-45a6-8905-1e17036c7941",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_id_equals",
                    "help": "steam_id_equals(steam_id1, steam_id2)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_equals",
                    "returnType": 2
                },
                {
                    "id": "15b178d6-8bf8-44f1-8a88-2cc814b58f63",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_id_from_int64",
                    "help": "steam_id_from_int64(int64)->steam_id",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_from_int64",
                    "returnType": 2
                },
                {
                    "id": "5074e0c1-337d-4432-845a-0f76be896210",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_id_to_int64",
                    "help": "steam_id_to_int64(steam_id)->int64",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_to_int64",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "e29553ed-8aac-4ebe-93e0-734d79ff7c92",
                "cae3216c-dcb4-4cb6-86ad-2053cba205b3",
                "c3e0cd13-1be1-4368-b410-04902ed0ced7",
                "224f400c-b2fd-45a6-8905-1e17036c7941",
                "15b178d6-8bf8-44f1-8a88-2cc814b58f63",
                "5074e0c1-337d-4432-845a-0f76be896210"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "91c5831c-d9c1-449d-ab69-50aebbf5ea0e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "f0e0fdbb-0806-d3f2-351f-3480b21766bd",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "steam_gml_use_structs",
                    "hidden": false,
                    "value": "true"
                }
            ],
            "copyToTargets": -1,
            "filename": "steam_core.gml",
            "final": "",
            "functions": [
                {
                    "id": "a3a1c4d4-ec61-491d-acdd-ae09a7ce98cf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_init_gml",
                    "help": "steam_gml_init_gml()",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_gml_init_gml",
                    "returnType": 2
                },
                {
                    "id": "40e9e5b3-3597-4b30-80c7-4a8c172fd5bb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_check_version",
                    "help": "steam_gml_check_version() : Returns whether the DLL matches the extension version.",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_gml_check_version",
                    "returnType": 2
                },
                {
                    "id": "ad71b105-f28f-4b9a-856d-b25aef639d0b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_gml_prepare_buffer",
                    "help": "steam_gml_prepare_buffer(min_size)->buffer~",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_gml_prepare_buffer",
                    "returnType": 2
                },
                {
                    "id": "96869bdd-6e60-b594-ac86-ad1929ac22fb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_gml_read_chars",
                    "help": "steam_gml_read_chars(buffer:buffer, len:int)->string~",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_gml_read_chars",
                    "returnType": 2
                },
                {
                    "id": "f9523124-0d30-1659-c145-c474174d4e0e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_gml_write_chars",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_write_chars",
                    "returnType": 2
                },
                {
                    "id": "ab6e66ea-0857-4875-8fde-c3270ecd670d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_is_available",
                    "help": "steam_net_is_available()->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_is_available",
                    "returnType": 2
                },
                {
                    "id": "922cc180-00cd-4ac5-8fd1-60b907c59238",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_update",
                    "help": "steam_net_update()->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_update",
                    "returnType": 2
                },
                {
                    "id": "9f4bfebb-6f2b-4185-913c-09ca98c2196a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_check_version",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_check_version",
                    "returnType": 2
                }
            ],
            "init": "steam_gml_init_gml",
            "kind": 2,
            "order": [
                "a3a1c4d4-ec61-491d-acdd-ae09a7ce98cf",
                "40e9e5b3-3597-4b30-80c7-4a8c172fd5bb",
                "ad71b105-f28f-4b9a-856d-b25aef639d0b",
                "ab6e66ea-0857-4875-8fde-c3270ecd670d",
                "922cc180-00cd-4ac5-8fd1-60b907c59238",
                "9f4bfebb-6f2b-4185-913c-09ca98c2196a"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e2dea66b-d9c0-4289-8be4-ffdbdfb3b587",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "steam_controller.gml",
            "final": "",
            "functions": [
                {
                    "id": "59c99d79-9c2b-49d8-a63c-845932f8fa14",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_max_count",
                    "help": "steam_controller_get_max_count()->int: Returns the maximum number of controllers",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_max_count",
                    "returnType": 2
                },
                {
                    "id": "1bdc5952-42dc-405d-9f15-a15cf231b6cd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_ids",
                    "help": "steam_controller_get_ids(?out:array<index>)->array",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_ids",
                    "returnType": 2
                },
                {
                    "id": "a3d75c91-bbce-4f89-af11-7599cfd42a69",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_max_origins",
                    "help": "steam_controller_get_max_origins()->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_max_origins",
                    "returnType": 2
                },
                {
                    "id": "cec48756-40d6-4c3a-8209-2286da751cc3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_origins_raw",
                    "help": "steam_controller_get_origins_raw(found, buffer, out)->array~",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "2add9503-feea-4519-b502-5bf4ce24b1c8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_digital_origins",
                    "help": "steam_controller_get_digital_origins(controller, actionset_id, digital_id, ?out:array<origin>): as per GetDigitalActionOrigins",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_digital_origins",
                    "returnType": 2
                },
                {
                    "id": "0cb9bada-1699-4358-8124-c402fef6b5e1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_analog_origins",
                    "help": "steam_controller_get_digital_origins(controller, actionset_id, analog_id, ?out:array<origin>): as per GetAnalogActionOrigins",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_analog_origins",
                    "returnType": 2
                },
                {
                    "id": "52539508-2f28-4678-ae7f-0754e148a1cf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_x",
                    "help": "steam_controller_get_analog_x(controller, analog_id)->number: (-1..1) for sticks, delta for mouse",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_analog_x",
                    "returnType": 2
                },
                {
                    "id": "25e760a9-9f40-498e-a762-35ccf92261f5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_y",
                    "help": "steam_controller_get_analog_y(controller, analog_id)->number: (-1..1) for sticks, delta for mouse",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_analog_y",
                    "returnType": 2
                },
                {
                    "id": "2568912d-608a-4a37-8f28-79007eec25b9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_mode",
                    "help": "steam_controller_get_analog_mode(controller, analog_id)->EControllerSourceMode",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_analog_mode",
                    "returnType": 2
                },
                {
                    "id": "4bab174f-4b8a-4bd8-a8fd-36159a5daf9f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_status",
                    "help": "steam_controller_get_analog_status(controller, analog_id)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_analog_status",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "59c99d79-9c2b-49d8-a63c-845932f8fa14",
                "1bdc5952-42dc-405d-9f15-a15cf231b6cd",
                "a3d75c91-bbce-4f89-af11-7599cfd42a69",
                "cec48756-40d6-4c3a-8209-2286da751cc3",
                "2add9503-feea-4519-b502-5bf4ce24b1c8",
                "0cb9bada-1699-4358-8124-c402fef6b5e1",
                "52539508-2f28-4678-ae7f-0754e148a1cf",
                "25e760a9-9f40-498e-a762-35ccf92261f5",
                "2568912d-608a-4a37-8f28-79007eec25b9",
                "4bab174f-4b8a-4bd8-a8fd-36159a5daf9f"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "386555e2-d3fd-4cb7-b533-d5d30f657724",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "steam_inventory.gml",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "6409c883-7a4d-4d45-9286-5c80cba5519c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "steam_autogen.gml",
            "final": "",
            "functions": [
                {
                    "id": "2167cf6f-4aac-95d5-10b3-aae23ac35551",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_result_get_status",
                    "help": "steam_inventory_result_get_status(inv_result:steam_inventory_result)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_result_get_status",
                    "returnType": 2
                },
                {
                    "id": "e9589392-105a-f8d4-6ef4-3104fdb4fcea",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_result_get_unix_timestamp",
                    "help": "steam_inventory_result_get_unix_timestamp(result:steam_inventory_result)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_result_get_unix_timestamp",
                    "returnType": 2
                },
                {
                    "id": "3523dadc-9fe9-d4ee-6e9f-77c8201f629a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_inventory_result_get_item_property",
                    "help": "steam_inventory_result_get_item_property(inv_result:steam_inventory_result, item_index:int, prop_name:string)->string",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_result_get_item_property",
                    "returnType": 2
                },
                {
                    "id": "87aa6e13-3de6-507e-4472-3df5397731f2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_result_get_items",
                    "help": "steam_inventory_result_get_items(inv_result:steam_inventory_result)->array<any>",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_result_get_items",
                    "returnType": 2
                },
                {
                    "id": "1d6d8726-1f3f-ae52-abf4-0b3e170b9f48",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_result_destroy",
                    "help": "steam_inventory_result_destroy(inv_result:steam_inventory_result)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_result_destroy",
                    "returnType": 2
                },
                {
                    "id": "cb1336b8-94e1-bac0-1e1d-c3448736892f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_trigger_item_drop",
                    "help": "steam_inventory_trigger_item_drop(item_def:steam_inventory_item_def)->steam_inventory_result",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_trigger_item_drop",
                    "returnType": 2
                },
                {
                    "id": "003c8d2d-2292-0f92-1347-385d6bb71d20",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_add_promo_item",
                    "help": "steam_inventory_add_promo_item(item_def:steam_inventory_item_def)->steam_inventory_result",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_add_promo_item",
                    "returnType": 2
                },
                {
                    "id": "e4c7d91b-2a34-f066-e2c5-4260d1d7cce3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_add_promo_items",
                    "help": "steam_inventory_add_promo_items(item_defs:array<steam_inventory_item_def>)->steam_inventory_result",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_add_promo_items",
                    "returnType": 2
                },
                {
                    "id": "54bcc364-70ff-07ef-3b9e-28668f10c52c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_inventory_consume_item",
                    "help": "steam_inventory_consume_item(item_id:steam_inventory_item_id, quantity:int)->steam_inventory_result",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_consume_item",
                    "returnType": 2
                },
                {
                    "id": "1238977f-e0ea-9050-7fbf-36da09724a24",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_inventory_exchange_items",
                    "help": "steam_inventory_exchange_items(create:array<any>, destroy:array<any>)->steam_inventory_result",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_exchange_items",
                    "returnType": 2
                },
                {
                    "id": "31180b45-6c70-f25e-c1c6-1f50751f345b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_generate_items",
                    "help": "steam_inventory_generate_items(create:array<any>)->steam_inventory_result",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_generate_items",
                    "returnType": 2
                },
                {
                    "id": "54594a97-8cc0-619b-197e-18679c660911",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_start_purchase",
                    "help": "steam_inventory_start_purchase(items:array<any>)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_start_purchase",
                    "returnType": 2
                },
                {
                    "id": "e7a0fa26-2083-e12d-2cbf-d4094b04bced",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_inventory_get_all_items",
                    "help": "steam_inventory_get_all_items()->steam_inventory_result",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_get_all_items",
                    "returnType": 2
                },
                {
                    "id": "c3a39912-d7b8-1e96-7dc9-e73381250373",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "steam_inventory_request_eligible_promo_item_defs",
                    "help": "steam_inventory_request_eligible_promo_item_defs(user_id:int = 0)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_request_eligible_promo_item_defs",
                    "returnType": 2
                },
                {
                    "id": "e0013fd8-d2d6-bf0c-09ce-8ca4fb67023c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_get_items_by_id",
                    "help": "steam_inventory_get_items_by_id(item_ids:array<steam_inventory_item_id>)->steam_inventory_result",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_get_items_by_id",
                    "returnType": 2
                },
                {
                    "id": "769fd017-72e3-247c-3934-45975df4b674",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_inventory_start_update_properties",
                    "help": "steam_inventory_start_update_properties()->steam_inventory_update_handle",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_start_update_properties",
                    "returnType": 2
                },
                {
                    "id": "7ac109f4-bf3f-1f3d-3f2b-af918b46333a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_inventory_set_property_bool",
                    "help": "steam_inventory_set_property_bool(handle:steam_inventory_update_handle, item_id:steam_inventory_item_id, prop_name:string, value:bool)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_set_property_bool",
                    "returnType": 2
                },
                {
                    "id": "28ef2b44-75b0-75a9-b1f9-9041443a7797",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_inventory_set_property_float",
                    "help": "steam_inventory_set_property_float(handle:steam_inventory_update_handle, item_id:steam_inventory_item_id, prop_name:string, value:number)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_set_property_float",
                    "returnType": 2
                },
                {
                    "id": "0745dfef-6c90-5a24-1d63-22ea87d39d00",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_inventory_set_property_int",
                    "help": "steam_inventory_set_property_int(handle:steam_inventory_update_handle, item_id:steam_inventory_item_id, prop_name:string, value:int)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_set_property_int",
                    "returnType": 2
                },
                {
                    "id": "9d106f98-db60-a516-34f4-4d300f105a45",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_inventory_set_property_string",
                    "help": "steam_inventory_set_property_string(handle:steam_inventory_update_handle, item_id:steam_inventory_item_id, prop_name:string, value:string)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_set_property_string",
                    "returnType": 2
                },
                {
                    "id": "ba6f7ee5-a8d1-98e4-4e0f-a245816c12b1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_inventory_remove_property",
                    "help": "steam_inventory_remove_property(handle:steam_inventory_update_handle, item_id:steam_inventory_item_id, prop_name:string)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_remove_property",
                    "returnType": 2
                },
                {
                    "id": "a759b9ed-7015-021b-0a65-179f42e48606",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_submit_update_properties",
                    "help": "steam_inventory_submit_update_properties(handle:steam_inventory_update_handle)->steam_inventory_result",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_submit_update_properties",
                    "returnType": 2
                },
                {
                    "id": "533664eb-b1e7-11e7-bcd5-9f7eeb214624",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_inventory_load_item_definitions",
                    "help": "steam_inventory_load_item_definitions()->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_load_item_definitions",
                    "returnType": 2
                },
                {
                    "id": "ba2d9623-a071-a5dc-565f-8e914777abc0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_inventory_get_item_price",
                    "help": "steam_inventory_get_item_price(item_def:steam_inventory_item_def)->int?",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_get_item_price",
                    "returnType": 2
                },
                {
                    "id": "c1a7a5d1-e120-5af0-4391-5c8be5b86e4f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_inventory_get_items_with_prices",
                    "help": "steam_inventory_get_items_with_prices()->array<any>?",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_get_items_with_prices",
                    "returnType": 2
                },
                {
                    "id": "a9975705-3690-6b42-e034-20177cada885",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_inventory_request_prices",
                    "help": "steam_inventory_request_prices()->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_request_prices",
                    "returnType": 2
                },
                {
                    "id": "df9fac64-d9e2-1d32-3126-39777685a091",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_inventory_transfer_item_quantity",
                    "help": "steam_inventory_transfer_item_quantity(source_item_id:steam_inventory_item_id, quantity:int, dest_item_id:steam_inventory_item_id)->steam_inventory_result",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_inventory_transfer_item_quantity",
                    "returnType": 2
                },
                {
                    "id": "0bd6ed6e-64ca-2bea-46c0-51a53391e42d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_leaderboard_get_entry_count",
                    "help": "steam_leaderboard_get_entry_count(id:int)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_leaderboard_get_entry_count",
                    "returnType": 2
                },
                {
                    "id": "a8ce569e-64f9-9477-b6c0-be4802d3c4a2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_send_chat_message",
                    "help": "steam_lobby_send_chat_message(text:string)->bool ",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_send_chat_message",
                    "returnType": 2
                },
                {
                    "id": "6ea688a6-dbd5-ad6e-d5f5-56882616c11b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_send_chat_message_buffer",
                    "help": "steam_lobby_send_chat_message_buffer(buf:buffer, size:int = -1)->number",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_send_chat_message_buffer",
                    "returnType": 2
                },
                {
                    "id": "7d4faf7d-5dcb-5ad9-6009-9bf26ab550b6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_get_chat_message_data",
                    "help": "steam_lobby_get_chat_message_data(message_index:int, buf:buffer)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_get_chat_message_data",
                    "returnType": 2
                },
                {
                    "id": "4cd14697-4b49-2f97-e3b4-7c603bf10afe",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_set_joinable",
                    "help": "steam_lobby_set_joinable(joinable:bool)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_set_joinable",
                    "returnType": 2
                },
                {
                    "id": "26ac41ee-ca3a-25fa-809b-869900639d79",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_get_friends_game_info",
                    "help": "steam_get_friends_game_info()->array<any>",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_get_friends_game_info",
                    "returnType": 2
                },
                {
                    "id": "893e81ec-3e40-9496-94f5-939dcd5b98f2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_get_user_persona_name_sync",
                    "help": "steam_get_user_persona_name_sync(user_id:int)->string",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_get_user_persona_name_sync",
                    "returnType": 2
                },
                {
                    "id": "0a550d43-46ff-8f79-c50e-0e3ada2c625c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_get_user_avatar",
                    "help": "steam_get_user_avatar(user_id:int, avatar_size:int)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_get_user_avatar",
                    "returnType": 2
                },
                {
                    "id": "07eacfc5-8dce-43b0-2ed8-311f7c8c10bc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_image_get_size",
                    "help": "steam_image_get_size(img:int)->",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_image_get_size",
                    "returnType": 2
                },
                {
                    "id": "ac8028fe-7dfd-e953-08bc-2f14400bfa3a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_image_get_rgba",
                    "help": "steam_image_get_rgba(img:int, dest_buf:buffer)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_image_get_rgba",
                    "returnType": 2
                },
                {
                    "id": "b0bcfeec-f3ff-c500-5b48-66d883fd965b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_image_get_bgra",
                    "help": "steam_image_get_bgra(img:int, dest_buf:buffer)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_image_get_bgra",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "LGPLv3",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "F79C97955FD1AF4686EB4EF4EF90F0DB",
    "sourcedir": "",
    "supportedTargets": 105554163798254,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}