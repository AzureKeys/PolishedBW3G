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
	scene_var COLOSSEUM,                              wColosseumSceneID
	scene_var HALL_OF_FAME,                           wHallOfFameSceneID
	scene_var NEW_BARK_TOWN,                          wNewBarkTownSceneID
	scene_var PLAYERS_HOUSE_1F,                       wPlayersHouse1FSceneID
	scene_var POKECENTER_2F,                          wPokecenter2FSceneID
	scene_var TRADE_CENTER,                           wTradeCenterSceneID
	db -1
