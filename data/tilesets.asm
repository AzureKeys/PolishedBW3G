SECTION "Tileset Headers", ROMX

MACRO tileset
	dbas \1Meta, \1Coll, \1Attr
	dba \1GFX0, \1GFX1, \1GFX2
	dw \1Anim ; BANK(_AnimateTileset)
ENDM

Tilesets::
; entries correspond to TILESET_* constants (see constants/tileset_constants.asm)
	table_width TILESET_LENGTH
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
	tileset TilesetIcePath
	tileset TilesetBattleFactory
	tileset TilesetEliteFourRoom
	tileset TilesetLentimas
	tileset TilesetForest
	tileset TilesetNimbasa
	tileset TilesetPark
	tileset TilesetDesert
	tileset TilesetCastelia
	tileset TilesetVirbank
	tileset TilesetUnovaBeach
	tileset TilesetUnovaWest
	tileset TilesetHiddenGrotto
	assert_table_length NUM_TILESETS


SECTION "Tileset Graphics - unova common vram0", ROMX

TilesetUnovaBeachGFX0::
TilesetUnovaWestGFX0:: INCBIN "gfx/tilesets/unova_common.2bpp.lz"


SECTION "Tileset Graphics - unova beach vram1", ROMX

TilesetUnovaBeachGFX1:: INCBIN "gfx/tilesets/unova_beach.unova_common.2bpp.vram0.lz"


SECTION "Tileset Graphics - unova beach vram2", ROMX

TilesetUnovaBeachGFX2:: INCBIN "gfx/tilesets/unova_beach.unova_common.2bpp.vram1.lz"


SECTION "Tileset Data - unova beach", ROMX

TilesetUnovaBeachMeta:: INCBIN "data/tilesets/unova_beach_metatiles.bin.lz"
TilesetUnovaBeachAttr:: INCBIN "data/tilesets/unova_beach_attributes.bin.lz"
TilesetUnovaBeachColl:: INCBIN "data/tilesets/unova_beach_collision.bin.lz"


SECTION "Tileset Graphics - unova west vram1", ROMX

TilesetUnovaWestGFX1:: INCBIN "gfx/tilesets/unova_west.unova_common.2bpp.vram0.lz"


SECTION "Tileset Graphics - unova west vram2", ROMX

TilesetUnovaWestGFX2:: INCBIN "gfx/tilesets/unova_west.unova_common.2bpp.vram1.lz"


SECTION "Tileset Data - unova west", ROMX

TilesetUnovaWestMeta:: INCBIN "data/tilesets/unova_west_metatiles.bin.lz"
TilesetUnovaWestAttr:: INCBIN "data/tilesets/unova_west_attributes.bin.lz"
TilesetUnovaWestColl:: INCBIN "data/tilesets/unova_west_collision.bin.lz"


SECTION "Tileset Graphics - johto common vram0", ROMX

TilesetJohto1GFX0::
TilesetJohto2GFX0::
TilesetJohto3GFX0::
TilesetJohto4GFX0:: INCBIN "gfx/tilesets/johto_common.2bpp.lz"


SECTION "Tileset Graphics - johto traditional vram1", ROMX

TilesetJohto1GFX1:: INCBIN "gfx/tilesets/johto_traditional.johto_common.2bpp.vram0.lz"


SECTION "Tileset Graphics - johto traditional vram2", ROMX

TilesetJohto1GFX2:: INCBIN "gfx/tilesets/johto_traditional.johto_common.2bpp.vram1.lz"


SECTION "Tileset Data - johto traditional", ROMX

TilesetJohto1Meta:: INCBIN "data/tilesets/johto_traditional_metatiles.bin.lz"
TilesetJohto1Attr:: INCBIN "data/tilesets/johto_traditional_attributes.bin.lz"
TilesetJohto1Coll:: INCBIN "data/tilesets/johto_traditional_collision.bin.lz"


SECTION "Tileset Graphics - johto modern vram1", ROMX

TilesetJohto2GFX1:: INCBIN "gfx/tilesets/johto_modern.johto_common.2bpp.vram0.lz"


SECTION "Tileset Graphics - johto modern vram2", ROMX

TilesetJohto2GFX2:: INCBIN "gfx/tilesets/johto_modern.johto_common.2bpp.vram1.lz"


