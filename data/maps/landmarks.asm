MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 140,  28, HumilauCityName
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
	landmark 108,  36, Route12Name
	landmark  28,  76, PokemonLeagueName
	landmark  28,  52, BattleTowerName
	assert_table_length NUM_LANDMARKS

HumilauCityName:       rawchar "Humilau¯City@"
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
Route12Name:           rawchar "Route 12@"
PokemonLeagueName:     rawchar "Pokémon¯League@"
BattleTowerName:       rawchar "Battle¯Tower@"
SpecialMapName:        rawchar "?@"
