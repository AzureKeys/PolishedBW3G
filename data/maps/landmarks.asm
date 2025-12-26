MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 140,  28, HumilauCityName
	landmark 132,  28, Route22Name
	landmark 124,  28, GiantChasmName
	landmark 124,  44, Route13Name
	landmark 116,  36, LacunosaTownName
	landmark  28,  52, BattleTowerName
	landmark  28,  76, PokemonLeagueName
	assert_table_length NUM_LANDMARKS

HumilauCityName:       rawchar "Humilau¯City@"
Route22Name:           rawchar "Route 22@"
GiantChasmName:        rawchar "Giant Chasm@"
Route13Name:           rawchar "Route 13@"
LacunosaTownName:      rawchar "Lacunosa¯Town@"
PokemonLeagueName:     rawchar "Pokémon¯League Gate@"
BattleTowerName:       rawchar "Battle¯Tower@"
SpecialMapName:        rawchar "?@"
