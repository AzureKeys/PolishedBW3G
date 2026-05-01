SECTION "Tileset Headers", ROMX

MACRO tileset
	dbas \1Meta, \1Coll, \1Attr
	dba \1GFX0, \1GFX1, \1GFX2
	fardw \1Anim
ENDM

Tilesets::
; entries correspond to TILESET_* constants (see constants/tileset_constants.asm)
	table_width TILESET_LENGTH
	farbank _AnimateTileset
	tileset TilesetJohto1
	tileset TilesetJohto2
	tileset TilesetJohto3
	tileset TilesetJohto4
	tileset TilesetHouse1
	tileset TilesetHouse3
	tileset TilesetPokeCenter
	tileset TilesetMart
	tileset TilesetGate
	tileset TilesetMagnetTrain
	tileset TilesetChampionsRoom
	tileset TilesetPort
	tileset TilesetLab
	tileset TilesetFacility
	tileset TilesetGameCorner
	tileset TilesetBattleTower
	tileset TilesetUnderground
	tileset TilesetCave
	tileset TilesetCaveRuins
	tileset TilesetIcePath
	tileset TilesetBattleFactory
	tileset TilesetEliteFourRoom
	tileset TilesetEliteFourRoom2
	tileset TilesetLentimas
	tileset TilesetForest
	tileset TilesetNimbasa
	tileset TilesetPark
	tileset TilesetDesert
	tileset TilesetCastelia
	tileset TilesetVirbank
	tileset TilesetComplex
	tileset TilesetBridge
	tileset TilesetVillageBridge
	tileset TilesetNacrene
	tileset TilesetStriaton
	tileset TilesetDreamyard
	tileset TilesetPWTOutside
	tileset TilesetPWTInside
	tileset TilesetAirport
	tileset TilesetIcirrus
	tileset TilesetDragonspiral
	tileset TilesetDriftveil
	tileset TilesetMistralton
	tileset TilesetOpelucid
	tileset TilesetPkmnLeague
	tileset TilesetUnovaBeach
	tileset TilesetUnovaWest
	tileset TilesetUnovaEast
	tileset TilesetUnovaNorth
	tileset TilesetHiddenGrotto
	assert_table_length NUM_TILESETS


SECTION "Tileset Graphics - unova common vram0", ROMX

TilesetUnovaBeachGFX0::
TilesetUnovaWestGFX0:: 
TilesetUnovaEastGFX0:: 
TilesetUnovaNorthGFX0:: INCBIN "gfx/tilesets/unova_common.2bpp.lzp"


SECTION "Tileset Graphics - unova beach vram1", ROMX

TilesetUnovaBeachGFX1:: INCBIN "gfx/tilesets/unova_beach.unova_common.2bpp.vram0.lzp"


SECTION "Tileset Graphics - unova beach vram2", ROMX

TilesetUnovaBeachGFX2:: INCBIN "gfx/tilesets/unova_beach.unova_common.2bpp.vram1.lzp"


SECTION "Tileset Data - unova beach", ROMX

TilesetUnovaBeachMeta:: INCBIN "data/tilesets/unova_beach_metatiles.bin.lzp"
TilesetUnovaBeachAttr:: INCBIN "data/tilesets/unova_beach_attributes.bin.lzp"
TilesetUnovaBeachColl:: INCBIN "data/tilesets/unova_beach_collision.bin.lzp"


SECTION "Tileset Graphics - unova west vram1", ROMX

TilesetUnovaWestGFX1:: INCBIN "gfx/tilesets/unova_west.unova_common.2bpp.vram0.lzp"


SECTION "Tileset Graphics - unova west vram2", ROMX

TilesetUnovaWestGFX2:: INCBIN "gfx/tilesets/unova_west.unova_common.2bpp.vram1.lzp"


SECTION "Tileset Data - unova west", ROMX

TilesetUnovaWestMeta:: INCBIN "data/tilesets/unova_west_metatiles.bin.lzp"
TilesetUnovaWestAttr:: INCBIN "data/tilesets/unova_west_attributes.bin.lzp"
TilesetUnovaWestColl:: INCBIN "data/tilesets/unova_west_collision.bin.lzp"


SECTION "Tileset Graphics - unova east vram1", ROMX

TilesetUnovaEastGFX1:: INCBIN "gfx/tilesets/unova_east.unova_common.2bpp.vram0.lzp"


SECTION "Tileset Graphics - unova east vram2", ROMX

TilesetUnovaEastGFX2:: INCBIN "gfx/tilesets/unova_east.unova_common.2bpp.vram1.lzp"


SECTION "Tileset Data - unova east", ROMX

TilesetUnovaEastMeta:: INCBIN "data/tilesets/unova_east_metatiles.bin.lzp"
TilesetUnovaEastAttr:: INCBIN "data/tilesets/unova_east_attributes.bin.lzp"
TilesetUnovaEastColl:: INCBIN "data/tilesets/unova_east_collision.bin.lzp"


SECTION "Tileset Graphics - unova north vram1", ROMX

TilesetUnovaNorthGFX1:: INCBIN "gfx/tilesets/unova_north.unova_common.2bpp.vram0.lzp"


SECTION "Tileset Graphics - unova north vram2", ROMX

TilesetUnovaNorthGFX2:: INCBIN "gfx/tilesets/unova_north.unova_common.2bpp.vram1.lzp"


