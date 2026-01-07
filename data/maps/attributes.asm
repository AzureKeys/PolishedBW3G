MACRO map_attributes
; label, map, border block, connections
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3, \2_HEIGHT, \2_WIDTH
	dba \1_BlockData, \1_MapScriptHeader
	db \4
ENDM

	map_attributes HumilauCity, HUMILAU_CITY, $35, WEST
	connection west, Route22, ROUTE_22, -2
	
	map_attributes Route22, ROUTE_22, $35, EAST
	connection west, HumilauCity, HUMILAU_CITY, 2
	
	map_attributes Route13, ROUTE_13, $e, WEST
	connection west, LacunosaTown, LACUNOSA_TOWN, -3
	
	map_attributes LacunosaTown, LACUNOSA_TOWN, $e, WEST | EAST
	connection west, Route12, ROUTE_12, 2
	connection east, Route13, ROUTE_13, 3
	
	map_attributes Route12, ROUTE_12, $e, EAST
	connection east, LacunosaTown, LACUNOSA_TOWN, -2
	
	map_attributes UndellaTown, UNDELLA_TOWN, $e, SOUTH
	connection south, Route14, ROUTE_14, -1
	
	map_attributes Route14, ROUTE_14, $e, NORTH
	connection north, UndellaTown, UNDELLA_TOWN, 1
	
	map_attributes LentimasTown, LENTIMAS_TOWN, $31, EAST
	connection east, LentimasOutskirt, LENTIMAS_OUTSKIRT, 1
	
	map_attributes LentimasOutskirt, LENTIMAS_OUTSKIRT, $31, WEST
	connection west, LentimasTown, LENTIMAS_TOWN, -1

	map_attributes GiantChasm1F, GIANT_CHASM_1F, $0, 0
	map_attributes ReversalMountain1F, REVERSAL_MOUNTAIN_1F, $0, 0
	map_attributes ReversalMountainB1F, REVERSAL_MOUNTAIN_B1F, $0, 0
	map_attributes StrangeHouse1F, STRANGE_HOUSE_1F, $0, 0
	map_attributes StrangeHouseB1F, STRANGE_HOUSE_B1F, $0, 0
	map_attributes StrangeHouseRooms, STRANGE_HOUSE_ROOMS, $0, 0
	map_attributes HumilauGym, HUMILAU_GYM, $0, 0
	map_attributes MarineTubeEntrance, MARINE_TUBE_ENTRANCE, $0, 0
	map_attributes MarineTube, MARINE_TUBE, $a, 0
	map_attributes LentimasGym, LENTIMAS_GYM, $0, 0
	
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $0, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $0, 0
	map_attributes HumilauPokecenter, HUMILAU_POKECENTER, $0, 0
	map_attributes MarlonsHouse, MARLONS_HOUSE, $0, 0
	map_attributes MomsPartnersHouse, MOMS_PARTNERS_HOUSE, $0, 0
	map_attributes HumilauTradeHouse, HUMILAU_TRADE_HOUSE, $0, 0
	map_attributes LacunosaPokecenter, LACUNOSA_POKECENTER, $0, 0
	map_attributes LacunosaSpeechHouse, LACUNOSA_SPEECH_HOUSE, $0, 0
	map_attributes LacunosaBerryHouse, LACUNOSA_BERRY_HOUSE, $0, 0
	map_attributes UndellaPokecenter, UNDELLA_POKECENTER, $0, 0
	map_attributes UndellaFishingGuruHouse, UNDELLA_FISHING_GURU_HOUSE, $0, 0
	map_attributes CaitlinsHouse, CAITLINS_HOUSE, $0, 0
	map_attributes LentimasPokecenter, LENTIMAS_POKECENTER, $0, 0
	map_attributes LentimasCoinHouse, LENTIMAS_COIN_HOUSE, $0, 0
	map_attributes LentimasSpellTagHouse, LENTIMAS_SPELL_TAG_HOUSE, $0, 0
	map_attributes LentimasAirport, LENTIMAS_AIRPORT, $0, 0
	
	map_attributes Route12VillageBridgeGate, ROUTE_12_VILLAGE_BRIDGE_GATE, $0, 0
	map_attributes Route13UndellaTownGate, ROUTE_13_UNDELLA_TOWN_GATE, $0, 0
	
	map_attributes HallOfFame, HALL_OF_FAME, $0, 0
	map_attributes PokeCenter2F, POKECENTER_2F, $0, 0
	map_attributes TradeCenter, TRADE_CENTER, $0, 0
	map_attributes Colosseum, COLOSSEUM, $0, 0
	map_attributes HiddenTreeGrotto, HIDDEN_TREE_GROTTO, $35, 0
	map_attributes HiddenCaveGrotto, HIDDEN_CAVE_GROTTO, $9, 0
	map_attributes BattleTower1F, BATTLE_TOWER_1F, $0, 0
	map_attributes BattleTower2F, BATTLE_TOWER_2F, $0, 0
	map_attributes BattleTowerBattleRoom, BATTLE_TOWER_BATTLE_ROOM, $0, 0
	map_attributes BattleTowerElevator, BATTLE_TOWER_ELEVATOR, $0, 0
	map_attributes BattleTowerHallway, BATTLE_TOWER_HALLWAY, $0, 0
	map_attributes BattleTowerOutside, BATTLE_TOWER_OUTSIDE, $5, 0
	