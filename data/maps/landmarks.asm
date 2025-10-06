MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 140, 100, NewBarkTownName
	landmark  86,  58, SproutTowerName
	landmark  84, 124, UnionCaveName
	landmark  76, 116, SlowpokeWellName
	landmark  52, 124, IlexForestName
	landmark  50,  92, RadioTowerName
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
	landmark  28,  52, BattleTowerName
	landmark  28,  92, WhirlIslandsName
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
	assert_table_length KANTO_LANDMARK
	landmark  52,  88, Route1Name
	landmark  76,  44, MtMoonName
	landmark 114,  66, UndergroundName
	landmark 116,  68, DiglettsCaveName
	landmark 140,  44, RockTunnelName
	landmark  40,  76, Route22Name
	landmark  12, 100, TohjoFallsName
	landmark  28,  76, PokemonLeagueName
	landmark  28,  64, Route23Name
	landmark  28,  52, VictoryRoadName
	landmark  28,  36, IndigoPlateauName
	landmark  54, 134, CinnabarLabName
	assert_table_length NUM_LANDMARKS

NewBarkTownName:       rawchar "New Bark¯Town@"
EcruteakCityName:      rawchar "Ecruteak¯City@"
MahoganyTownName:      rawchar "Mahogany¯Town@"
BlackthornCityName:    rawchar "Blackthorn¯City@"
LakeOfRageName:        rawchar "Lake of¯Rage@"
SilverCaveName:        rawchar "Silver Cave@"
SproutTowerName:       rawchar "Sprout¯Tower@"
UnionCaveName:         rawchar "Union Cave@"
SlowpokeWellName:      rawchar "Slowpoke¯Well@"
RadioTowerName:        rawchar "Radio Tower@"
NationalParkName:      rawchar "National¯Park@"
BellchimeTrailName:    rawchar "Bellchime¯Trail@"
TinTowerName:          rawchar "Bell Tower@"
LighthouseName:        rawchar "Lighthouse@"
WhirlIslandsName:      rawchar "Whirl¯Islands@"
MtMortarName:          rawchar "Mt.Mortar@"
DragonsDenName:        rawchar "Dragon's Den@"
IcePathName:           rawchar "Ice Path@"
PokemonLeagueName:     rawchar "Pokémon¯League Gate@"
VictoryRoadName:       rawchar "Victory¯Road@"
IndigoPlateauName:     rawchar "Indigo¯Plateau@"
MtMoonName:            rawchar "Mt.Moon@"
RockTunnelName:        rawchar "Rock Tunnel@"
Route1Name:            rawchar "Route 1@"
Route22Name:           rawchar "Route 22@"
Route23Name:           rawchar "Route 23@"
Route35Name:           rawchar "Route 35@"
Route36Name:           rawchar "Route 36@"
Route37Name:           rawchar "Route 37@"
Route42Name:           rawchar "Route 42@"
Route43Name:           rawchar "Route 43@"
Route44Name:           rawchar "Route 44@"
Route45Name:           rawchar "Route 45@"
Route46Name:           rawchar "Route 46@"
DarkCaveName:          rawchar "Dark Cave@"
IlexForestName:        rawchar "Ilex¯Forest@"
BurnedTowerName:       rawchar "Burned¯Tower@"
DiglettsCaveName:      rawchar "Diglett's¯Cave@"
TohjoFallsName:        rawchar "Tohjo Falls@"
UndergroundName:       rawchar "Underground@"
BattleTowerName:       rawchar "Battle¯Tower@"
Route35CoastName:      rawchar "Route 35¯Coast@"
CinnabarLabName:       rawchar "Pokémon¯Lab@"
SpecialMapName:        rawchar "?@"
