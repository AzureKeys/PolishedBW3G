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
	tileset TilesetComplex
	tileset TilesetUnovaBeach
	tileset TilesetUnovaWest
	tileset TilesetHiddenGrotto
	assert_table_length NUM_TILESETS


SECTION "Tileset Graphics - unova common vram0", ROMX

TilesetUnovaBeachGFX0::
TilesetUnovaWestGFX0:: INCBIN "gfx/tilesets/unova_common.2bpp.lzp"


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


SECTION "Tileset Graphics - johto outlands vram1", ROMX

TilesetJohto3GFX1:: INCBIN "gfx/tilesets/johto_outlands.johto_common.2bpp.vram0.lzp"


SECTION "Tileset Data - johto outlands", ROMX

TilesetJohto3Meta:: INCBIN "data/tilesets/johto_outlands_metatiles.bin.lzp"
TilesetJohto3Attr:: INCBIN "data/tilesets/johto_outlands_attributes.bin.lzp"
TilesetJohto3Coll:: INCBIN "data/tilesets/johto_outlands_collision.bin.lzp"


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

TilesetEliteFourRoomGFX0:: INCBIN "gfx/tilesets/elite_four_room.2bpp.vram0.lzp"


SECTION "Tileset Graphics - elite four room vram1", ROMX

TilesetEliteFourRoomGFX1:: INCBIN "gfx/tilesets/elite_four_room.2bpp.vram1.lzp"


SECTION "Tileset Data - elite four room", ROMX

TilesetEliteFourRoomMeta:: INCBIN "data/tilesets/elite_four_room_metatiles.bin.lzp"
TilesetEliteFourRoomAttr:: INCBIN "data/tilesets/elite_four_room_attributes.bin.lzp"
TilesetEliteFourRoomColl:: INCBIN "data/tilesets/elite_four_room_collision.bin.lzp"


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

TilesetCaveGFX0:: INCBIN "gfx/tilesets/cave.2bpp.vram0.lzp"


SECTION "Tileset Graphics - cave vram1", ROMX

TilesetCaveGFX1:: INCBIN "gfx/tilesets/cave.2bpp.vram1.lzp"


SECTION "Tileset Data - cave", ROMX

TilesetCaveMeta:: INCBIN "data/tilesets/cave_metatiles.bin.lzp"
TilesetCaveAttr:: INCBIN "data/tilesets/cave_attributes.bin.lzp"
TilesetCaveColl:: INCBIN "data/tilesets/cave_collision.bin.lzp"


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
TilesetComplexGFX2::
TilesetBattleFactoryGFX2::
TilesetLentimasGFX2::
TilesetHiddenGrottoGFX2::
	db $ff ; Compressed data is terminated with $ff.
