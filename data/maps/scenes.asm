MACRO scene_var
; db group, map
; dw address
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var BATTLE_TOWER_1F,                        wBattleFacilitySceneID
	scene_var BATTLE_TOWER_BATTLE_ROOM,               wAlways0SceneID
	scene_var BATTLE_TOWER_ELEVATOR,                  wAlways0SceneID
	scene_var BATTLE_TOWER_HALLWAY,                   wAlways0SceneID
	scene_var BATTLE_TOWER_OUTSIDE,                   wBattleTowerOutsideSceneID
	scene_var CAITLINS_HOUSE,                         wCaitlinsHouseSceneID
	scene_var COLOSSEUM,                              wColosseumSceneID
	scene_var GIANT_CHASM_1F,                         wGiantChasm1FSceneID
	scene_var HALL_OF_FAME,                           wHallOfFameSceneID
	scene_var HUMILAU_CITY,                           wHumilauCitySceneID
	scene_var LENTIMAS_AIRPORT,                       wAlways0SceneID
	scene_var LENTIMAS_GYM,                           wAlways0SceneID
	scene_var LENTIMAS_TOWN,                          wAlways0SceneID
	scene_var LOSTLORN_FOREST,                        wLostlornForestSceneID
	scene_var NIMBASA_PARK_OUTSIDE,                   wNimbasaParkOutsideSceneID
	scene_var NIMBASA_SUBWAY,                         wAlways0SceneID
	scene_var PLAYERS_HOUSE_1F,                       wPlayersHouse1FSceneID
	scene_var POKECENTER_2F,                          wPokecenter2FSceneID
	scene_var ROUTE_5_DRAWBRIDGE_GATE,                wRoute5DrawbridgeGateSceneID
	scene_var ROUTE_12,                               wRoute12SceneID
	scene_var ROUTE_12_VILLAGE_BRIDGE_GATE,           wRoute12VillageBridgeGateSceneID
	scene_var STRANGE_HOUSE_1F,                       wStrangeHouse1FSceneID
	scene_var STRANGE_HOUSE_ROOMS,                    wStrangeHouseRoomsSceneID
	scene_var TRADE_CENTER,                           wTradeCenterSceneID
	scene_var UNDELLA_TOWN,                           wUndellaTownSceneID
	db -1