SECTION "Tileset Data - unova north", ROMX

TilesetUnovaNorthMeta:: INCBIN "data/tilesets/unova_north_metatiles.bin.lzp"
TilesetUnovaNorthAttr:: INCBIN "data/tilesets/unova_north_attributes.bin.lzp"
TilesetUnovaNorthColl:: INCBIN "data/tilesets/unova_north_collision.bin.lzp"


SECTION "Tileset Graphics - driftveil vram0", ROMX

TilesetDriftveilGFX0:: INCBIN "gfx/tilesets/driftveil_common.2bpp.lzp"


SECTION "Tileset Graphics - driftveil vram1", ROMX

TilesetDriftveilGFX1:: INCBIN "gfx/tilesets/driftveil.driftveil_common.2bpp.vram0.lzp"


SECTION "Tileset Graphics - driftveil vram2", ROMX

TilesetDriftveilGFX2:: INCBIN "gfx/tilesets/driftveil.driftveil_common.2bpp.vram1.lzp"


SECTION "Tileset Data - driftveil", ROMX

TilesetDriftveilMeta:: INCBIN "data/tilesets/driftveil_metatiles.bin.lzp"
TilesetDriftveilAttr:: INCBIN "data/tilesets/driftveil_attributes.bin.lzp"
TilesetDriftveilColl:: INCBIN "data/tilesets/driftveil_collision.bin.lzp"


SECTION "Tileset Graphics - mistralton vram0", ROMX

TilesetMistraltonGFX0:: INCBIN "gfx/tilesets/mistralton_common.2bpp.lzp"


SECTION "Tileset Graphics - mistralton vram1", ROMX

TilesetMistraltonGFX1:: INCBIN "gfx/tilesets/mistralton.mistralton_common.2bpp.vram0.lzp"


SECTION "Tileset Graphics - mistralton vram2", ROMX

TilesetMistraltonGFX2:: INCBIN "gfx/tilesets/mistralton.mistralton_common.2bpp.vram1.lzp"


SECTION "Tileset Data - mistralton", ROMX

TilesetMistraltonMeta:: INCBIN "data/tilesets/mistralton_metatiles.bin.lzp"
TilesetMistraltonAttr:: INCBIN "data/tilesets/mistralton_attributes.bin.lzp"
TilesetMistraltonColl:: INCBIN "data/tilesets/mistralton_collision.bin.lzp"


SECTION "Tileset Graphics - johto common vram0", ROMX

TilesetJohto1GFX0::
TilesetJohto2GFX0::
TilesetJohto3GFX0::
TilesetJohto4GFX0:: INCBIN "gfx/tilesets/johto_common.2bpp.lzp"


SECTION "Tileset Graphics - johto traditional vram1", ROMX

TilesetJohto1GFX1:: INCBIN "gfx/tilesets/johto_traditional.johto_common.2bpp.vram0.lzp"


SECTION "Tileset Graphics - johto traditional vram2", ROMX

TilesetJohto1GFX2:: INCBIN "gfx/tilesets/johto_traditional.johto_common.2bpp.vram1.lzp"


SECTION "Tileset Data - johto traditional", ROMX

TilesetJohto1Meta:: INCBIN "data/tilesets/johto_traditional_metatiles.bin.lzp"
TilesetJohto1Attr:: INCBIN "data/tilesets/johto_traditional_attributes.bin.lzp"
TilesetJohto1Coll:: INCBIN "data/tilesets/johto_traditional_collision.bin.lzp"


SECTION "Tileset Graphics - johto modern vram1", ROMX

TilesetJohto2GFX1:: INCBIN "gfx/tilesets/johto_modern.johto_common.2bpp.vram0.lzp"


SECTION "Tileset Graphics - johto modern vram2", ROMX

TilesetJohto2GFX2:: INCBIN "gfx/tilesets/johto_modern.johto_common.2bpp.vram1.lzp"


SECTION "Tileset Data - johto modern", ROMX

TilesetJohto2Meta:: INCBIN "data/tilesets/johto_modern_metatiles.bin.lzp"
TilesetJohto2Attr:: INCBIN "data/tilesets/johto_modern_attributes.bin.lzp"
TilesetJohto2Coll:: INCBIN "data/tilesets/johto_modern_collision.bin.lzp"


SECTION "Tileset Data - johto coast", ROMX

TilesetJohtoCoastMeta:: INCBIN "data/tilesets/johto_coast_metatiles.bin.lzp"
TilesetJohtoCoastAttr:: INCBIN "data/tilesets/johto_coast_attributes.bin.lzp"
TilesetJohtoCoastColl:: INCBIN "data/tilesets/johto_coast_collision.bin.lzp"


SECTION "Tileset Graphics - johto outlands vram1", ROMX

TilesetJohto3GFX1:: INCBIN "gfx/tilesets/johto_outlands.johto_common.2bpp.vram0.lzp"


SECTION "Tileset Data - johto outlands", ROMX

TilesetJohto3Meta:: INCBIN "data/tilesets/johto_outlands_metatiles.bin.lzp"
TilesetJohto3Attr:: INCBIN "data/tilesets/johto_outlands_attributes.bin.lzp"
TilesetJohto3Coll:: INCBIN "data/tilesets/johto_outlands_collision.bin.lzp"


SECTION "Tileset Graphics - johto ancient vram1", ROMX

