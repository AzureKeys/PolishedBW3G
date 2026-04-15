MACRO? tileframe
;\1: function pointer
;\2: "$b:xx" VRAM bank and address (optional parameter to function)
	if _NARG == 2
		assert STRLEN("\2") == STRLEN("$b:xx") && \
			STRSLICE("\2", 0, 1) === "$" && STRSLICE("\2", 2, 3) === ":", \
			"\2 is not a valid VRAM $bank:id"
		REDEF tileframe_bank EQUS STRSLICE("\2", 1, 2)
		REDEF tileframe_id EQUS STRSLICE("\2", 3, 5)
		DEF tile_bank = ${tileframe_bank}
		assert tile_bank == 0 || tile_bank == 1, "${x:tile_bank} is not a valid VRAM bank"
		DEF tile_id = ${tileframe_id}
		assert $00 <= tile_id && tile_id <= $ff, "${02x:tile_id} is not a valid tile ID"
		if tile_id < $80
			dw (vTiles2 tile tile_id) | tile_bank
		else
			dw (vTiles1 tile (tile_id - $80)) | tile_bank
		endc
	else
		dw 0
	endc
	dw \1 ; function
ENDM

TilesetUnovaBeachAnim::
TilesetUnovaWestAnim::
TilesetUnovaEastAnim::
TilesetUnovaNorthAnim::
	tileframe ScrollTileDown,           $0:4a
	tileframe ScrollTileDown,           $0:5a
	tileframe ScrollTileLeft,           $0:5b
	tileframe ScrollTileRight,          $0:5c
	tileframe ScrollTileUp,             $0:5d
	tileframe AnimateUnovaWaterTile1,   $0:6d
	tileframe AnimateUnovaWaterTile2,   $0:6e
	tileframe AnimateUnovaWaterTile3,   $0:7d
	tileframe AnimateUnovaWaterTile4,   $0:7e
	tileframe AnimateFlowerTile,        $0:03
	;tileframe AnimateRainTiles,         $0:1c
	tileframe AnimateWaterfallTiles,    $0:10
	tileframe StandingTileFrame8
	tileframe IncWaterFrame
	tileframe DoneTileAnimation

TilesetForestAnim::
TilesetNimbasaAnim::
TilesetParkAnim::
TilesetStriatonAnim::
TilesetDriftveilAnim::
TilesetVillageBridgeAnim::
	tileframe DoNothing
	tileframe DoNothing
	tileframe AnimateUnovaWaterTile1,   $0:6d
	tileframe AnimateUnovaWaterTile2,   $0:6e
	tileframe AnimateUnovaWaterTile3,   $0:7d
	tileframe AnimateUnovaWaterTile4,   $0:7e
	tileframe AnimateFlowerTile,        $0:03
	;tileframe AnimateRainTiles,         $0:1c
	tileframe StandingTileFrame8
	tileframe IncWaterFrame
	tileframe DoneTileAnimation
	
TilesetIcirrusAnim::
	tileframe ScrollTileRightLeft,      $0:08
	tileframe ScrollTileRightLeft,      $0:09
	tileframe ScrollTileRightLeft,      $0:18
	tileframe ScrollTileRightLeft,      $0:19
	tileframe AnimateUnovaWaterTile1,   $0:6d
	tileframe AnimateUnovaWaterTile2,   $0:6e
	tileframe AnimateUnovaWaterTile3,   $0:7d
	tileframe AnimateUnovaWaterTile4,   $0:7e
	tileframe AnimateFlowerTile,        $0:03
	;tileframe AnimateRainTiles,         $0:1c
	tileframe StandingTileFrame8
	tileframe IncWaterFrame
	tileframe DoneTileAnimation

TilesetDreamyardAnim::
	tileframe ScrollTileDown,           $0:6f
	;tileframe AnimateRainTiles,         $0:1c
	tileframe AnimateUnovaWaterTile1,   $0:6d
	tileframe AnimateUnovaWaterTile2,   $0:6e
	tileframe AnimateUnovaWaterTile3,   $0:7d
	tileframe AnimateUnovaWaterTile4,   $0:7e
	tileframe AnimateWaterfallTiles,    $0:27
	tileframe StandingTileFrame8
	tileframe IncWaterFrame
	tileframe DoneTileAnimation

TilesetCasteliaAnim::
TilesetPWTOutsideAnim::
	tileframe DoNothing
	tileframe AnimateUnovaWaterTile1,   $0:6d
	tileframe AnimateUnovaWaterTile2,   $0:6e
	tileframe AnimateUnovaWaterTile3,   $0:7d
	tileframe AnimateUnovaWaterTile4,   $0:7e
	;tileframe AnimateRainTiles,         $0:1c
	tileframe AnimateFountainTile1,     $0:2b
	tileframe AnimateFountainTile2,     $0:3b
	tileframe AnimateFountainTile3,     $0:2d
	tileframe AnimateFountainTile4,     $0:2c
	tileframe AnimateFountainTile5,     $0:3c
	tileframe AnimateFountainTile6,     $0:3d
	tileframe StandingTileFrame8
	tileframe IncWaterFrame
	tileframe IncFountainFrame
	tileframe DoneTileAnimation
	
