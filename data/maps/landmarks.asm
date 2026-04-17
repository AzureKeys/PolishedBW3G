MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 140,  28, HumilauCityName
	landmark 148,  36, Route21Name
	landmark 148,  52, SeasideCaveName
	landmark 132,  52, MarineTubeName
	landmark 132,  28, Route22Name
	landmark 124,  28, GiantChasmName
	landmark 116,  36, LacunosaTownName
	landmark 124,  44, Route13Name
	landmark 124,  60, UndellaTownName
	landmark 116,  68, Route14Name
	landmark 116,  60, ReversalMountainName
	landmark 100,  60, LentimasOutskirtName
	landmark 100,  52, StrangeHouseName
	landmark  92,  60, LentimasTownName
	landmark 100,  76, LostlornForestName
	landmark  92,  84, Route16Name
	landmark  84,  84, NimbasaCityName
	landmark  92,  92, NimbasaParkName
	landmark  84, 100, Route4Name
	landmark  76,  92, DesertResortName
	landmark  68,  92, RelicCastleName
	landmark  84, 116, CasteliaCityName
	landmark  92, 124, CasteliaSewersName
	landmark 104, 108, SkyarrowBridgeName
	landmark 116, 100, PinwheelForestName
	landmark 124, 100, NacreneCityName
	landmark 132, 100, Route3Name
	landmark 132,  92, WellspringCaveName
	landmark 140, 100, StriatonCityName
	landmark 148, 100, DreamyardName
	landmark 140, 108, Route2Name
	landmark 140, 116, AccumulaTownName
	landmark 140, 124, Route1Name
	landmark 140, 132, NuvemaTownName
	landmark 132, 132, Route17Name
	landmark 124, 132, Route18Name
	landmark 124, 124, P2LabName
	landmark  12, 132, AspertiaCityName
	landmark  16, 120, Route19Name
	landmark  28, 116, FloccesyTownName
	landmark  36, 108, FloccesyRanchName
	landmark  40, 116, Route20Name
	landmark  52, 116, VirbankCityName
	landmark  52, 124, VirbankComplexName
	landmark  76,  84, Route5Name
	landmark  64,  84, DriftveilBridgeName
	landmark  52,  84, DriftveilCityName
	landmark  52,  92, PWTName
	landmark  68, 104, RelicPassageName
	landmark  40,  76, Route6Name
	landmark  44,  68, MistraltonCaveName
	landmark  28,  76, ChargestoneCaveName
	landmark  28,  60, MistraltonCityName
	landmark  36,  48, Route7Name
	landmark  28,  44, CelestialTowerName
	landmark  52,  36, IcirrusCityName
	landmark  60,  36, Route8Name
	landmark  60,  28, MoorOfIcirrusName
	landmark  68,  36, TubelineBridgeName
	landmark  76,  36, Route9Name
	landmark  84,  36, OpelucidCityName
	landmark  92,  36, Route11Name
	landmark 100,  36, VillageBridgeName
	landmark 108,  36, Route12Name
	landmark  28,  76, PokemonLeagueName
	landmark  28,  52, BattleTowerName
	assert_table_length NUM_LANDMARKS

HumilauCityName:       rawchar "Humilau¯City@"
Route21Name:           rawchar "Route 21@"
SeasideCaveName:       rawchar "Seaside¯Cave@"
MarineTubeName:        rawchar "Marine Tube@"
Route22Name:           rawchar "Route 22@"
GiantChasmName:        rawchar "Giant Chasm@"
LacunosaTownName:      rawchar "Lacunosa¯Town@"
Route13Name:           rawchar "Route 13@"
UndellaTownName:       rawchar "Undella¯Town@"
Route14Name:           rawchar "Route 14@"
ReversalMountainName:  rawchar "Reversal¯Mountain@"
LentimasOutskirtName:  rawchar "Lentimas¯Outskirt@"
StrangeHouseName:      rawchar "Strange¯House@"
LentimasTownName:      rawchar "Lentimas¯Town@"
LostlornForestName:    rawchar "Lostlorn¯Forest@"
Route16Name:           rawchar "Route 16@"
NimbasaCityName:       rawchar "Nimbasa¯City@"
NimbasaParkName:       rawchar "Nimbasa¯Park@"
Route4Name:            rawchar "Route 4@"
DesertResortName:      rawchar "Desert¯Resort@"
RelicCastleName:       rawchar "Relic¯Castle@"
CasteliaCityName:      rawchar "Castelia¯City@"
CasteliaSewersName:    rawchar "Castelia¯Sewers@"
SkyarrowBridgeName:    rawchar "Skyarrow¯Bridge@"
PinwheelForestName:    rawchar "Pinwheel¯Forest@"
NacreneCityName:       rawchar "Nacrene¯City@"
Route3Name:            rawchar "Route 3@"
WellspringCaveName:    rawchar "Wellspring¯Cave@"
StriatonCityName:      rawchar "Striaton¯City@"
DreamyardName:         rawchar "Dreamyard@"
Route2Name:            rawchar "Route 2@"
AccumulaTownName:      rawchar "Accumula¯Town@"
Route1Name:            rawchar "Route 1@"
NuvemaTownName:        rawchar "Nuvema¯Town@"
Route17Name:           rawchar "Route 17@"
Route18Name:           rawchar "Route 18@"
P2LabName:             rawchar "P2 Lab@"
AspertiaCityName:      rawchar "Aspertia¯City@"
Route19Name:           rawchar "Route 19@"
FloccesyTownName:      rawchar "Floccesy¯Town@"
FloccesyRanchName:     rawchar "Floccesy¯Ranch@"
Route20Name:           rawchar "Route 20@"
VirbankCityName:       rawchar "Virbank¯City@"
VirbankComplexName:    rawchar "Virbank¯Complex@"
Route5Name:            rawchar "Route 5@"
DriftveilBridgeName:   rawchar "Driftveil¯Bridge@"
DriftveilCityName:     rawchar "Driftveil¯City@"
PWTName:               rawchar "World¯Tournament@"
RelicPassageName:      rawchar "Relic¯Passage@"
Route6Name:            rawchar "Route 6@"
MistraltonCaveName:    rawchar "Mistralton¯Cave@"
ChargestoneCaveName:   rawchar "Chargestone¯Cave@"
MistraltonCityName:    rawchar "Mistralton¯City@"
Route7Name:            rawchar "Route 7@"
CelestialTowerName:    rawchar "Celestial¯Tower@"
IcirrusCityName:       rawchar "Icirrus¯City@"
Route8Name:            rawchar "Route 8@"
MoorOfIcirrusName:     rawchar "Moor of¯Icirrus@"
TubelineBridgeName:    rawchar "Tubeline¯Bridge@"
Route9Name:            rawchar "Route 9@"
OpelucidCityName:      rawchar "Opelucid¯City@"
Route11Name:           rawchar "Route 11@"
VillageBridgeName:     rawchar "Village¯Bridge@"
Route12Name:           rawchar "Route 12@"
PokemonLeagueName:     rawchar "Pokémon¯League@"
BattleTowerName:       rawchar "Battle¯Tower@"
SpecialMapName:        rawchar "?@"