TilesetJohtoAncientGFX1:: INCBIN "gfx/tilesets/johto_ancient.johto_common.2bpp.vram0.lzp"


SECTION "Tileset Data - johto ancient", ROMX

TilesetJohtoAncientMeta:: INCBIN "data/tilesets/johto_ancient_metatiles.bin.lzp"
TilesetJohtoAncientAttr:: INCBIN "data/tilesets/johto_ancient_attributes.bin.lzp"
TilesetJohtoAncientColl:: INCBIN "data/tilesets/johto_ancient_collision.bin.lzp"


SECTION "Tileset Graphics - battle tower outside vram1", ROMX

TilesetJohto4GFX1:: INCBIN "gfx/tilesets/battle_tower_outside.johto_common.2bpp.lzp"


SECTION "Tileset Data - battle tower outside", ROMX

TilesetJohto4Meta:: INCBIN "data/tilesets/battle_tower_outside_metatiles.bin.lzp"
TilesetJohto4Attr:: INCBIN "data/tilesets/battle_tower_outside_attributes.bin.lzp"
TilesetJohto4Coll:: INCBIN "data/tilesets/battle_tower_outside_collision.bin.lzp"


SECTION "Tileset Graphics - unova house vram0", ROMX

TilesetHouse1GFX0:: INCBIN "gfx/tilesets/unova_house.2bpp.vram0.lzp"


SECTION "Tileset Graphics - unova house vram1", ROMX

TilesetHouse1GFX1:: INCBIN "gfx/tilesets/unova_house.2bpp.vram1.lzp"


SECTION "Tileset Data - unova house", ROMX

TilesetHouse1Meta:: INCBIN "data/tilesets/unova_house_metatiles.bin.lzp"
TilesetHouse1Attr:: INCBIN "data/tilesets/unova_house_attributes.bin.lzp"
TilesetHouse1Coll:: INCBIN "data/tilesets/unova_house_collision.bin.lzp"


SECTION "Tileset Graphics - traditional house vram0", ROMX

TilesetHouse3GFX0:: INCBIN "gfx/tilesets/traditional_house.2bpp.vram0.lzp"


SECTION "Tileset Graphics - traditional house vram1", ROMX

TilesetHouse3GFX1:: INCBIN "gfx/tilesets/traditional_house.2bpp.vram1.lzp"


SECTION "Tileset Data - traditional house", ROMX

TilesetHouse3Meta:: INCBIN "data/tilesets/traditional_house_metatiles.bin.lzp"
TilesetHouse3Attr:: INCBIN "data/tilesets/traditional_house_attributes.bin.lzp"
TilesetHouse3Coll:: INCBIN "data/tilesets/traditional_house_collision.bin.lzp"


SECTION "Tileset Graphics - pokecenter vram0", ROMX

TilesetPokeCenterGFX0:: INCBIN "gfx/tilesets/pokecenter.2bpp.vram0.lzp"


SECTION "Tileset Graphics - pokecenter vram1", ROMX

TilesetPokeCenterGFX1:: INCBIN "gfx/tilesets/pokecenter.2bpp.vram1.lzp"


SECTION "Tileset Data - pokecenter", ROMX

TilesetPokeCenterMeta:: INCBIN "data/tilesets/pokecenter_metatiles.bin.lzp"
TilesetPokeCenterAttr:: INCBIN "data/tilesets/pokecenter_attributes.bin.lzp"
TilesetPokeCenterColl:: INCBIN "data/tilesets/pokecenter_collision.bin.lzp"


SECTION "Tileset Graphics - mart vram0", ROMX

TilesetMartGFX0:: INCBIN "gfx/tilesets/mart.2bpp.vram0.lzp"


SECTION "Tileset Graphics - mart vram1", ROMX

TilesetMartGFX1:: INCBIN "gfx/tilesets/mart.2bpp.vram1.lzp"


SECTION "Tileset Data - mart", ROMX

TilesetMartMeta:: INCBIN "data/tilesets/mart_metatiles.bin.lzp"
TilesetMartAttr:: INCBIN "data/tilesets/mart_attributes.bin.lzp"
TilesetMartColl:: INCBIN "data/tilesets/mart_collision.bin.lzp"


SECTION "Tileset Graphics - gate vram0", ROMX

TilesetGateGFX0:: INCBIN "gfx/tilesets/gate.2bpp.vram0.lzp"


SECTION "Tileset Graphics - gate vram1", ROMX

TilesetGateGFX1:: INCBIN "gfx/tilesets/gate.2bpp.vram1.lzp"


SECTION "Tileset Data - gate", ROMX

TilesetGateMeta:: INCBIN "data/tilesets/gate_metatiles.bin.lzp"
TilesetGateAttr:: INCBIN "data/tilesets/gate_attributes.bin.lzp"
TilesetGateColl:: INCBIN "data/tilesets/gate_collision.bin.lzp"


SECTION "Tileset Graphics - magnet train vram0", ROMX

TilesetMagnetTrainGFX0:: INCBIN "gfx/tilesets/magnet_train.2bpp.vram0.lzp"


SECTION "Tileset Graphics - magnet train vram1", ROMX

TilesetMagnetTrainGFX1:: INCBIN "gfx/tilesets/magnet_train.2bpp.vram1.lzp"


SECTION "Tileset Data - magnet train", ROMX