SECTION "Tileset Data - johto modern", ROMX

TilesetJohto2Meta:: INCBIN "data/tilesets/johto_modern_metatiles.bin.lz"
TilesetJohto2Attr:: INCBIN "data/tilesets/johto_modern_attributes.bin.lz"
TilesetJohto2Coll:: INCBIN "data/tilesets/johto_modern_collision.bin.lz"


SECTION "Tileset Graphics - johto overcast vram1", ROMX

TilesetJohto3GFX1:: INCBIN "gfx/tilesets/johto_overcast.johto_common.2bpp.vram0.lz"


SECTION "Tileset Graphics - johto overcast vram2", ROMX

TilesetJohto3GFX2:: INCBIN "gfx/tilesets/johto_overcast.johto_common.2bpp.vram1.lz"


SECTION "Tileset Data - johto overcast", ROMX

TilesetJohto3Meta:: INCBIN "data/tilesets/johto_overcast_metatiles.bin.lz"
TilesetJohto3Attr:: INCBIN "data/tilesets/johto_overcast_attributes.bin.lz"
TilesetJohto3Coll:: INCBIN "data/tilesets/johto_overcast_collision.bin.lz"


SECTION "Tileset Graphics - battle tower outside vram1", ROMX

TilesetJohto4GFX1:: INCBIN "gfx/tilesets/battle_tower_outside.johto_common.2bpp.lz"


SECTION "Tileset Data - battle tower outside", ROMX

TilesetJohto4Meta:: INCBIN "data/tilesets/battle_tower_outside_metatiles.bin.lz"
TilesetJohto4Attr:: INCBIN "data/tilesets/battle_tower_outside_attributes.bin.lz"
TilesetJohto4Coll:: INCBIN "data/tilesets/battle_tower_outside_collision.bin.lz"


SECTION "Tileset Graphics - unova house vram0", ROMX

TilesetHouse1GFX0:: INCBIN "gfx/tilesets/unova_house.2bpp.vram0.lz"


SECTION "Tileset Graphics - unova house vram1", ROMX

TilesetHouse1GFX1:: INCBIN "gfx/tilesets/unova_house.2bpp.vram1.lz"


SECTION "Tileset Data - unova house", ROMX

TilesetHouse1Meta:: INCBIN "data/tilesets/unova_house_metatiles.bin.lz"
TilesetHouse1Attr:: INCBIN "data/tilesets/unova_house_attributes.bin.lz"
TilesetHouse1Coll:: INCBIN "data/tilesets/unova_house_collision.bin.lz"


SECTION "Tileset Graphics - traditional house vram0", ROMX

TilesetHouse3GFX0:: INCBIN "gfx/tilesets/traditional_house.2bpp.vram0.lz"


SECTION "Tileset Graphics - traditional house vram1", ROMX

TilesetHouse3GFX1:: INCBIN "gfx/tilesets/traditional_house.2bpp.vram1.lz"


SECTION "Tileset Data - traditional house", ROMX

TilesetHouse3Meta:: INCBIN "data/tilesets/traditional_house_metatiles.bin.lz"
TilesetHouse3Attr:: INCBIN "data/tilesets/traditional_house_attributes.bin.lz"
TilesetHouse3Coll:: INCBIN "data/tilesets/traditional_house_collision.bin.lz"


SECTION "Tileset Graphics - pokecenter vram0", ROMX

TilesetPokeCenterGFX0:: INCBIN "gfx/tilesets/pokecenter.2bpp.vram0.lz"


SECTION "Tileset Graphics - pokecenter vram1", ROMX

TilesetPokeCenterGFX1:: INCBIN "gfx/tilesets/pokecenter.2bpp.vram1.lz"


SECTION "Tileset Data - pokecenter", ROMX

TilesetPokeCenterMeta:: INCBIN "data/tilesets/pokecenter_metatiles.bin.lz"
TilesetPokeCenterAttr:: INCBIN "data/tilesets/pokecenter_attributes.bin.lz"
TilesetPokeCenterColl:: INCBIN "data/tilesets/pokecenter_collision.bin.lz"


SECTION "Tileset Graphics - mart vram0", ROMX

TilesetMartGFX0:: INCBIN "gfx/tilesets/mart.2bpp.vram0.lz"


