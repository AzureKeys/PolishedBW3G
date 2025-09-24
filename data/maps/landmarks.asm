MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 140, 100, NewBarkTownName
	landmark  84,  60, VioletCityName
	landmark  86,  58, SproutTowerName
	landmark  84,  52, VioletOutskirtsName
	landmark  84,  92, Route32Name
	landmark  92, 112, Route32CoastName
	landmark  84, 124, UnionCaveName
	landmark  76, 124, Route33Name
	landmark  68, 124, AzaleaTownName
	landmark  76, 116, SlowpokeWellName
	landmark  52, 124, IlexForestName
	landmark  52, 108, Route34Name
	landmark  36, 120, Route34CoastName
	landmark  44, 132, StormyBeachName
	landmark  52, 132, MurkySwampName
	landmark  52,  92, GoldenrodCityName
	landmark  50,  92, RadioTowerName
	landmark  68,  92, MagnetTunnelName
	landmark  52,  76, Route35Name
	landmark  44,  76, Route35CoastName
	landmark  52,  60, NationalParkName
	landmark  64,  60, Route36Name
	landmark  68,  52, Route37Name
	landmark  68,  44, EcruteakCityName
	landmark  69,  42, BellchimeTrailName
	landmark  70,  42, TinTowerName
	landmark  66,  42, BurnedTowerName
	landmark  38,  62, LighthouseName
	landmark  28,  64, Route40Name
	landmark  28,  52, BattleTowerName
	landmark  28,  92, WhirlIslandsName
	landmark  28, 100, Route41Name
	landmark  20, 100, CianwoodCityName
	landmark  12,  84, YellowForestName
	landmark  92,  44, Route42Name
	landmark  84,  44, MtMortarName
	landmark 108,  44, MahoganyTownName
	landmark 108,  36, Route43Name
	landmark 108,  28, LakeOfRageName
	landmark 120,  44, Route44Name
	landmark 128,  40, IcePathName
	landmark 132,  44, BlackthornCityName
	landmark 132,  36, DragonsDenName
	landmark 132,  64, Route45Name
	landmark 116,  68, DarkCaveName
	landmark 124,  88, Route46Name
	landmark 144,  60, SilverCaveName
	landmark 102, 124, FastShipName
	assert_table_length KANTO_LANDMARK
	landmark  52, 100, PalletTownName
	landmark  52,  88, Route1Name
	landmark  52,  44, PewterCityName
	landmark  64,  44, Route3Name
	landmark  76,  44, MtMoonName
	landmark  92,  44, Route4Name
	landmark 108,  44, CeruleanCityName
	landmark 100,  36, CeruleanCaveName
	landmark 108,  36, Route24Name
	landmark 124,  28, Route25Name
	landmark 140,  28, CeruleanCapeName
	landmark 114,  66, UndergroundName
	landmark 108,  68, Route6Name
	landmark 108,  76, VermilionCityName
	landmark 116,  68, DiglettsCaveName
	landmark  96,  60, Route7Name
	landmark 124,  60, Route8Name
	landmark 140,  52, Route10Name
	landmark 140,  44, RockTunnelName
	landmark 148,  52, PowerPlantName
	landmark 140,  60, LavenderTownName
	landmark 142,  58, LavRadioTowerName
	landmark 142,  62, SoulHouseName
	landmark  84,  60, CeladonCityName
	landmark  82,  62, CeladonUniversityName
	landmark 124,  76, Route11Name
	landmark 140,  76, Route12Name
	landmark 132,  92, Route13Name
	landmark 124, 100, Route14Name
	landmark 108, 108, Route15Name
	landmark 136, 104, LuckyIslandName
	landmark  68,  60, Route16Name
	landmark  76,  88, Route17Name
	landmark  80, 108, Route18Name
	landmark  92, 108, FuchsiaCityName
	landmark  64, 108, UragaChannelName
	landmark  60, 116, ScaryCaveName
	landmark  92, 120, Route19Name
	landmark  80, 132, Route20Name
	landmark  68, 132, SeafoamIslandsName
	landmark  52, 132, CinnabarIslandName
	landmark  50, 130, PokemonMansionName
	landmark  54, 130, CinnabarVolcanoName
	landmark  52, 116, Route21Name
	landmark  40,  76, Route22Name
	landmark  12, 100, TohjoFallsName
	landmark  28,  76, PokemonLeagueName
	landmark  28,  64, Route23Name
	landmark  28,  52, VictoryRoadName
	landmark  28,  36, IndigoPlateauName
	landmark  16,  76, Route28Name
	landmark  54, 134, CinnabarLabName
	landmark 132, 100, NavelRockName
	landmark  24, 120, FarawayIslandName
	assert_table_length NUM_LANDMARKS