TilesetMagnetTrainMeta:: INCBIN "data/tilesets/magnet_train_metatiles.bin.lzp"
TilesetMagnetTrainAttr:: INCBIN "data/tilesets/magnet_train_attributes.bin.lzp"
TilesetMagnetTrainColl:: INCBIN "data/tilesets/magnet_train_collision.bin.lzp"


SECTION "Tileset Graphics - champions room vram0", ROMX

TilesetChampionsRoomGFX0:: INCBIN "gfx/tilesets/champions_room.2bpp.vram0.lzp"


SECTION "Tileset Graphics - champions room vram1", ROMX

TilesetChampionsRoomGFX1:: INCBIN "gfx/tilesets/champions_room.2bpp.vram1.lzp"


SECTION "Tileset Data - champions room", ROMX

TilesetChampionsRoomMeta:: INCBIN "data/tilesets/champions_room_metatiles.bin.lzp"
TilesetChampionsRoomAttr:: INCBIN "data/tilesets/champions_room_attributes.bin.lzp"
TilesetChampionsRoomColl:: INCBIN "data/tilesets/champions_room_collision.bin.lzp"


SECTION "Tileset Graphics - elite four room vram0", ROMX

TilesetEliteFourRoomGFX0:: 
TilesetEliteFourRoom2GFX0:: INCBIN "gfx/tilesets/elite_four_room.2bpp.vram0.lzp"


SECTION "Tileset Graphics - elite four room vram1", ROMX

TilesetEliteFourRoomGFX1:: 
TilesetEliteFourRoom2GFX1:: INCBIN "gfx/tilesets/elite_four_room.2bpp.vram1.lzp"


SECTION "Tileset Data - elite four room", ROMX

TilesetEliteFourRoomMeta:: 
TilesetEliteFourRoom2Meta:: INCBIN "data/tilesets/elite_four_room_metatiles.bin.lzp"
TilesetEliteFourRoomAttr:: 
TilesetEliteFourRoom2Attr:: INCBIN "data/tilesets/elite_four_room_attributes.bin.lzp"
TilesetEliteFourRoomColl:: 
TilesetEliteFourRoom2Coll:: INCBIN "data/tilesets/elite_four_room_collision.bin.lzp"


SECTION "Tileset Graphics - port vram0", ROMX

TilesetPortGFX0:: INCBIN "gfx/tilesets/port.2bpp.vram0.lzp"


SECTION "Tileset Graphics - port vram1", ROMX

TilesetPortGFX1:: INCBIN "gfx/tilesets/port.2bpp.vram1.lzp"


SECTION "Tileset Data - port", ROMX

TilesetPortMeta:: INCBIN "data/tilesets/port_metatiles.bin.lzp"
TilesetPortAttr:: INCBIN "data/tilesets/port_attributes.bin.lzp"
TilesetPortColl:: INCBIN "data/tilesets/port_collision.bin.lzp"


SECTION "Tileset Graphics - lab vram0", ROMX

TilesetLabGFX0:: INCBIN "gfx/tilesets/lab.2bpp.vram0.lzp"


SECTION "Tileset Graphics - lab vram1", ROMX

TilesetLabGFX1:: INCBIN "gfx/tilesets/lab.2bpp.vram1.lzp"


SECTION "Tileset Data - lab", ROMX

TilesetLabMeta:: INCBIN "data/tilesets/lab_metatiles.bin.lzp"
TilesetLabAttr:: INCBIN "data/tilesets/lab_attributes.bin.lzp"
TilesetLabColl:: INCBIN "data/tilesets/lab_collision.bin.lzp"


SECTION "Tileset Graphics - facility vram0", ROMX

TilesetFacilityGFX0:: INCBIN "gfx/tilesets/facility.2bpp.vram0.lzp"


SECTION "Tileset Graphics - facility vram1", ROMX

TilesetFacilityGFX1:: INCBIN "gfx/tilesets/facility.2bpp.vram1.lzp"


SECTION "Tileset Data - facility", ROMX

TilesetFacilityMeta:: INCBIN "data/tilesets/facility_metatiles.bin.lzp"
TilesetFacilityAttr:: INCBIN "data/tilesets/facility_attributes.bin.lzp"
TilesetFacilityColl:: INCBIN "data/tilesets/facility_collision.bin.lzp"


SECTION "Tileset Graphics - game corner vram0", ROMX

TilesetGameCornerGFX0:: INCBIN "gfx/tilesets/game_corner.2bpp.vram0.lzp"


SECTION "Tileset Graphics - game corner vram1", ROMX

TilesetGameCornerGFX1:: INCBIN "gfx/tilesets/game_corner.2bpp.vram1.lzp"


SECTION "Tileset Data - game corner", ROMX

TilesetGameCornerMeta:: INCBIN "data/tilesets/game_corner_metatiles.bin.lzp"
TilesetGameCornerAttr:: INCBIN "data/tilesets/game_corner_attributes.bin.lzp"
TilesetGameCornerColl:: INCBIN "data/tilesets/game_corner_collision.bin.lzp"


SECTION "Tileset Graphics - battle tower inside vram0", ROMX

TilesetBattleTowerGFX0:: INCBIN "gfx/tilesets/battle_tower_inside.2bpp.vram0.lzp"


SECTION "Tileset Graphics - battle tower inside vram1", ROMX

TilesetBattleTowerGFX1:: INCBIN "gfx/tilesets/battle_tower_inside.2bpp.vram1.lzp"


SECTION "Tileset Data - battle tower inside", ROMX