SECTION "Tileset Graphics - mart vram1", ROMX

TilesetMartGFX1:: INCBIN "gfx/tilesets/mart.2bpp.vram1.lz"


SECTION "Tileset Data - mart", ROMX

TilesetMartMeta:: INCBIN "data/tilesets/mart_metatiles.bin.lz"
TilesetMartAttr:: INCBIN "data/tilesets/mart_attributes.bin.lz"
TilesetMartColl:: INCBIN "data/tilesets/mart_collision.bin.lz"


SECTION "Tileset Graphics - gate vram0", ROMX

TilesetGateGFX0:: INCBIN "gfx/tilesets/gate.2bpp.vram0.lz"


SECTION "Tileset Graphics - gate vram1", ROMX

TilesetGateGFX1:: INCBIN "gfx/tilesets/gate.2bpp.vram1.lz"


SECTION "Tileset Data - gate", ROMX

TilesetGateMeta:: INCBIN "data/tilesets/gate_metatiles.bin.lz"
TilesetGateAttr:: INCBIN "data/tilesets/gate_attributes.bin.lz"
TilesetGateColl:: INCBIN "data/tilesets/gate_collision.bin.lz"


SECTION "Tileset Graphics - magnet train vram0", ROMX

TilesetMagnetTrainGFX0:: INCBIN "gfx/tilesets/magnet_train.2bpp.vram0.lz"


SECTION "Tileset Graphics - magnet train vram1", ROMX

TilesetMagnetTrainGFX1:: INCBIN "gfx/tilesets/magnet_train.2bpp.vram1.lz"


SECTION "Tileset Data - magnet train", ROMX

TilesetMagnetTrainMeta:: INCBIN "data/tilesets/magnet_train_metatiles.bin.lz"
TilesetMagnetTrainAttr:: INCBIN "data/tilesets/magnet_train_attributes.bin.lz"
TilesetMagnetTrainColl:: INCBIN "data/tilesets/magnet_train_collision.bin.lz"


SECTION "Tileset Graphics - champions room vram0", ROMX

TilesetChampionsRoomGFX0:: INCBIN "gfx/tilesets/champions_room.2bpp.vram0.lz"


SECTION "Tileset Graphics - champions room vram1", ROMX

TilesetChampionsRoomGFX1:: INCBIN "gfx/tilesets/champions_room.2bpp.vram1.lz"


SECTION "Tileset Data - champions room", ROMX

TilesetChampionsRoomMeta:: INCBIN "data/tilesets/champions_room_metatiles.bin.lz"
TilesetChampionsRoomAttr:: INCBIN "data/tilesets/champions_room_attributes.bin.lz"
TilesetChampionsRoomColl:: INCBIN "data/tilesets/champions_room_collision.bin.lz"


SECTION "Tileset Graphics - elite four room vram0", ROMX

TilesetEliteFourRoomGFX0:: INCBIN "gfx/tilesets/elite_four_room.2bpp.vram0.lz"


SECTION "Tileset Graphics - elite four room vram1", ROMX

TilesetEliteFourRoomGFX1:: INCBIN "gfx/tilesets/elite_four_room.2bpp.vram1.lz"


SECTION "Tileset Data - elite four room", ROMX

TilesetEliteFourRoomMeta:: INCBIN "data/tilesets/elite_four_room_metatiles.bin.lz"
TilesetEliteFourRoomAttr:: INCBIN "data/tilesets/elite_four_room_attributes.bin.lz"
TilesetEliteFourRoomColl:: INCBIN "data/tilesets/elite_four_room_collision.bin.lz"


SECTION "Tileset Graphics - port vram0", ROMX

TilesetPortGFX0:: INCBIN "gfx/tilesets/port.2bpp.vram0.lz"


SECTION "Tileset Graphics - port vram1", ROMX

TilesetPortGFX1:: INCBIN "gfx/tilesets/port.2bpp.vram1.lz"


SECTION "Tileset Data - port", ROMX

TilesetPortMeta:: INCBIN "data/tilesets/port_metatiles.bin.lz"
TilesetPortAttr:: INCBIN "data/tilesets/port_attributes.bin.lz"
TilesetPortColl:: INCBIN "data/tilesets/port_collision.bin.lz"


SECTION "Tileset Graphics - lab vram0", ROMX

