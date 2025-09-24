; Pointer table for evolutions and attacks.

; These are grouped together since they're both checked at level-up.

EvosAttacksPointers::
	table_width 2
	
	
	
	assert_table_length NUM_SPECIES

	dw DudunsparceEvosAttacks

	dw RattataAlolanEvosAttacks
	dw RaticatePlainEvosAttacks ; RaticateAlolan
	dw RaichuAlolanEvosAttacks
	dw SandshrewAlolanEvosAttacks
	dw SandslashAlolanEvosAttacks
	dw VulpixAlolanEvosAttacks
	dw NinetalesAlolanEvosAttacks
	dw MeowthAlolanEvosAttacks
	dw PersianAlolanEvosAttacks
	dw GeodudeAlolanEvosAttacks
	dw GravelerAlolanEvosAttacks
	dw GolemAlolanEvosAttacks
	dw GrimerAlolanEvosAttacks
	dw MukAlolanEvosAttacks
	dw ExeggutorAlolanEvosAttacks

	dw MeowthGalarianEvosAttacks
	dw PonytaGalarianEvosAttacks
	dw RapidashGalarianEvosAttacks
	dw SlowpokeGalarianEvosAttacks
	dw SlowbroGalarianEvosAttacks
	dw WeezingGalarianEvosAttacks
	dw MrMimeGalarianEvosAttacks
	dw SlowkingGalarianEvosAttacks
	dw CorsolaGalarianEvosAttacks
	dw DarumakaGalarianEvosAttacks
	dw DarmanitanGalarianEvosAttacks
	dw YamaskGalarianEvosAttacks

	dw GrowlitheHisuianEvosAttacks
	dw ArcanineHisuianEvosAttacks
	dw SneaselHisuianEvosAttacks
	
	dw CastformEvosAttacks
	dw CastformEvosAttacks
	dw CastformEvosAttacks
	
	dw CombeeEvosAttacks
	
	dw UnfezantEvosAttacks
	
	dw BasculinEvosAttacks
	dw BasculinEvosAttacks
	
	dw DarmanitanPlainEvosAttacks
	dw DarmanitanGalarianEvosAttacks
	
	dw DeerlingEvosAttacks
	dw DeerlingEvosAttacks
	dw DeerlingEvosAttacks
	
	dw SawsbuckEvosAttacks
	dw SawsbuckEvosAttacks
	dw SawsbuckEvosAttacks
	
	dw FrillishEvosAttacks
	dw JellicentEvosAttacks
	
	dw TornadusEvosAttacks
	dw ThundurusEvosAttacks
	dw LandorusEvosAttacks
	
	dw KyuremEvosAttacks
	dw KyuremEvosAttacks
	
	dw MeloettaEvosAttacks

	assert_table_length NUM_EXT_POKEMON