TilesetOpelucidAnim::
	tileframe ScrollTileRight,          $0:4d
	tileframe ScrollTileDown,           $0:1d
	tileframe AnimateWaterfallTiles,    $0:73
	tileframe AnimateUnovaWaterTile1,   $0:6d
	tileframe AnimateUnovaWaterTile2,   $0:6e
	tileframe AnimateUnovaWaterTile3,   $0:7d
	tileframe AnimateUnovaWaterTile4,   $0:7e
	;tileframe AnimateRainTiles,         $0:1c
	tileframe AnimateFountainTile1,     $0:2b
	tileframe AnimateFountainTile2,     $0:3b
	tileframe AnimateFountainTile3,     $0:2d
	tileframe AnimateFountainTile4,     $0:2c
	tileframe AnimateFountainTile5,     $0:3c
	tileframe AnimateFountainTile6,     $0:3d
	tileframe StandingTileFrame8
	tileframe IncWaterFrame
	tileframe IncFountainFrame
	tileframe DoneTileAnimation
	
TilesetVirbankAnim::
TilesetComplexAnim::
TilesetBridgeAnim::
	tileframe DoNothing
	tileframe DoNothing
	tileframe DoNothing
	tileframe AnimateUnovaWaterTile1,   $0:6d
	tileframe AnimateUnovaWaterTile2,   $0:6e
	tileframe AnimateUnovaWaterTile3,   $0:7d
	tileframe AnimateUnovaWaterTile4,   $0:7e
	;tileframe AnimateRainTiles,         $0:1c
	tileframe DoNothing
	tileframe StandingTileFrame8
	tileframe IncWaterFrame
	tileframe DoneTileAnimation
	
TilesetHouse1Anim::
TilesetPortAnim::
TilesetDesertAnim::
	tileframe DoNothing
	tileframe DoNothing
	tileframe DoNothing
	tileframe AnimateUnovaWaterTile1,   $0:6d
	tileframe AnimateUnovaWaterTile2,   $0:6e
	tileframe AnimateUnovaWaterTile3,   $0:7d
	tileframe AnimateUnovaWaterTile4,   $0:7e
	tileframe DoNothing
	tileframe DoNothing
	tileframe DoNothing
	tileframe StandingTileFrame8
	tileframe IncWaterFrame
	tileframe DoneTileAnimation

TilesetEliteFourRoomAnim::
	tileframe ScrollTileUp,             $0:57
	tileframe AnimateFanTile1,          $0:60
	tileframe AnimateFanTile2,          $0:61
	tileframe AnimateFanTile3,          $0:70
	tileframe AnimateFanTile4,          $0:71
	tileframe ScrollTileUp,             $0:57
	tileframe AnimateComputerTile0,     $0:45
	tileframe AnimateComputerTile1,     $0:55
	tileframe AnimateComputerTile2,     $0:4a
	tileframe StandingTileFrame8
	tileframe DoneTileAnimation

TilesetCaveAnim::
	tileframe ScrollTileRightLeft,      $0:14
	tileframe FlickeringCaveEntrancePalette
	tileframe AnimateWaterfallTiles,    $0:40
	tileframe FlickeringCaveEntrancePalette
	tileframe DoNothing
	tileframe FlickeringCaveEntrancePalette
	tileframe ScrollTileRightLeft,      $0:14
	tileframe FlickeringCaveEntrancePalette
	tileframe DoneTileAnimation

TilesetIcePathAnim::
	tileframe ScrollTileRightLeft,      $0:10
	tileframe FlickeringCaveEntrancePalette
	tileframe DoNothing
	tileframe FlickeringCaveEntrancePalette
	tileframe DoNothing
	tileframe FlickeringCaveEntrancePalette
	tileframe DoneTileAnimation
	
TilesetNacreneAnim::
TilesetMistraltonAnim::
	tileframe DoNothing
	tileframe DoNothing
	tileframe DoNothing
	tileframe DoNothing
	tileframe AnimateFlowerTile,        $0:03
	;tileframe AnimateRainTiles,         $0:1c
	tileframe StandingTileFrame8
	tileframe DoneTileAnimation

TilesetUndergroundAnim::
	tileframe AnimateSpinnerTile,       $0:2e
	tileframe DoNothing
	tileframe DoNothing
	tileframe ScrollTileRightLeft,      $0:7e
	tileframe DoNothing
	tileframe DoNothing
	tileframe DoneTileAnimation

TilesetFacilityAnim::
	tileframe AnimateTurbineTiles,      $0:6c
	tileframe StandingTileFrame8
	tileframe DoNothing
	tileframe AnimateTurbineTiles,      $0:6c
	tileframe StandingTileFrame8
	tileframe DoNothing
	tileframe AnimateTurbineTiles,      $0:6c
	tileframe StandingTileFrame8
	tileframe DoneTileAnimation
	
TilesetAirportAnim::
	tileframe AnimateSkyTiles1Left,     $0:03
	tileframe AnimateSkyTiles2Left,     $0:13
	tileframe AnimateSkyTiles3Left,     $0:23
	tileframe AnimateSkyTiles4Left,     $0:33
	tileframe AnimateSkyTiles1Right,    $0:0c
	tileframe AnimateSkyTiles2Right,    $0:1c
	tileframe AnimateSkyTiles3Right,    $0:2c
	tileframe AnimateSkyTiles4Right,    $0:3c
	tileframe StandingTileFrame8
	tileframe DoneTileAnimation

TilesetJohto1Anim::
TilesetJohto2Anim::
TilesetJohto3Anim::
TilesetJohto4Anim::
TilesetPokeCenterAnim::
TilesetGateAnim::
TilesetLabAnim::
TilesetMartAnim::
TilesetGameCornerAnim::
TilesetHouse3Anim::
TilesetMagnetTrainAnim::
TilesetChampionsRoomAnim::
TilesetBattleTowerAnim::
TilesetBattleFactoryAnim::
TilesetHiddenGrottoAnim::
TilesetLentimasAnim::
TilesetPWTInsideAnim::
	tileframe DoNothing
	tileframe DoneTileAnimation