TilesetLabGFX0:: INCBIN "gfx/tilesets/lab.2bpp.vram0.lz"


SECTION "Tileset Graphics - lab vram1", ROMX

TilesetLabGFX1:: INCBIN "gfx/tilesets/lab.2bpp.vram1.lz"


SECTION "Tileset Data - lab", ROMX

TilesetLabMeta:: INCBIN "data/tilesets/lab_metatiles.bin.lz"
TilesetLabAttr:: INCBIN "data/tilesets/lab_attributes.bin.lz"
TilesetLabColl:: INCBIN "data/tilesets/lab_collision.bin.lz"


SECTION "Tileset Graphics - facility vram0", ROMX

TilesetFacilityGFX0:: INCBIN "gfx/tilesets/facility.2bpp.vram0.lz"


SECTION "Tileset Graphics - facility vram1", ROMX

TilesetFacilityGFX1:: INCBIN "gfx/tilesets/facility.2bpp.vram1.lz"


SECTION "Tileset Data - facility", ROMX

TilesetFacilityMeta:: INCBIN "data/tilesets/facility_metatiles.bin.lz"
TilesetFacilityAttr:: INCBIN "data/tilesets/facility_attributes.bin.lz"
TilesetFacilityColl:: INCBIN "data/tilesets/facility_collision.bin.lz"


SECTION "Tileset Graphics - game corner vram0", ROMX

TilesetGameCornerGFX0:: INCBIN "gfx/tilesets/game_corner.2bpp.vram0.lz"


SECTION "Tileset Graphics - game corner vram1", ROMX

TilesetGameCornerGFX1:: INCBIN "gfx/tilesets/game_corner.2bpp.vram1.lz"


SECTION "Tileset Data - game corner", ROMX

TilesetGameCornerMeta:: INCBIN "data/tilesets/game_corner_metatiles.bin.lz"
TilesetGameCornerAttr:: INCBIN "data/tilesets/game_corner_attributes.bin.lz"
TilesetGameCornerColl:: INCBIN "data/tilesets/game_corner_collision.bin.lz"


SECTION "Tileset Graphics - battle tower inside vram0", ROMX

TilesetBattleTowerGFX0:: INCBIN "gfx/tilesets/battle_tower_inside.2bpp.vram0.lz"


SECTION "Tileset Graphics - battle tower inside vram1", ROMX

TilesetBattleTowerGFX1:: INCBIN "gfx/tilesets/battle_tower_inside.2bpp.vram1.lz"


SECTION "Tileset Data - battle tower inside", ROMX

TilesetBattleTowerMeta:: INCBIN "data/tilesets/battle_tower_inside_metatiles.bin.lz"
TilesetBattleTowerAttr:: INCBIN "data/tilesets/battle_tower_inside_attributes.bin.lz"
TilesetBattleTowerColl:: INCBIN "data/tilesets/battle_tower_inside_collision.bin.lz"


SECTION "Tileset Graphics - underground vram0", ROMX

TilesetUndergroundGFX0:: INCBIN "gfx/tilesets/underground.2bpp.vram0.lz"


SECTION "Tileset Graphics - underground vram1", ROMX

TilesetUndergroundGFX1:: INCBIN "gfx/tilesets/underground.2bpp.vram1.lz"


SECTION "Tileset Data - underground", ROMX

TilesetUndergroundMeta:: INCBIN "data/tilesets/underground_metatiles.bin.lz"
TilesetUndergroundAttr:: INCBIN "data/tilesets/underground_attributes.bin.lz"
TilesetUndergroundColl:: INCBIN "data/tilesets/underground_collision.bin.lz"


SECTION "Tileset Graphics - cave vram0", ROMX

TilesetCaveGFX0:: INCBIN "gfx/tilesets/cave.2bpp.vram0.lz"


SECTION "Tileset Graphics - cave vram1", ROMX

TilesetCaveGFX1:: INCBIN "gfx/tilesets/cave.2bpp.vram1.lz"


SECTION "Tileset Data - cave", ROMX

TilesetCaveMeta:: INCBIN "data/tilesets/cave_metatiles.bin.lz"
TilesetCaveAttr:: INCBIN "data/tilesets/cave_attributes.bin.lz"
TilesetCaveColl:: INCBIN "data/tilesets/cave_collision.bin.lz"