TilesetBattleTowerMeta:: INCBIN "data/tilesets/battle_tower_inside_metatiles.bin.lzp"
TilesetBattleTowerAttr:: INCBIN "data/tilesets/battle_tower_inside_attributes.bin.lzp"
TilesetBattleTowerColl:: INCBIN "data/tilesets/battle_tower_inside_collision.bin.lzp"


SECTION "Tileset Graphics - underground vram0", ROMX

TilesetUndergroundGFX0:: INCBIN "gfx/tilesets/underground.2bpp.vram0.lzp"


SECTION "Tileset Graphics - underground vram1", ROMX

TilesetUndergroundGFX1:: INCBIN "gfx/tilesets/underground.2bpp.vram1.lzp"



SECTION "Tileset Data - underground", ROMX

TilesetUndergroundMeta:: INCBIN "data/tilesets/underground_metatiles.bin.lzp"
TilesetUndergroundAttr:: INCBIN "data/tilesets/underground_attributes.bin.lzp"
TilesetUndergroundColl:: INCBIN "data/tilesets/underground_collision.bin.lzp"



SECTION "Tileset Graphics - cave vram0", ROMX

TilesetCaveGFX0:: 
TilesetCaveRuinsGFX0:: INCBIN "gfx/tilesets/cave.2bpp.vram0.lzp"


SECTION "Tileset Graphics - cave vram1", ROMX

TilesetCaveGFX1:: 
TilesetCaveRuinsGFX1:: INCBIN "gfx/tilesets/cave.2bpp.vram1.lzp"


SECTION "Tileset Data - cave", ROMX

TilesetCaveMeta:: INCBIN "data/tilesets/cave_metatiles.bin.lzp"
TilesetCaveAttr:: INCBIN "data/tilesets/cave_attributes.bin.lzp"
TilesetCaveColl:: INCBIN "data/tilesets/cave_collision.bin.lzp"


SECTION "Tileset Data - cave ruins", ROMX

TilesetCaveRuinsMeta:: INCBIN "data/tilesets/cave_ruins_metatiles.bin.lzp"
TilesetCaveRuinsAttr:: INCBIN "data/tilesets/cave_ruins_attributes.bin.lzp"
TilesetCaveRuinsColl:: INCBIN "data/tilesets/cave_ruins_collision.bin.lzp"


SECTION "Tileset Graphics - ice path vram0", ROMX

TilesetIcePathGFX0:: INCBIN "gfx/tilesets/ice_path.2bpp.vram0.lzp"


SECTION "Tileset Graphics - ice path vram1", ROMX

TilesetIcePathGFX1:: INCBIN "gfx/tilesets/ice_path.2bpp.vram1.lzp"


SECTION "Tileset Data - ice path", ROMX

TilesetIcePathMeta:: INCBIN "data/tilesets/ice_path_metatiles.bin.lzp"
TilesetIcePathAttr:: INCBIN "data/tilesets/ice_path_attributes.bin.lzp"
TilesetIcePathColl:: INCBIN "data/tilesets/ice_path_collision.bin.lzp"


SECTION "Tileset Graphics - battle factory vram0", ROMX

TilesetBattleFactoryGFX0:: INCBIN "gfx/tilesets/battle_factory.2bpp.vram0.lzp"


SECTION "Tileset Graphics - battle factory vram1", ROMX

TilesetBattleFactoryGFX1:: INCBIN "gfx/tilesets/battle_factory.2bpp.vram1.lzp"


SECTION "Tileset Data - battle factory", ROMX

TilesetBattleFactoryMeta:: INCBIN "data/tilesets/battle_factory_metatiles.bin.lzp"
TilesetBattleFactoryAttr:: INCBIN "data/tilesets/battle_factory_attributes.bin.lzp"
TilesetBattleFactoryColl:: INCBIN "data/tilesets/battle_factory_collision.bin.lzp"


SECTION "Tileset Graphics - lentimas vram0", ROMX

TilesetLentimasGFX0:: INCBIN "gfx/tilesets/lentimas.2bpp.vram0.lzp"


SECTION "Tileset Graphics - lentimas vram1", ROMX

TilesetLentimasGFX1:: INCBIN "gfx/tilesets/lentimas.2bpp.vram1.lzp"


SECTION "Tileset Data - lentimas", ROMX

TilesetLentimasMeta:: INCBIN "data/tilesets/lentimas_metatiles.bin.lzp"
TilesetLentimasAttr:: INCBIN "data/tilesets/lentimas_attributes.bin.lzp"
TilesetLentimasColl:: INCBIN "data/tilesets/lentimas_collision.bin.lzp"


SECTION "Tileset Graphics - forest vram0", ROMX

TilesetForestGFX0:: INCBIN "gfx/tilesets/forest.2bpp.vram0.lzp"


SECTION "Tileset Graphics - forest vram1", ROMX

TilesetForestGFX1:: INCBIN "gfx/tilesets/forest.2bpp.vram1.lzp"


SECTION "Tileset Data - forest", ROMX

TilesetForestMeta:: INCBIN "data/tilesets/forest_metatiles.bin.lzp"
TilesetForestAttr:: INCBIN "data/tilesets/forest_attributes.bin.lzp"
TilesetForestColl:: INCBIN "data/tilesets/forest_collision.bin.lzp"


SECTION "Tileset Graphics - nimbasa vram0", ROMX