NewBarkTownName:       rawchar "New Bark¯Town@"
VioletCityName:        rawchar "Violet City@"
AzaleaTownName:        rawchar "Azalea Town@"
GoldenrodCityName:     rawchar "Goldenrod¯City@"
EcruteakCityName:      rawchar "Ecruteak¯City@"
CianwoodCityName:      rawchar "Cianwood¯City@"
MahoganyTownName:      rawchar "Mahogany¯Town@"
BlackthornCityName:    rawchar "Blackthorn¯City@"
LakeOfRageName:        rawchar "Lake of¯Rage@"
SilverCaveName:        rawchar "Silver Cave@"
SproutTowerName:       rawchar "Sprout¯Tower@"
VioletOutskirtsName:   rawchar "Violet¯Outskirts@"
UnionCaveName:         rawchar "Union Cave@"
SlowpokeWellName:      rawchar "Slowpoke¯Well@"
RadioTowerName:        rawchar "Radio Tower@"
PowerPlantName:        rawchar "Power Plant@"
NationalParkName:      rawchar "National¯Park@"
BellchimeTrailName:    rawchar "Bellchime¯Trail@"
TinTowerName:          rawchar "Bell Tower@"
LighthouseName:        rawchar "Lighthouse@"
WhirlIslandsName:      rawchar "Whirl¯Islands@"
MtMortarName:          rawchar "Mt.Mortar@"
DragonsDenName:        rawchar "Dragon's Den@"
IcePathName:           rawchar "Ice Path@"
PalletTownName:        rawchar "Pallet Town@"
PewterCityName:        rawchar "Pewter City@"
CeruleanCityName:      rawchar "Cerulean¯City@"
LavenderTownName:      rawchar "Lavender¯Town@"
VermilionCityName:     rawchar "Vermilion¯City@"
CeladonCityName:       rawchar "Celadon¯City@"
FuchsiaCityName:       rawchar "Fuchsia¯City@"
CinnabarIslandName:    rawchar "Cinnabar¯Island@"
PokemonLeagueName:     rawchar "Pokémon¯League Gate@"
VictoryRoadName:       rawchar "Victory¯Road@"
IndigoPlateauName:     rawchar "Indigo¯Plateau@"
MtMoonName:            rawchar "Mt.Moon@"
RockTunnelName:        rawchar "Rock Tunnel@"
LavRadioTowerName:     rawchar "Lav.Radio¯Tower@"
SoulHouseName:         rawchar "House of¯Souls@"
CeladonUniversityName: rawchar "Celadon¯University@"
SeafoamIslandsName:    rawchar "Seafoam¯Islands@"
PokemonMansionName:    rawchar "Pokémon¯Mansion@"
CinnabarVolcanoName:   rawchar "Cinnabar¯Volcano@"
CeruleanCaveName:      rawchar "Cerulean¯Cave@"
CeruleanCapeName:      rawchar "Cerulean¯Cape@"
LuckyIslandName:       rawchar "Lucky¯Island@"
Route1Name:            rawchar "Route 1@"
Route3Name:            rawchar "Route 3@"
Route4Name:            rawchar "Route 4@"
Route6Name:            rawchar "Route 6@"
Route7Name:            rawchar "Route 7@"
Route8Name:            rawchar "Route 8@"
Route10Name:           rawchar "Route 10@"
Route11Name:           rawchar "Route 11@"
Route12Name:           rawchar "Route 12@"
Route13Name:           rawchar "Route 13@"
Route14Name:           rawchar "Route 14@"
Route15Name:           rawchar "Route 15@"
Route16Name:           rawchar "Route 16@"
Route17Name:           rawchar "Route 17@"
Route18Name:           rawchar "Route 18@"
Route19Name:           rawchar "Route 19@"
Route20Name:           rawchar "Route 20@"
Route21Name:           rawchar "Route 21@"
Route22Name:           rawchar "Route 22@"
Route23Name:           rawchar "Route 23@"
Route24Name:           rawchar "Route 24@"
Route25Name:           rawchar "Route 25@"
Route28Name:           rawchar "Route 28@"
Route32Name:           rawchar "Route 32@"
Route33Name:           rawchar "Route 33@"
Route34Name:           rawchar "Route 34@"
Route35Name:           rawchar "Route 35@"
Route36Name:           rawchar "Route 36@"
Route37Name:           rawchar "Route 37@"
Route40Name:           rawchar "Route 40@"
Route41Name:           rawchar "Route 41@"
Route42Name:           rawchar "Route 42@"
Route43Name:           rawchar "Route 43@"
Route44Name:           rawchar "Route 44@"
Route45Name:           rawchar "Route 45@"
Route46Name:           rawchar "Route 46@"
DarkCaveName:          rawchar "Dark Cave@"
IlexForestName:        rawchar "Ilex¯Forest@"
BurnedTowerName:       rawchar "Burned¯Tower@"
FastShipName:          rawchar "Fast Ship@"
DiglettsCaveName:      rawchar "Diglett's¯Cave@"
TohjoFallsName:        rawchar "Tohjo Falls@"
UndergroundName:       rawchar "Underground@"
BattleTowerName:       rawchar "Battle¯Tower@"
YellowForestName:      rawchar "Yellow¯Forest@"
MagnetTunnelName:      rawchar "Magnet¯Tunnel@"
Route32CoastName:      rawchar "Route 32¯Coast@"
Route34CoastName:      rawchar "Route 34¯Coast@"
Route35CoastName:      rawchar "Route 35¯Coast@"
StormyBeachName:       rawchar "Stormy¯Beach@"
MurkySwampName:        rawchar "Murky¯Swamp@"
ScaryCaveName:         rawchar "Scary¯Cave@"
UragaChannelName:      rawchar "Uraga¯Channel@"
NavelRockName:         rawchar "Navel Rock@"
FarawayIslandName:     rawchar "Faraway¯Island@"
CinnabarLabName:       rawchar "Pokémon¯Lab@"
SpecialMapName:        rawchar "?@"