SECTION "Tileset Graphics - ice path vram0", ROMX

TilesetIcePathGFX0:: INCBIN "gfx/tilesets/ice_path.2bpp.vram0.lz"


SECTION "Tileset Graphics - ice path vram1", ROMX

TilesetIcePathGFX1:: INCBIN "gfx/tilesets/ice_path.2bpp.vram1.lz"


SECTION "Tileset Data - ice path", ROMX

TilesetIcePathMeta:: INCBIN "data/tilesets/ice_path_metatiles.bin.lz"
TilesetIcePathAttr:: INCBIN "data/tilesets/ice_path_attributes.bin.lz"
TilesetIcePathColl:: INCBIN "data/tilesets/ice_path_collision.bin.lz"


SECTION "Tileset Graphics - battle factory vram0", ROMX

TilesetBattleFactoryGFX0:: INCBIN "gfx/tilesets/battle_factory.2bpp.vram0.lz"


SECTION "Tileset Graphics - battle factory vram1", ROMX

TilesetBattleFactoryGFX1:: INCBIN "gfx/tilesets/battle_factory.2bpp.vram1.lz"


SECTION "Tileset Data - battle factory", ROMX

TilesetBattleFactoryMeta:: INCBIN "data/tilesets/battle_factory_metatiles.bin.lz"
TilesetBattleFactoryAttr:: INCBIN "data/tilesets/battle_factory_attributes.bin.lz"
TilesetBattleFactoryColl:: INCBIN "data/tilesets/battle_factory_collision.bin.lz"


SECTION "Tileset Graphics - lentimas vram0", ROMX

TilesetLentimasGFX0:: INCBIN "gfx/tilesets/lentimas.2bpp.vram0.lz"


SECTION "Tileset Graphics - lentimas vram1", ROMX

TilesetLentimasGFX1:: INCBIN "gfx/tilesets/lentimas.2bpp.vram1.lz"


SECTION "Tileset Data - lentimas", ROMX

TilesetLentimasMeta:: INCBIN "data/tilesets/lentimas_metatiles.bin.lz"
TilesetLentimasAttr:: INCBIN "data/tilesets/lentimas_attributes.bin.lz"
TilesetLentimasColl:: INCBIN "data/tilesets/lentimas_collision.bin.lz"


SECTION "Tileset Graphics - forest vram0", ROMX

TilesetForestGFX0:: INCBIN "gfx/tilesets/forest.2bpp.vram0.lz"


SECTION "Tileset Graphics - forest vram1", ROMX

TilesetForestGFX1:: INCBIN "gfx/tilesets/forest.2bpp.vram1.lz"


SECTION "Tileset Data - forest", ROMX

TilesetForestMeta:: INCBIN "data/tilesets/forest_metatiles.bin.lz"
TilesetForestAttr:: INCBIN "data/tilesets/forest_attributes.bin.lz"
TilesetForestColl:: INCBIN "data/tilesets/forest_collision.bin.lz"


SECTION "Tileset Graphics - nimbasa vram0", ROMX

TilesetNimbasaGFX0:: INCBIN "gfx/tilesets/nimbasa.2bpp.vram0.lz"


SECTION "Tileset Graphics - nimbasa vram1", ROMX

TilesetNimbasaGFX1:: INCBIN "gfx/tilesets/nimbasa.2bpp.vram1.lz"


SECTION "Tileset Data - nimbasa", ROMX

TilesetNimbasaMeta:: INCBIN "data/tilesets/nimbasa_metatiles.bin.lz"
TilesetNimbasaAttr:: INCBIN "data/tilesets/nimbasa_attributes.bin.lz"
TilesetNimbasaColl:: INCBIN "data/tilesets/nimbasa_collision.bin.lz"


SECTION "Tileset Graphics - park vram0", ROMX

TilesetParkGFX0:: INCBIN "gfx/tilesets/park.2bpp.vram0.lz"


SECTION "Tileset Graphics - park vram1", ROMX

TilesetParkGFX1:: INCBIN "gfx/tilesets/park.2bpp.vram1.lz"


SECTION "Tileset Data - park", ROMX