TilesetNimbasaGFX0:: INCBIN "gfx/tilesets/nimbasa.2bpp.vram0.lzp"


SECTION "Tileset Graphics - nimbasa vram1", ROMX

TilesetNimbasaGFX1:: INCBIN "gfx/tilesets/nimbasa.2bpp.vram1.lzp"


SECTION "Tileset Data - nimbasa", ROMX

TilesetNimbasaMeta:: INCBIN "data/tilesets/nimbasa_metatiles.bin.lzp"
TilesetNimbasaAttr:: INCBIN "data/tilesets/nimbasa_attributes.bin.lzp"
TilesetNimbasaColl:: INCBIN "data/tilesets/nimbasa_collision.bin.lzp"


SECTION "Tileset Graphics - park vram0", ROMX

TilesetParkGFX0:: INCBIN "gfx/tilesets/park.2bpp.vram0.lzp"


SECTION "Tileset Graphics - park vram1", ROMX

TilesetParkGFX1:: INCBIN "gfx/tilesets/park.2bpp.vram1.lzp"


SECTION "Tileset Data - park", ROMX

TilesetParkMeta:: INCBIN "data/tilesets/park_metatiles.bin.lzp"
TilesetParkAttr:: INCBIN "data/tilesets/park_attributes.bin.lzp"
TilesetParkColl:: INCBIN "data/tilesets/park_collision.bin.lzp"


SECTION "Tileset Graphics - desert vram0", ROMX

TilesetDesertGFX0:: INCBIN "gfx/tilesets/desert.2bpp.vram0.lzp"


SECTION "Tileset Graphics - desert vram1", ROMX

TilesetDesertGFX1:: INCBIN "gfx/tilesets/desert.2bpp.vram1.lzp"


SECTION "Tileset Data - desert", ROMX

TilesetDesertMeta:: INCBIN "data/tilesets/desert_metatiles.bin.lzp"
TilesetDesertAttr:: INCBIN "data/tilesets/desert_attributes.bin.lzp"
TilesetDesertColl:: INCBIN "data/tilesets/desert_collision.bin.lzp"

SECTION "Tileset Graphics - castelia vram0", ROMX

TilesetCasteliaGFX0:: INCBIN "gfx/tilesets/castelia.2bpp.vram0.lzp"


SECTION "Tileset Graphics - castelia vram1", ROMX

TilesetCasteliaGFX1:: INCBIN "gfx/tilesets/castelia.2bpp.vram1.lzp"


SECTION "Tileset Data - castelia", ROMX

TilesetCasteliaMeta:: INCBIN "data/tilesets/castelia_metatiles.bin.lzp"
TilesetCasteliaAttr:: INCBIN "data/tilesets/castelia_attributes.bin.lzp"
TilesetCasteliaColl:: INCBIN "data/tilesets/castelia_collision.bin.lzp"

SECTION "Tileset Graphics - virbank vram0", ROMX

TilesetVirbankGFX0:: INCBIN "gfx/tilesets/virbank.2bpp.vram0.lzp"


SECTION "Tileset Graphics - virbank vram1", ROMX

TilesetVirbankGFX1:: INCBIN "gfx/tilesets/virbank.2bpp.vram1.lzp"


SECTION "Tileset Data - virbank", ROMX

TilesetVirbankMeta:: INCBIN "data/tilesets/virbank_metatiles.bin.lzp"
TilesetVirbankAttr:: INCBIN "data/tilesets/virbank_attributes.bin.lzp"
TilesetVirbankColl:: INCBIN "data/tilesets/virbank_collision.bin.lzp"

SECTION "Tileset Graphics - complex vram0", ROMX

TilesetComplexGFX0:: INCBIN "gfx/tilesets/complex.2bpp.vram0.lzp"


SECTION "Tileset Graphics - complex vram1", ROMX

TilesetComplexGFX1:: INCBIN "gfx/tilesets/complex.2bpp.vram1.lzp"


SECTION "Tileset Data - complex", ROMX

TilesetComplexMeta:: INCBIN "data/tilesets/complex_metatiles.bin.lzp"
TilesetComplexAttr:: INCBIN "data/tilesets/complex_attributes.bin.lzp"
TilesetComplexColl:: INCBIN "data/tilesets/complex_collision.bin.lzp"

SECTION "Tileset Graphics - bridge vram0", ROMX

TilesetBridgeGFX0:: INCBIN "gfx/tilesets/bridge.2bpp.vram0.lzp"


SECTION "Tileset Graphics - bridge vram1", ROMX

TilesetBridgeGFX1:: INCBIN "gfx/tilesets/bridge.2bpp.vram1.lzp"


SECTION "Tileset Data - bridge", ROMX

TilesetBridgeMeta:: INCBIN "data/tilesets/bridge_metatiles.bin.lzp"
TilesetBridgeAttr:: INCBIN "data/tilesets/bridge_attributes.bin.lzp"
TilesetBridgeColl:: INCBIN "data/tilesets/bridge_collision.bin.lzp"


SECTION "Tileset Graphics - village bridge vram0", ROMX

TilesetVillageBridgeGFX0:: INCBIN "gfx/tilesets/village_bridge.2bpp.vram0.lzp"


SECTION "Tileset Graphics - village bridge vram1", ROMX

TilesetVillageBridgeGFX1:: INCBIN "gfx/tilesets/village_bridge.2bpp.vram1.lzp"


