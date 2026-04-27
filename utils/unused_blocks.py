#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys

tileset_maps = {
'unova_beach': 'HumilauCity Route22 Route21 Route13 LacunosaTown Route12 UndellaTown Route14',
'unova_west': 'AspertiaCity Route19 FloccesyTown Route20 FloccesyRanch',
'unova_east': 'GiantChasmB1F AccumulaTown Route1 NuvemaTown Route17 Route18 Route6',
'unova_north': 'Route9',
'unova_house': 'PlayersHouse1F PlayersHouse2F MarlonsHouse MomsPartnersHouse CaitlinsHouse Route5Truck NimbasaSootheBellHouse CasteliaTradeHouse1 CasteliaTradeHouse2 CasteliaGameFreak AspertiaMomHouse Route3DayCare NuvemaMomHouse DriftveilShelter DraydensHouse1F DraydensHouse2F IcirrusFanClub',
'traditional_house': 'StrangeHouse1F StrangeHouseB1F StrangeHouseRooms DreamyardB1F CelestialTower1F CelestialTower CelestialTowerRoof LentimasCoinHouse LentimasGym LentimasAirport AldersHouse FloccesyRanchBarn',
'gate': 'Route12VillageBridgeGate Route13UndellaTownGate LentimasLostlornGate Route4NimbasaGate CasteliaSkyarrowBridgeGate BattleCompany1F BattleCompany2F PinwheelSkyarrowBridgeGate NacreneMuseum StriatonLab DriftveilStoneEmporium',
'magnet_train': 'NimbasaSubway AspertiaSubway OpelucidBattleHouse',
'champions_room': 'CasteliaBikeShop AspertiaGym',
'port': 'HumilauGym MarineTube CasteliaPort FerryLeft VirbankPort FerryRight',
'lab': 'NuvemaLab Route6Lab OpelucidGym',
'facility': 'NimbasaParkBasement VirbankComplexElevator VirbankComplexB1F VirbankComplexB2F P2LabEntrance P2Lab CasteliaGym',
'game_corner': 'NimbasaParkCoasterRoom NimbasaParkRunway CasteliaMassage CasteliaPlazaGameCorner CasteliaPlazaPrizeRoom CasteliaPlazaRestaurant VirbankGameCorner NacreneCafe StriatonGym',
'underground': 'CasteliaSewers CasteliaSewersRooms VirbankGym',
'cave': 'GiantChasm1F GiantChasmRooms ReversalMountain1F ReversalMountainB1F WellspringCave1F WellspringCaveB1F RelicPassageFront RelicPassageBack MistraltonCave1F MistraltonCave2F MistraltonCave3F ChargestoneCave1F ChargestoneCaveB1F ChargestoneCaveB2F SeasideCave1F SeasideCaveB1F SeasideCaveChamber',
'ice_path': 'SeasideCaveB2F IcirrusCave',
'elite_four_room': 'MarineTubeEntrance MistraltonGym1F MistraltonGym2F',
'lentimas': 'LentimasOutskirt LentimasTown',
'forest': 'LostlornForest PinwheelForest',
'nimbasa': 'Route16 NimbasaCity Route5',
'park': 'NimbasaParkOutside',
'desert': 'RelicCastle1F RelicCastleB1F RelicCastleB2F RelicCastleB3F RelicCastleB4F Route4 DesertResort',
'castelia': 'CasteliaCityNorth CasteliaCityStreets CasteliaCitySouth',
'virbank': 'VirbankCity',
'complex': 'VirbankComplexOutside',
'bridge': 'SkyarrowBridge DriftveilDrawbridge',
'village_bridge': 'VillageBridge',
'nacrene': 'NacreneOutskirt NacreneOutskirtConnectionDummy NacreneOutskirtEast NacreneCity',
'striaton': 'Route3 StriatonCity Route2',
'dreamyard': 'Dreamyard',
'pwt_outside': 'PWTOutside',
'pwt_inside': 'PWTInside PWTHallway PWTBackRoom PWTBattleRoom',
'airport': 'MistraltonAirport PlaneLeft PlaneRight ShoppingMallNine MembersRoom TubelineBridge',
'icirrus': 'DragonspiralTowerOutside Route8 MoorOfIcirrus IcirrusCitySouthConnectionDummy IcirrusCitySouth IcirrusCityNorth',
'dragonspiral': 'DragonspiralTower1F DragonspiralTower2F DragonspiralTower3F DragonspiralTower4F DragonspiralTower5F DragonspiralTower6F DragonspiralTowerRoof',
'driftveil': 'DriftveilCity',
'mistralton': 'MistraltonCity Route7South Route7Middle Route7North',
'opelucid': 'Route11 OpelucidCity',
}

for (tileset, maps) in tileset_maps.items():
	with open(f'data/tilesets/{tileset}_metatiles.bin', 'rb') as file:
		num_blocks = len(file.read()) // 16
	used_blocks = set()
	for map in maps.split():
		with open(f'maps/{map}.ablk', 'rb') as file:
			used_blocks.update(file.read())
	unused_blocks = set(range(1, num_blocks)) - used_blocks
	print(f'# {tileset}: {" ".join(f"{v:02x}" for v in sorted(unused_blocks))}')