TilesetParkMeta:: INCBIN "data/tilesets/park_metatiles.bin.lz"
TilesetParkAttr:: INCBIN "data/tilesets/park_attributes.bin.lz"
TilesetParkColl:: INCBIN "data/tilesets/park_collision.bin.lz"


SECTION "Tileset Graphics - desert vram0", ROMX

TilesetDesertGFX0:: INCBIN "gfx/tilesets/desert.2bpp.vram0.lz"


SECTION "Tileset Graphics - desert vram1", ROMX

TilesetDesertGFX1:: INCBIN "gfx/tilesets/desert.2bpp.vram1.lz"


SECTION "Tileset Data - desert", ROMX

TilesetDesertMeta:: INCBIN "data/tilesets/desert_metatiles.bin.lz"
TilesetDesertAttr:: INCBIN "data/tilesets/desert_attributes.bin.lz"
TilesetDesertColl:: INCBIN "data/tilesets/desert_collision.bin.lz"

SECTION "Tileset Graphics - castelia vram0", ROMX

TilesetCasteliaGFX0:: INCBIN "gfx/tilesets/castelia.2bpp.vram0.lz"


SECTION "Tileset Graphics - castelia vram1", ROMX

TilesetCasteliaGFX1:: INCBIN "gfx/tilesets/castelia.2bpp.vram1.lz"


SECTION "Tileset Data - castelia", ROMX

TilesetCasteliaMeta:: INCBIN "data/tilesets/castelia_metatiles.bin.lz"
TilesetCasteliaAttr:: INCBIN "data/tilesets/castelia_attributes.bin.lz"
TilesetCasteliaColl:: INCBIN "data/tilesets/castelia_collision.bin.lz"

SECTION "Tileset Graphics - virbank vram0", ROMX

TilesetVirbankGFX0:: INCBIN "gfx/tilesets/virbank.2bpp.vram0.lz"


SECTION "Tileset Graphics - virbank vram1", ROMX

TilesetVirbankGFX1:: INCBIN "gfx/tilesets/virbank.2bpp.vram1.lz"


SECTION "Tileset Data - virbank", ROMX

TilesetVirbankMeta:: INCBIN "data/tilesets/virbank_metatiles.bin.lz"
TilesetVirbankAttr:: INCBIN "data/tilesets/virbank_attributes.bin.lz"
TilesetVirbankColl:: INCBIN "data/tilesets/virbank_collision.bin.lz"


SECTION "Tileset Graphics - hidden grotto vram0", ROMX

TilesetHiddenGrottoGFX0:: INCBIN "gfx/tilesets/hidden_grotto.2bpp.vram0.lz"


SECTION "Tileset Graphics - hidden grotto vram1", ROMX

TilesetHiddenGrottoGFX1:: INCBIN "gfx/tilesets/hidden_grotto.2bpp.vram1.lz"


SECTION "Tileset Data - hidden grotto", ROMX

TilesetHiddenGrottoMeta:: INCBIN "data/tilesets/hidden_grotto_metatiles.bin.lz"
TilesetHiddenGrottoAttr:: INCBIN "data/tilesets/hidden_grotto_attributes.bin.lz"
TilesetHiddenGrottoColl:: INCBIN "data/tilesets/hidden_grotto_collision.bin.lz"


SECTION "Tileset Graphics - Terminator vram2", ROMX

TilesetJohto4GFX2::
TilesetHouse1GFX2::
TilesetHouse3GFX2::
TilesetPokeCenterGFX2::
TilesetMartGFX2::
TilesetGateGFX2::
TilesetMagnetTrainGFX2::
TilesetChampionsRoomGFX2::
TilesetEliteFourRoomGFX2::
TilesetPortGFX2::
TilesetLabGFX2::
TilesetFacilityGFX2::
TilesetGameCornerGFX2::
TilesetBattleTowerGFX2::
TilesetUndergroundGFX2::
TilesetCaveGFX2::
TilesetIcePathGFX2::
TilesetTunnelGFX2::
TilesetForestGFX2::
TilesetNimbasaGFX2::
TilesetParkGFX2::
TilesetDesertGFX2::
TilesetCasteliaGFX2::
TilesetVirbankGFX2::
TilesetBattleFactoryGFX2::
TilesetLentimasGFX2::
TilesetHiddenGrottoGFX2::
	db $ff ; Compressed data is terminated with $ff.