SECTION "Tileset Data - village bridge", ROMX

TilesetVillageBridgeMeta:: INCBIN "data/tilesets/village_bridge_metatiles.bin.lzp"
TilesetVillageBridgeAttr:: INCBIN "data/tilesets/village_bridge_attributes.bin.lzp"
TilesetVillageBridgeColl:: INCBIN "data/tilesets/village_bridge_collision.bin.lzp"

SECTION "Tileset Graphics - nacrene vram0", ROMX

TilesetNacreneGFX0:: INCBIN "gfx/tilesets/nacrene.2bpp.vram0.lzp"


SECTION "Tileset Graphics - nacrene vram1", ROMX

TilesetNacreneGFX1:: INCBIN "gfx/tilesets/nacrene.2bpp.vram1.lzp"


SECTION "Tileset Data - nacrene", ROMX

TilesetNacreneMeta:: INCBIN "data/tilesets/nacrene_metatiles.bin.lzp"
TilesetNacreneAttr:: INCBIN "data/tilesets/nacrene_attributes.bin.lzp"
TilesetNacreneColl:: INCBIN "data/tilesets/nacrene_collision.bin.lzp"


SECTION "Tileset Graphics - opelucid vram0", ROMX

TilesetOpelucidGFX0:: INCBIN "gfx/tilesets/opelucid.2bpp.vram0.lzp"


SECTION "Tileset Graphics - opelucid vram1", ROMX

TilesetOpelucidGFX1:: INCBIN "gfx/tilesets/opelucid.2bpp.vram1.lzp"


SECTION "Tileset Data - opelucid", ROMX

TilesetOpelucidMeta:: INCBIN "data/tilesets/opelucid_metatiles.bin.lzp"
TilesetOpelucidAttr:: INCBIN "data/tilesets/opelucid_attributes.bin.lzp"
TilesetOpelucidColl:: INCBIN "data/tilesets/opelucid_collision.bin.lzp"

SECTION "Tileset Graphics - striaton vram0", ROMX

TilesetStriatonGFX0:: INCBIN "gfx/tilesets/striaton.2bpp.vram0.lzp"


SECTION "Tileset Graphics - striaton vram1", ROMX

TilesetStriatonGFX1:: INCBIN "gfx/tilesets/striaton.2bpp.vram1.lzp"


SECTION "Tileset Data - striaton", ROMX

TilesetStriatonMeta:: INCBIN "data/tilesets/striaton_metatiles.bin.lzp"
TilesetStriatonAttr:: INCBIN "data/tilesets/striaton_attributes.bin.lzp"
TilesetStriatonColl:: INCBIN "data/tilesets/striaton_collision.bin.lzp"

SECTION "Tileset Graphics - dreamyard vram0", ROMX

TilesetDreamyardGFX0:: INCBIN "gfx/tilesets/dreamyard.2bpp.vram0.lzp"


SECTION "Tileset Graphics - dreamyard vram1", ROMX

TilesetDreamyardGFX1:: INCBIN "gfx/tilesets/dreamyard.2bpp.vram1.lzp"


SECTION "Tileset Data - dreamyard", ROMX

TilesetDreamyardMeta:: INCBIN "data/tilesets/dreamyard_metatiles.bin.lzp"
TilesetDreamyardAttr:: INCBIN "data/tilesets/dreamyard_attributes.bin.lzp"
TilesetDreamyardColl:: INCBIN "data/tilesets/dreamyard_collision.bin.lzp"

SECTION "Tileset Graphics - pwt outside vram0", ROMX

TilesetPWTOutsideGFX0:: INCBIN "gfx/tilesets/pwt_outside.2bpp.vram0.lzp"


SECTION "Tileset Graphics - pwt outside vram1", ROMX

TilesetPWTOutsideGFX1:: INCBIN "gfx/tilesets/pwt_outside.2bpp.vram1.lzp"


SECTION "Tileset Data - pwt outside", ROMX

TilesetPWTOutsideMeta:: INCBIN "data/tilesets/pwt_outside_metatiles.bin.lzp"
TilesetPWTOutsideAttr:: INCBIN "data/tilesets/pwt_outside_attributes.bin.lzp"
TilesetPWTOutsideColl:: INCBIN "data/tilesets/pwt_outside_collision.bin.lzp"

SECTION "Tileset Graphics - pwt inside vram0", ROMX

TilesetPWTInsideGFX0:: INCBIN "gfx/tilesets/pwt_inside.2bpp.vram0.lzp"


SECTION "Tileset Graphics - pwt inside vram1", ROMX

TilesetPWTInsideGFX1:: INCBIN "gfx/tilesets/pwt_inside.2bpp.vram1.lzp"


SECTION "Tileset Data - pwt inside", ROMX

TilesetPWTInsideMeta:: INCBIN "data/tilesets/pwt_inside_metatiles.bin.lzp"
TilesetPWTInsideAttr:: INCBIN "data/tilesets/pwt_inside_attributes.bin.lzp"
TilesetPWTInsideColl:: INCBIN "data/tilesets/pwt_inside_collision.bin.lzp"


SECTION "Tileset Graphics - airport vram0", ROMX

TilesetAirportGFX0:: INCBIN "gfx/tilesets/airport.2bpp.vram0.lzp"


SECTION "Tileset Graphics - airport vram1", ROMX

TilesetAirportGFX1:: INCBIN "gfx/tilesets/airport.2bpp.vram1.lzp"


