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
                    "id": "c91c4f07-3ee0-4bf0-a5dc-2f0aedaa3e8b",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_version",
                    "hidden": false,
                    "value": "100"
                },
                {
                    "id": "0e082856-a408-40f4-bfa6-e789c5563619",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "70f606ec-1d2f-4f9a-83d6-182015f67d89",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable_nodelay",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "654c8601-b24e-4ec3-89f5-c2a385b3b321",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "a6418d5f-463e-4203-a19d-b51a1d387699",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable_buffer",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "a2363bf1-780a-47d1-8035-52df62586ba5",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_eq",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "5fda95d9-ccfe-4da0-a3cc-b8d79a3566fa",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ne",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "f04cad02-ba95-44a9-9692-0cd0a6671d3e",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_lt",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "efaa1498-17a1-41c6-b40f-b91c880bc4d6",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_gt",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "e0e3a534-5e00-4fda-a259-8957cb3a9dfc",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_le",
                    "hidden": false,
                    "value": "-2"
                },
                {
                    "id": "2f7ad07b-4edc-4be2-a337-1442a8bc59e9",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ge",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "6ed1700c-b7d1-4a29-ad8a-ad48b3141a44",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_close",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "0a0f831c-3c9e-49f2-9d91-e17568dbc1a6",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_default",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "e3b320b2-7599-4ce3-921b-fc3a59dd6f70",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_far",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "55cedc69-ba24-49f6-8c58-2f3c452f3951",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_worldwide",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "1c0bfe24-fefc-4b0f-8d0a-9c501384283f",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_private",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "510ddd05-d333-4706-bc0e-3f73c0a3faea",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_friends_only",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "4997f457-6db7-4ad7-9af6-464c0bb415d2",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_public",
                    "hidden": false,
                    "value": "2"
                }
            ],
            "copyToTargets": 105553658380352,
            "filename": "Steamworks.gml.dll",
            "final": "",
            "functions": [
                {
                    "id": "5f528970-2e63-4a34-b790-e3c443325efe",
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
                    "id": "602e74a6-8d6f-4079-9c3b-1182e76721d9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_set_auto_accept_p2p_sessions",
                    "help": "steam_net_set_auto_accept_p2p_sessions(auto_accept) : Sets whether to auto-accept all incoming P2P session requests.",
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
                    "help": "steam_net_accept_p2p_session_raw(user_id_high, user_id_low) : Accepts a P2P session with the given user. Should only be called in the \"p2p_session_request\" event.",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "steam_net_close_p2p_session_raw(user_id_high, user_id_low)",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "steam_lobby_list_add_string_filter(key, value, comparison_type) : Sets a string filter for the next lobby list request.",
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
                    "help": "steam_lobby_list_add_numerical_filter(key, value, comparison_type) : Sets a numerical filter for the next lobby list request.",
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
                    "help": "steam_lobby_list_add_near_filter(key, value) : Sorts the results of the next lobby list request based to proximity to the given value.",
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
                    "help": "steam_lobby_list_add_distance_filter(mode) : Restricts results by region",
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
                    "help": "steam_lobby_list_get_data(index, key) : Retrieves given information about the given lobby",
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
                    "help": "steam_lobby_list_get_lobby_member_count(lobby_index) : Returns the number of members in the given lobby in search results.",
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
                    "help": "steam_lobby_list_join(index) : [async] Starts joining the given lobby.",
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
                    "help": "steam_lobby_create(type, max_members) : [async] Creates a lobby.",
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
                    "help": "steam_lobby_set_data(key, value) : [lobby owner only] Sets the data for the current lobby.",
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
                    "help": "steam_lobby_get_data(key) : [anyone] Retrieves previously set data for the current lobby.",
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
                    "help": "steam_lobby_set_type(type) : [lobby owner only] Changes the type of the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_set_type",
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
                    "id": "758f834d-abcf-4702-80eb-99d77a7ad698",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_actionset_id",
                    "help": "steam_controller_get_actionset_id(actionSetName) : Assigns and returns ActionSet ID for given name, -1 if actionset is not found",
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
                    "help": "steam_controller_get_actionset(controller) : Returns action set ID (generated by steam_controller_get_actionset_id), as per GetCurrentActionSet",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_actionset",
                    "returnType": 2
                },
                {
                    "id": "9d0ad139-3cb0-48a0-a418-f14a98af4112",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_set_actionset",
                    "help": "steam_controller_set_actionset(controller, actionset_id) : Changes controller action set, as per ActivateActionSet",
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
                    "help": "steam_controller_get_digital_id(digitalActionName)",
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
                    "help": "steam_controller_get_digital_value(controller, digital_id) : Retreives digital action state (true/false)",
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
                    "help": "steam_controller_get_digital_status(controller, digital_id) : Returns whether the given digital action is currently active (true/false)",
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
                    "help": "steam_controller_get_analog_id(analogActionName)",
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
                    "help": "steam_user_set_played_with(id_high, id_low) : Can be called on lobby session start, adds the user to \"recently played with\" list.",
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
                    "help": "steam_activate_overlay_raw(overlay_code) : Activates an overlay by it's raw Steam API name.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_activate_overlay_raw",
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
                    "help": "int64_from_string_high(cstring)",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "int64_from_string_low(cstring)",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "int64_combine_string(high, low)",
                    "hidden": false,
                    "kind": 1,
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
                }
            ],
            "init": "steam_gml_init_cpp_pre",
            "kind": 1,
            "order": [
                
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
                    "id": "b2fc18d4-9418-48c2-aa17-5c5abbb6c4f3",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_version",
                    "hidden": false,
                    "value": "100"
                },
                {
                    "id": "896d6503-7000-40b2-9e88-4da47776acef",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "55bca1db-2610-40be-8eff-ceb11eb67599",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable_nodelay",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "e2ccad93-7c64-4984-8a34-3403c62848ce",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "2467e2a5-c6c3-4e8e-9f7b-c7e367d0143a",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable_buffer",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "0b66689d-8f4c-407d-ae8c-138541c0fe0e",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_eq",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "b5a6dc56-a56e-48ae-b977-6a6399631679",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ne",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "1e5c76d9-3838-4477-aba2-38026330ea83",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_lt",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "48420b9e-3cc1-4661-a922-326232394961",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_gt",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "b0ae9a50-4578-4147-ad51-2b4c3017f377",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_le",
                    "hidden": false,
                    "value": "-2"
                },
                {
                    "id": "075a0fe1-1ec4-4b33-916c-ce6b5df0e939",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ge",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "a246763d-c796-4335-807f-a2087d19ce88",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_close",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "7c132e4c-4f58-4669-b907-fb28c0c3af4a",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_default",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "af7cf215-0808-45ca-ade6-a3c1e0bb2adc",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_far",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "c4883b4d-1f9c-4f8b-b437-bff31e6be725",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_worldwide",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "db181972-686a-4e44-b82e-2e0a93bc7e16",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_private",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "eae46fa2-17f8-4f38-b163-86614b3bc616",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_friends_only",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "a5ce4ec0-d5e6-4f25-bd7c-1d57a939ef62",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_public",
                    "hidden": false,
                    "value": "2"
                }
            ],
            "copyToTargets": 17592320262272,
            "filename": "Steamworks.gml.so",
            "final": "",
            "functions": [
                {
                    "id": "2166d1fc-2f7b-4327-9609-fa9b183d27b4",
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
                    "id": "8137b1de-4982-4963-8018-692e199fcd14",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_set_auto_accept_p2p_sessions",
                    "help": "steam_net_set_auto_accept_p2p_sessions(auto_accept) : Sets whether to auto-accept all incoming P2P session requests.",
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
                    "help": "steam_net_accept_p2p_session_raw(user_id_high, user_id_low) : Accepts a P2P session with the given user. Should only be called in the \"p2p_session_request\" event.",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "steam_net_close_p2p_session_raw(user_id_high, user_id_low)",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "steam_lobby_list_add_string_filter(key, value, comparison_type) : Sets a string filter for the next lobby list request.",
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
                    "help": "steam_lobby_list_add_numerical_filter(key, value, comparison_type) : Sets a numerical filter for the next lobby list request.",
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
                    "help": "steam_lobby_list_add_near_filter(key, value) : Sorts the results of the next lobby list request based to proximity to the given value.",
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
                    "help": "steam_lobby_list_add_distance_filter(mode) : Restricts results by region",
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
                    "help": "steam_lobby_list_get_data(index, key) : Retrieves given information about the given lobby",
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
                    "help": "steam_lobby_list_get_lobby_member_count(lobby_index) : Returns the number of members in the given lobby in search results.",
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
                    "help": "steam_lobby_list_join(index) : [async] Starts joining the given lobby.",
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
                    "help": "steam_lobby_create(type, max_members) : [async] Creates a lobby.",
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
                    "help": "steam_lobby_set_data(key, value) : [lobby owner only] Sets the data for the current lobby.",
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
                    "help": "steam_lobby_get_data(key) : [anyone] Retrieves previously set data for the current lobby.",
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
                    "help": "steam_lobby_set_type(type) : [lobby owner only] Changes the type of the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_set_type",
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
                    "id": "fc06d414-6c0e-4f0b-bfc5-87555e16b936",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_actionset_id",
                    "help": "steam_controller_get_actionset_id(actionSetName) : Assigns and returns ActionSet ID for given name, -1 if actionset is not found",
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
                    "help": "steam_controller_get_actionset(controller) : Returns action set ID (generated by steam_controller_get_actionset_id), as per GetCurrentActionSet",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_actionset",
                    "returnType": 2
                },
                {
                    "id": "e2f617e9-542d-4512-8108-e233fef73869",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_set_actionset",
                    "help": "steam_controller_set_actionset(controller, actionset_id) : Changes controller action set, as per ActivateActionSet",
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
                    "help": "steam_controller_get_digital_id(digitalActionName)",
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
                    "help": "steam_controller_get_digital_value(controller, digital_id) : Retreives digital action state (true/false)",
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
                    "help": "steam_controller_get_digital_status(controller, digital_id) : Returns whether the given digital action is currently active (true/false)",
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
                    "help": "steam_controller_get_analog_id(analogActionName)",
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
                    "help": "steam_user_set_played_with(id_high, id_low) : Can be called on lobby session start, adds the user to \"recently played with\" list.",
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
                    "help": "steam_activate_overlay_raw(overlay_code) : Activates an overlay by it's raw Steam API name.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_activate_overlay_raw",
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
                    "help": "int64_from_string_high(cstring)",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "int64_from_string_low(cstring)",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "int64_combine_string(high, low)",
                    "hidden": false,
                    "kind": 1,
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
                }
            ],
            "init": "steam_net_init_cpp_pre",
            "kind": 1,
            "order": [
                
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
                    "id": "6e413374-3677-4998-940d-41cc26686a78",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_version",
                    "hidden": false,
                    "value": "100"
                },
                {
                    "id": "a2aab721-460f-4854-80bf-407b60117071",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "7cf21972-7b6f-4be6-8ca4-3c880e8f4cde",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_unreliable_nodelay",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "0c1779e0-c79f-485d-90ac-18bc97a6ed47",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "856926d7-430b-489d-87f1-bc27c0caffac",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_net_packet_type_reliable_buffer",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "704c5309-9091-4536-ad49-4c083f3e324b",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_eq",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "88222e50-685f-442e-9454-be30194811e4",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ne",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "a1af9058-458f-4811-a604-7291c9ab1634",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_lt",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "faf46536-1763-441c-a252-8b9d317586a0",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_gt",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "59d5c83a-9752-4205-a5eb-802131bf0ea2",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_le",
                    "hidden": false,
                    "value": "-2"
                },
                {
                    "id": "893ea64c-d79a-44af-91a4-5181d1eb13a1",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_filter_ge",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "e1b46ae2-dd8b-4567-9d8b-22e452398851",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_close",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "e516ea90-5d81-4472-a0de-ca001856a465",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_default",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "d12a27fa-6dd3-4bab-9320-17eea2561a31",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_far",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "f921b0f1-20cf-43f1-bad5-bf21714030b9",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_list_distance_filter_worldwide",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "57384aad-e296-46bc-8baa-90b524e014aa",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_private",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "ffd4f0a8-1bac-401d-9fd9-1e6aba6937b7",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_friends_only",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "f416bc4a-8feb-4b7e-81aa-b5e1879251c7",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "steam_lobby_type_public",
                    "hidden": false,
                    "value": "2"
                }
            ],
            "copyToTargets": 67108866,
            "filename": "Steamworks.gml.dylib",
            "final": "",
            "functions": [
                {
                    "id": "79957aba-fbb3-40b7-ab09-1e39fdfb0ade",
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
                    "id": "db147790-6a3b-4fc4-8787-958db3e5fdcd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_set_auto_accept_p2p_sessions",
                    "help": "steam_net_set_auto_accept_p2p_sessions(auto_accept) : Sets whether to auto-accept all incoming P2P session requests.",
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
                    "help": "steam_net_accept_p2p_session_raw(user_id_high, user_id_low) : Accepts a P2P session with the given user. Should only be called in the \"p2p_session_request\" event.",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "steam_net_close_p2p_session_raw(user_id_high, user_id_low)",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "steam_lobby_list_add_string_filter(key, value, comparison_type) : Sets a string filter for the next lobby list request.",
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
                    "help": "steam_lobby_list_add_numerical_filter(key, value, comparison_type) : Sets a numerical filter for the next lobby list request.",
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
                    "help": "steam_lobby_list_add_near_filter(key, value) : Sorts the results of the next lobby list request based to proximity to the given value.",
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
                    "help": "steam_lobby_list_add_distance_filter(mode) : Restricts results by region",
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
                    "help": "steam_lobby_list_get_data(index, key) : Retrieves given information about the given lobby",
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
                    "help": "steam_lobby_list_get_lobby_member_count(lobby_index) : Returns the number of members in the given lobby in search results.",
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
                    "help": "steam_lobby_list_join(index) : [async] Starts joining the given lobby.",
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
                    "help": "steam_lobby_create(type, max_members) : [async] Creates a lobby.",
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
                    "help": "steam_lobby_set_data(key, value) : [lobby owner only] Sets the data for the current lobby.",
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
                    "help": "steam_lobby_get_data(key) : [anyone] Retrieves previously set data for the current lobby.",
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
                    "help": "steam_lobby_set_type(type) : [lobby owner only] Changes the type of the current lobby.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_lobby_set_type",
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
                    "id": "6d425447-b978-4c17-812d-825ced214a1c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "steam_controller_get_actionset_id",
                    "help": "steam_controller_get_actionset_id(actionSetName) : Assigns and returns ActionSet ID for given name, -1 if actionset is not found",
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
                    "help": "steam_controller_get_actionset(controller) : Returns action set ID (generated by steam_controller_get_actionset_id), as per GetCurrentActionSet",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_controller_get_actionset",
                    "returnType": 2
                },
                {
                    "id": "9a6f59a8-0fa8-483e-81fe-6fa2d4f7ba4a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_set_actionset",
                    "help": "steam_controller_set_actionset(controller, actionset_id) : Changes controller action set, as per ActivateActionSet",
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
                    "help": "steam_controller_get_digital_id(digitalActionName)",
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
                    "help": "steam_controller_get_digital_value(controller, digital_id) : Retreives digital action state (true/false)",
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
                    "help": "steam_controller_get_digital_status(controller, digital_id) : Returns whether the given digital action is currently active (true/false)",
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
                    "help": "steam_controller_get_analog_id(analogActionName)",
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
                    "help": "steam_user_set_played_with(id_high, id_low) : Can be called on lobby session start, adds the user to \"recently played with\" list.",
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
                    "help": "steam_activate_overlay_raw(overlay_code) : Activates an overlay by it's raw Steam API name.",
                    "hidden": false,
                    "kind": 1,
                    "name": "steam_activate_overlay_raw",
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
                    "help": "int64_from_string_high(cstring)",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "int64_from_string_low(cstring)",
                    "hidden": false,
                    "kind": 1,
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
                    "help": "int64_combine_string(high, low)",
                    "hidden": false,
                    "kind": 1,
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
                }
            ],
            "init": "steam_net_init_cpp_pre",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\Steamworks.gml.dylib",
            "uncompress": false
        },
        {
            "id": "289e7f16-e055-4db2-bdfa-8c659f8ecacb",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 105554172285166,
            "filename": "Steamworks.gml.gml",
            "final": "",
            "functions": [
                {
                    "id": "a4815b7d-146f-42dd-9139-189430fc50d8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_id_create",
                    "help": "steam_id_create(high, low)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_create",
                    "returnType": 2
                },
                {
                    "id": "efda7de2-5fa2-4506-9135-3d9fe254c358",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_id_get_high",
                    "help": "steam_id_get_high(steam_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_get_high",
                    "returnType": 2
                },
                {
                    "id": "29e05b37-8802-4ff6-bb9b-09612f101e06",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_id_get_low",
                    "help": "steam_id_get_low(steam_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_get_low",
                    "returnType": 2
                },
                {
                    "id": "015066d9-86c9-44f9-a472-969667267ea6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_id_equals",
                    "help": "steam_id_equals(id1, id2)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_equals",
                    "returnType": 2
                },
                {
                    "id": "b548cdba-918a-43a2-bbb5-62152b280cc8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_id_from_int64",
                    "help": "steam_id_from_int64(value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_from_int64",
                    "returnType": 2
                },
                {
                    "id": "e7954caf-d513-41f9-b081-0ed83d610827",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_id_to_int64",
                    "help": "steam_id_to_int64(steam_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_id_to_int64",
                    "returnType": 2
                },
                {
                    "id": "d3416a56-a029-4654-960f-a75f7dded634",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_check_version",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_check_version",
                    "returnType": 2
                },
                {
                    "id": "6a098289-5aca-42ba-b894-e8dfa9be1990",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_accept_p2p_session",
                    "help": "steam_net_accept_p2p_session(user_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_accept_p2p_session",
                    "returnType": 2
                },
                {
                    "id": "0650f0ae-5337-40cc-bcda-4009fdeffc1b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_close_p2p_session",
                    "help": "steam_net_close_p2p_session(user_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_close_p2p_session",
                    "returnType": 2
                },
                {
                    "id": "e37c19e5-2145-4ea4-b264-8252548a734c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_packet_get_sender_id",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_packet_get_sender_id",
                    "returnType": 2
                },
                {
                    "id": "3b2570b1-32c2-4c18-88d2-4a703479cea5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_net_packet_get_data",
                    "help": "steam_net_packet_get_data(buffer)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_packet_get_data",
                    "returnType": 2
                },
                {
                    "id": "fda35f99-434d-4c41-b82f-ef0ed9cb08b5",
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
                    "help": "steam_net_packet_send(steam_id, buffer, size, type)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_net_packet_send",
                    "returnType": 2
                },
                {
                    "id": "56c35fe0-3050-4d3b-9089-94ee9f39dbb2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_join_id",
                    "help": "steam_lobby_join_id(steam_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_join_id",
                    "returnType": 2
                },
                {
                    "id": "3bb2420c-9e94-45be-930a-ac2e06c35bb0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_lobby_get_owner_id",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_lobby_get_owner_id",
                    "returnType": 2
                },
                {
                    "id": "76aaedc4-98bd-4fef-af12-ff15274cba11",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_get_member_id",
                    "help": "steam_lobby_get_member_id(index)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_get_member_id",
                    "returnType": 2
                },
                {
                    "id": "2fff70de-e6a2-44a4-86ed-86783794bbec",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_id",
                    "help": "steam_lobby_list_get_lobby_id(index)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_list_get_lobby_id",
                    "returnType": 2
                },
                {
                    "id": "4e9ed466-624b-4c21-a13e-6ff843ac2a8a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_owner_id",
                    "help": "steam_lobby_list_get_lobby_owner_id(index)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_list_get_lobby_owner_id",
                    "returnType": 2
                },
                {
                    "id": "69796422-6E60-B56B-351F-CB7F4953BB64",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_lobby_list_get_lobby_member_id",
                    "help": "steam_lobby_list_get_lobby_member_id(lobby_index, member_index)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_lobby_list_get_lobby_member_id",
                    "returnType": 2
                },
                {
                    "id": "57960a57-f84f-4fd5-83bb-12d5a121b3b5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "steam_gml_prepare_buffer",
                    "help": "steam_gml_prepare_buffer(min_size)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_gml_prepare_buffer",
                    "returnType": 2
                },
                {
                    "id": "ebb45175-94a3-4af7-9095-de5319219405",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_max_count",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_max_count",
                    "returnType": 2
                },
                {
                    "id": "f14f0172-d9d1-4ee9-ad69-5f875e219e19",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_ids",
                    "help": "steam_controller_get_ids(?out:array<index>)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_ids",
                    "returnType": 2
                },
                {
                    "id": "d8d10a43-df76-4819-ba69-48e957f6fede",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_max_origins",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_controller_get_max_origins",
                    "returnType": 2
                },
                {
                    "id": "a6b8c868-4762-4955-a963-e09759ff330c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_origins_raw",
                    "help": "steam_controller_get_origins_raw(found, buffer, out)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_origins_raw",
                    "returnType": 2
                },
                {
                    "id": "f3c68ab6-e8ae-4c48-b125-51e0c950cd75",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_digital_origins",
                    "help": "steam_controller_get_digital_origins(controller, actionset_id, digital_id, ?out:array<origin>)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_digital_origins",
                    "returnType": 2
                },
                {
                    "id": "F2E98A60-268B-5214-1A10-FED82FBB2886",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "steam_controller_get_analog_origins",
                    "help": "steam_controller_get_analog_origins(controller, actionset_id, analog_id, ?out:array<origin>)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_analog_origins",
                    "returnType": 2
                },
                {
                    "id": "aa7064d5-20fa-4b24-882f-c4d463fee4c9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_x",
                    "help": "steam_controller_get_analog_x(controller, analog_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_analog_x",
                    "returnType": 2
                },
                {
                    "id": "125ced35-eac7-4a94-bc0a-bbae45006cde",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_y",
                    "help": "steam_controller_get_analog_y(controller, analog_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_analog_y",
                    "returnType": 2
                },
                {
                    "id": "21886ac9-ddfe-4de8-ba61-c8aa5add0429",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_mode",
                    "help": "steam_controller_get_analog_mode(controller, analog_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_analog_mode",
                    "returnType": 2
                },
                {
                    "id": "51e57118-c598-41b1-b5cb-a56c5edb21dd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "steam_controller_get_analog_status",
                    "help": "steam_controller_get_analog_status(controller, analog_id)",
                    "hidden": false,
                    "kind": 2,
                    "name": "steam_controller_get_analog_status",
                    "returnType": 2
                },
                {
                    "id": "d9fd7ec9-f985-4627-9127-2522921c9abc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_gml_init_gml",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_gml_init_gml",
                    "returnType": 2
                },
                {
                    "id": "d5e7e2d5-fc04-4cee-94c7-0b40f998da14",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_is_available",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_is_available",
                    "returnType": 2
                },
                {
                    "id": "70dc344d-2b72-4d28-b642-86f86392dfae",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "steam_net_update",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "steam_net_update",
                    "returnType": 2
                },
                {
                    "id": "791E07D6-55EA-4C33-F15E-E057C3F8FB81",
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
                
            ],
            "origname": "Steamworks.gml.gml",
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