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
	scene_var BRUNOS_ROOM,                            wBrunosRoomSceneID
	scene_var COLOSSEUM,                              wColosseumSceneID
	scene_var ELMS_LAB,                               wElmsLabSceneID
	scene_var HALL_OF_FAME,                           wHallOfFameSceneID
	scene_var KARENS_ROOM,                            wKarensRoomSceneID
	scene_var KOGAS_ROOM,                             wKogasRoomSceneID
	scene_var LANCES_ROOM,                            wLancesRoomSceneID
	scene_var NEW_BARK_TOWN,                          wNewBarkTownSceneID
	scene_var PLAYERS_HOUSE_1F,                       wPlayersHouse1FSceneID
	scene_var POKECENTER_2F,                          wPokecenter2FSceneID
	scene_var TRADE_CENTER,                           wTradeCenterSceneID
	scene_var WILLS_ROOM,                             wWillsRoomSceneID
	db -1