SECTION "Tileset Data - airport", ROMX

TilesetAirportMeta:: INCBIN "data/tilesets/airport_metatiles.bin.lzp"
TilesetAirportAttr:: INCBIN "data/tilesets/airport_attributes.bin.lzp"
TilesetAirportColl:: INCBIN "data/tilesets/airport_collision.bin.lzp"


SECTION "Tileset Graphics - icirrus vram0", ROMX

TilesetIcirrusGFX0:: INCBIN "gfx/tilesets/icirrus.2bpp.vram0.lzp"


SECTION "Tileset Graphics - icirrus vram1", ROMX

TilesetIcirrusGFX1:: INCBIN "gfx/tilesets/icirrus.2bpp.vram1.lzp"


SECTION "Tileset Data - icirrus", ROMX

TilesetIcirrusMeta:: INCBIN "data/tilesets/icirrus_metatiles.bin.lzp"
TilesetIcirrusAttr:: INCBIN "data/tilesets/icirrus_attributes.bin.lzp"
TilesetIcirrusColl:: INCBIN "data/tilesets/icirrus_collision.bin.lzp"


SECTION "Tileset Graphics - dragonspiral vram0", ROMX

TilesetDragonspiralGFX0:: INCBIN "gfx/tilesets/dragonspiral.2bpp.vram0.lzp"


SECTION "Tileset Graphics - dragonspiral vram1", ROMX

TilesetDragonspiralGFX1:: INCBIN "gfx/tilesets/dragonspiral.2bpp.vram1.lzp"


SECTION "Tileset Data - dragonspiral", ROMX

TilesetDragonspiralMeta:: INCBIN "data/tilesets/dragonspiral_metatiles.bin.lzp"
TilesetDragonspiralAttr:: INCBIN "data/tilesets/dragonspiral_attributes.bin.lzp"
TilesetDragonspiralColl:: INCBIN "data/tilesets/dragonspiral_collision.bin.lzp"


SECTION "Tileset Graphics - pkmn league vram0", ROMX

TilesetPkmnLeagueGFX0:: INCBIN "gfx/tilesets/pkmn_league.2bpp.vram0.lzp"


SECTION "Tileset Graphics - pkmn league vram1", ROMX

TilesetPkmnLeagueGFX1:: INCBIN "gfx/tilesets/pkmn_league.2bpp.vram1.lzp"


SECTION "Tileset Data - pkmn league", ROMX

TilesetPkmnLeagueMeta:: INCBIN "data/tilesets/pkmn_league_metatiles.bin.lzp"
TilesetPkmnLeagueAttr:: INCBIN "data/tilesets/pkmn_league_attributes.bin.lzp"
TilesetPkmnLeagueColl:: INCBIN "data/tilesets/pkmn_league_collision.bin.lzp"


SECTION "Tileset Graphics - hidden grotto vram0", ROMX

TilesetHiddenGrottoGFX0:: INCBIN "gfx/tilesets/hidden_grotto.2bpp.vram0.lzp"


SECTION "Tileset Graphics - hidden grotto vram1", ROMX

TilesetHiddenGrottoGFX1:: INCBIN "gfx/tilesets/hidden_grotto.2bpp.vram1.lzp"


SECTION "Tileset Data - hidden grotto", ROMX

TilesetHiddenGrottoMeta:: INCBIN "data/tilesets/hidden_grotto_metatiles.bin.lzp"
TilesetHiddenGrottoAttr:: INCBIN "data/tilesets/hidden_grotto_attributes.bin.lzp"
TilesetHiddenGrottoColl:: INCBIN "data/tilesets/hidden_grotto_collision.bin.lzp"


SECTION "Tileset Graphics - Terminator vram2", ROMX

TilesetJohto3GFX2::
TilesetJohto4GFX2::
TilesetHouse1GFX2::
TilesetHouse3GFX2::
TilesetPokeCenterGFX2::
TilesetMartGFX2::
TilesetGateGFX2::
TilesetMagnetTrainGFX2::
TilesetChampionsRoomGFX2::
TilesetEliteFourRoomGFX2::
TilesetEliteFourRoom2GFX2::
TilesetPortGFX2::
TilesetLabGFX2::
TilesetFacilityGFX2::
TilesetGameCornerGFX2::
TilesetBattleTowerGFX2::
TilesetUndergroundGFX2::
TilesetCaveGFX2::
TilesetCaveRuinsGFX2::
TilesetIcePathGFX2::
TilesetTunnelGFX2::
TilesetForestGFX2::
TilesetNimbasaGFX2::
TilesetParkGFX2::
TilesetDesertGFX2::
TilesetCasteliaGFX2::
TilesetVirbankGFX2::
TilesetComplexGFX2::
TilesetBridgeGFX2::
TilesetVillageBridgeGFX2::
TilesetNacreneGFX2::
TilesetStriatonGFX2::
TilesetDreamyardGFX2::
TilesetPWTOutsideGFX2::
TilesetPWTInsideGFX2::
TilesetAirportGFX2::
TilesetBattleFactoryGFX2::
TilesetLentimasGFX2::
TilesetOpelucidGFX2::
TilesetIcirrusGFX2::
TilesetDragonspiralGFX2::
TilesetPkmnLeagueGFX2::
TilesetHiddenGrottoGFX2::
	db $ff ; Compressed data is terminated with $ff.
