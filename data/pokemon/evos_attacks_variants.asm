SECTION "Evolutions and Attacks Variants", ROMX

EvosAttacksPointersVariants::
	dw DudunsparceThreeSegmentEvosAttacks

	dw RattataAlolanEvosAttacks
	dw RaticateAlolanEvosAttacks
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
	
	dw CastformAltEvosAttacks
	dw CastformAltEvosAttacks
	dw CastformAltEvosAttacks
	
	dw CombeeMaleEvosAttacks
	
	dw UnfezantFemaleEvosAttacks
	
	dw BasculinNonWhiteEvosAttacks
	dw BasculinNonWhiteEvosAttacks
	
	dw DarmanitanZenEvosAttacks
	dw DarmanitanGalarianEvosAttacks
	
	dw DeerlingAltEvosAttacks
	dw DeerlingAltEvosAttacks
	dw DeerlingAltEvosAttacks
	
	dw SawsbuckAltEvosAttacks
	dw SawsbuckAltEvosAttacks
	dw SawsbuckAltEvosAttacks
	
	dw FrillishFemaleEvosAttacks
	dw JellicentFemaleEvosAttacks
	
	dw TornadusTherianEvosAttacks
	dw ThundurusTherianEvosAttacks
	dw LandorusTherianEvosAttacks
	
	dw KyuremAltEvosAttacks
	dw KyuremAltEvosAttacks
	
	dw MeloettaPirouetteEvosAttacks
.IndirectEnd::

	evos_attacks DudunsparceThreeSegment
	learnset 1, REVERSAL ; Flail → similar move
	learnset 1, DEFENSE_CURL
	learnset 4, MUD_SLAP
	learnset 8, ROLLOUT
	learnset 12, GLARE
	learnset 16, SCREECH
	learnset 20, ANCIENTPOWER
	learnset 24, DIG ; Drill Run → pre Gen8 move
	learnset 28, BODY_SLAM ; Yawn → pre Gen8 move
	learnset 32, EARTHQUAKE ; Hyper Drill → TM move
	learnset 36, ROOST
	learnset 40, DRAGON_RUSH
	learnset 44, DRAGON_DANCE ; Coil → similar move
	learnset 48, DOUBLE_EDGE
	learnset 52, AIR_SLASH ; Endeavor → pre Gen8 move
	learnset 56, HURRICANE
	learnset 62, HYPER_VOICE ; Boomburst → similar move

	evos_attacks RattataAlolan
	evo_data EVOLVE_LEVEL, 20, RATICATE, ALOLAN_FORM
	learnset 1, TACKLE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 4, QUICK_ATTACK
	learnset 7, FOCUS_ENERGY
	learnset 10, BITE
	learnset 13, PURSUIT ; Laser Focus → pre Gen8 move
	learnset 16, TAKE_DOWN
	learnset 19, PAYBACK ; Assurance → similar move
	learnset 22, CRUNCH
	learnset 25, SUCKER_PUNCH
	learnset 28, SUPER_FANG
	learnset 31, DOUBLE_EDGE
	learnset 34, COUNTER ; Endeavor → egg move

	evos_attacks RaticateAlolan
	learnset 1, SCARY_FACE
	learnset 1, SWORDS_DANCE
	learnset 1, TACKLE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, QUICK_ATTACK
	learnset 1, FOCUS_ENERGY
	learnset 4, QUICK_ATTACK
	learnset 7, FOCUS_ENERGY
	learnset 10, BITE
	learnset 13, PURSUIT ; Laser Focus → pre Gen8 move
	learnset 16, TAKE_DOWN
	learnset 19, PAYBACK ; Assurance → similar move
	learnset 19, SCARY_FACE ; evolution move
	learnset 24, CRUNCH
	learnset 29, SUCKER_PUNCH
	learnset 34, SUPER_FANG
	learnset 39, DOUBLE_EDGE
	learnset 44, COUNTER ; Endeavor → egg move

	evos_attacks RaichuAlolan
	learnset 1, PSYCHIC_M ; evolution move
	learnset 1, SWEET_KISS
	learnset 1, NASTY_PLOT
	learnset 1, CHARM
	learnset 1, THUNDER_WAVE
	learnset 1, DOUBLE_TEAM
	learnset 1, SHOCK_WAVE ; Electro Ball → Gen3/4 TM move
	learnset 1, DOUBLE_KICK ; Feint → LGPE move
	learnset 1, SPARK
	learnset 1, AGILITY
	learnset 1, IRON_TAIL
	learnset 1, VOLT_SWITCH ; Discharge → TM move
	learnset 1, LIGHT_SCREEN
	learnset 1, THUNDER
	learnset 1, WILD_CHARGE ; added pre Gen8 move
	learnset 1, THUNDERSHOCK
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, GROWL
	learnset 1, QUICK_ATTACK
	learnset 5, THUNDERBOLT

	evos_attacks SandshrewAlolan
	evo_data EVOLVE_ITEM, ICE_STONE, SANDSLASH, ALOLAN_FORM
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, DEFENSE_CURL
	learnset 3, ENDURE ; Mist → TM move
	learnset 6, ICE_SHARD ; Powder Snow → egg move
	learnset 9, ROLLOUT
	learnset 12, FURY_CUTTER
	learnset 15, RAPID_SPIN
	learnset 18, METAL_CLAW
	learnset 21, SWIFT
	learnset 24, FURY_STRIKES ; Fury Swipes → similar move
	learnset 27, BARRIER ; Iron Defense → similar move
	learnset 30, SLASH
	learnset 33, IRON_HEAD
	learnset 36, GYRO_BALL
	learnset 39, SWORDS_DANCE
	learnset 42, HAIL ; Snowscape → pre Gen8 move
	learnset 45, BLIZZARD

	evos_attacks SandslashAlolan
	learnset 1, ICICLE_SPEAR ; evolution move
	learnset 1, COUNTER ; Metal Burst → egg move
	learnset 1, DEFENSE_CURL
	learnset 1, ROLLOUT ; Ice Ball → TM move
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, ENDURE ; Mist → TM move
	learnset 1, BLIZZARD
	learnset 1, SWIFT
	learnset 1, FURY_STRIKES ; Fury Swipes → similar move
	learnset 1, ICE_SHARD ; Powder Snow → egg move
	learnset 1, FURY_CUTTER
	learnset 1, RAPID_SPIN
	learnset 1, BARRIER ; Iron Defense → similar move
	learnset 1, GYRO_BALL
	learnset 1, IRON_HEAD
	learnset 1, HAIL ; Snowscape → pre Gen8 move
	learnset 1, ICICLE_CRASH
	learnset 1, METAL_CLAW
	learnset 1, SLASH
	learnset 1, SWORDS_DANCE

	evos_attacks VulpixAlolan
	evo_data EVOLVE_ITEM, ICE_STONE, NINETALES, ALOLAN_FORM
	learnset 1, DISARM_VOICE ; Powder Snow → new move
	learnset 1, LEER ; Tail Whip → similar move
	learnset 4, DISABLE
	learnset 8, ICE_SHARD
	learnset 12, CONFUSE_RAY ; Spite → moved Confuse Ray from Lv20
	learnset 16, ICY_WIND
	learnset 20, PAYBACK ; Confuse Ray → pre Gen8 move
	learnset 24, AURORA_BEAM
	learnset 28, EXTRASENSORY
	learnset 32, ICE_BEAM
	learnset 36, HYPNOSIS ; Imprison → egg move
	learnset 40, HAIL ; Mist → TM move
	learnset 44, SAFEGUARD ; Aurora Veil → pre Gen8 move
	learnset 48, MOONBLAST ; Freeze-Dry → egg move
	learnset 52, BLIZZARD

	evos_attacks NinetalesAlolan
	learnset 1, DISABLE
	learnset 1, HAIL ; Mist → TM move
	learnset 1, ICE_BEAM
	learnset 1, AURORA_BEAM
	learnset 1, CONFUSE_RAY
	learnset 1, PAYBACK ; Spite → pre Gen8 move
	learnset 1, DISARM_VOICE ; Powder Snow → new move
	learnset 1, EXTRASENSORY
	learnset 1, NASTY_PLOT
	learnset 1, ICE_SHARD
	learnset 1, MOONBLAST ; Freeze-Dry → egg move
	learnset 1, SAFEGUARD ; Aurora Veil → pre Gen8 move
	learnset 1, DAZZLINGLEAM
	learnset 1, ICY_WIND
	learnset 1, HYPNOSIS ; Imprison → egg move
	learnset 1, BLIZZARD
	learnset 1, LEER ; Tail Whip → similar move

	evos_attacks MeowthAlolan
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, PERSIAN, ALOLAN_FORM
	learnset 1, TACKLE ; Fake Out → new move
	learnset 1, GROWL
	learnset 4, CHARM ; Feint → egg move
	learnset 8, QUICK_ATTACK ; Scratch → new move
	learnset 12, SWIFT ; Pay Day → TM move
	learnset 16, BITE
	learnset 20, HYPNOSIS ; Taunt → egg move
	learnset 24, FEINT_ATTACK ; Assurance → pre Gen8 move
	learnset 29, FURY_STRIKES ; Fury Swipes → similar move
	learnset 32, SCREECH
	learnset 36, NIGHT_SLASH
	learnset 40, NASTY_PLOT
	learnset 44, PLAY_ROUGH
	learnset 49, DARK_PULSE ; added pre Gen8 move

	evos_attacks PersianAlolan
	learnset 1, TRICK ; Switcheroo → new move
	learnset 1, TACKLE ; Fake Out → new move
	learnset 1, GROWL
	learnset 1, CHARM ; Feint → egg move
	learnset 1, QUICK_ATTACK ; Scratch → new move
	learnset 12, SWIFT ; Pay Day → TM move
	learnset 16, BITE
	learnset 20, HYPNOSIS ; Taunt → egg move
	learnset 24, FEINT_ATTACK ; Assurance → pre Gen8 move
	learnset 31, FURY_STRIKES ; Fury Swipes → similar move
	learnset 36, SCREECH
	learnset 42, NIGHT_SLASH
	learnset 48, NASTY_PLOT
	learnset 54, PLAY_ROUGH
	learnset 61, DARK_PULSE ; added pre Gen8 move

	evos_attacks GeodudeAlolan
	evo_data EVOLVE_LEVEL, 25, GRAVELER, ALOLAN_FORM
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 4, THUNDER_WAVE ; Charge → TM move
	learnset 6, AGILITY ; Rock Polish → similar move
	learnset 10, ROLLOUT
	learnset 12, SPARK
	learnset 16, ROCK_THROW
	learnset 18, TAKE_DOWN ; Smack Down → LGPE move
	learnset 22, THUNDERPUNCH
	learnset 24, ROCK_BLAST ; Self-Destruct → moved Rock Blast from Lv30
	learnset 28, SANDSTORM ; Stealth Rock → TM move
	learnset 30, ROCK_SLIDE ; Rock Blast → TM move
	learnset 34, WILD_CHARGE ; Discharge → TM move
	learnset 36, EXPLOSION
	learnset 40, DOUBLE_EDGE
	learnset 42, STONE_EDGE

	evos_attacks GravelerAlolan
	evo_data EVOLVE_TRADE, LINKING_CORD, GOLEM, ALOLAN_FORM
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 1, THUNDER_WAVE ; Charge → TM move
	learnset 1, AGILITY ; Rock Polish → similar move
	learnset 10, ROLLOUT
	learnset 12, SPARK
	learnset 16, ROCK_THROW
	learnset 18, TAKE_DOWN ; Smack Down → LGPE move
	learnset 22, THUNDERPUNCH
	learnset 24, ROCK_BLAST ; Self-Destruct → moved Rock Blast from Lv30
	learnset 30, SANDSTORM ; Stealth Rock → TM move
	learnset 34, ROCK_SLIDE ; Rock Blast → TM move
	learnset 40, WILD_CHARGE ; Discharge → TM move
	learnset 44, EXPLOSION
	learnset 50, DOUBLE_EDGE
	learnset 54, STONE_EDGE

	evos_attacks GolemAlolan
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 1, THUNDER_WAVE ; Charge → TM move
	learnset 1, AGILITY ; Rock Polish → similar move
	learnset 1, ROLLOUT ; Heavy Slam → Graveler move
	learnset 12, SPARK
	learnset 16, ROCK_THROW
	learnset 18, TAKE_DOWN ; Smack Down → LGPE move
	learnset 22, THUNDERPUNCH
	learnset 24, ROCK_BLAST ; Self-Destruct → moved Rock Blast from Lv30
	learnset 30, SANDSTORM ; Stealth Rock → TM move
	learnset 34, ROCK_SLIDE ; Rock Blast → TM move
	learnset 40, WILD_CHARGE ; Discharge → TM move
	learnset 44, EXPLOSION
	learnset 50, DOUBLE_EDGE
	learnset 54, STONE_EDGE
	learnset 60, GYRO_BALL ; Heavy Slam → TM move (added from Gen8)

	evos_attacks GrimerAlolan
	evo_data EVOLVE_LEVEL, 38, MUK, ALOLAN_FORM
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, HAZE ; Poison Gas → LGPE move
	learnset 4, DEFENSE_CURL ; Harden → similar move
	learnset 7, BITE
	learnset 12, DISABLE
	learnset 15, ACID ; Acid Spray → similar move
	learnset 18, POISON_FANG
	learnset 21, SHADOW_SNEAK ; Minimize → egg move
	learnset 26, TOXIC
	learnset 29, KNOCK_OFF
	learnset 32, CRUNCH
	learnset 37, SCREECH
	learnset 40, GUNK_SHOT
	learnset 43, BARRIER ; Acid Armor → similar move
	learnset 46, CURSE ; Belch → egg move
	learnset 48, EXPLOSION ; Memento → TM move

	evos_attacks MukAlolan
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, HAZE ; Poison Gas → LGPE move
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 1, BITE
	learnset 12, DISABLE
	learnset 15, ACID ; Acid Spray → similar move
	learnset 18, POISON_FANG
	learnset 21, SHADOW_SNEAK ; Minimize → egg move
	learnset 26, TOXIC
	learnset 29, KNOCK_OFF
	learnset 32, CRUNCH
	learnset 37, SCREECH
	learnset 37, TOXIC_SPIKES ; evolution move (Venom Drench → SV TM move)
	learnset 40, GUNK_SHOT
	learnset 46, BARRIER ; Acid Armor → similar move
	learnset 52, CURSE ; Belch → egg move
	learnset 57, EXPLOSION ; Memento → TM move

	evos_attacks ExeggutorAlolan
	learnset 1, SEED_BOMB
	learnset 1, PSYSHOCK
	learnset 1, POWER_WHIP ; Wood Hammer → LGPE move
	learnset 1, LEAF_STORM
	learnset 1, MEGA_DRAIN
	learnset 1, CONFUSION
	learnset 1, HEALINGLIGHT ; Synthesis → similar move
	learnset 1, PSYBEAM ; Bullet Seed → SV TM move
	learnset 1, GIGA_DRAIN
	learnset 1, EXTRASENSORY
	learnset 1, ANCIENTPOWER ; Uproar → egg move
	learnset 1, SLEEP_POWDER ; Worry Seed → pre Gen8
	learnset 1, SOLAR_BEAM
	learnset 1, GROWTH
	learnset 1, DRAGON_PULSE ; evolution move (Dragon Hammer → LGPE move)
	learnset 1, ABSORB
	learnset 1, HYPNOSIS
	learnset 1, REFLECT
	learnset 1, LEECH_SEED

	evos_attacks MeowthGalarian
	evo_data EVOLVE_LEVEL, 28, PERRSERKER, PLAIN_FORM
	learnset 1, TACKLE ; Fake Out → new move
	learnset 1, GROWL
	learnset 4, HONE_CLAWS
	learnset 8, QUICK_ATTACK ; Scratch → new move
	learnset 12, FALSE_SWIPE ; Pay Day → TM move
	learnset 16, METAL_CLAW
	learnset 20, CURSE ; Taunt → egg move
	learnset 24, SWAGGER
	learnset 29, FURY_STRIKES ; Fury Swipes → similar move
	learnset 32, SCREECH
	learnset 36, SLASH
	learnset 40, IRON_TAIL ; Metal Sound → SwSh TR move
	learnset 44, THRASH

	evos_attacks PonytaGalarian
	evo_data EVOLVE_LEVEL, 40, RAPIDASH, GALARIAN_FORM
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 5, LEER ; Tail Whip → similar move
	learnset 10, CONFUSION
	learnset 15, DISARM_VOICE ; Fairy Wind → similar move
	learnset 20, AGILITY
	learnset 25, PSYBEAM
	learnset 30, STOMP
	learnset 35, HEALINGLIGHT ; Heal Pulse → egg move (Morning Sun)
	learnset 41, TAKE_DOWN
	learnset 45, DAZZLINGLEAM
	learnset 50, PSYCHIC_M
	learnset 55, FUTURE_SIGHT ; Healing Wish → SwSh TR move

	evos_attacks RapidashGalarian
	learnset 1, MEGAHORN
	learnset 1, TACKLE
	learnset 1, QUICK_ATTACK
	learnset 1, GROWL
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, CONFUSION
	learnset 15, DISARM_VOICE ; Fairy Wind → similar move
	learnset 20, AGILITY
	learnset 25, PSYBEAM
	learnset 30, STOMP
	learnset 35, HEALINGLIGHT ; Heal Pulse → egg move (Morning Sun)
	learnset 39, ZEN_HEADBUTT ; evolution move (Psycho Cut → SwSh TM move)
	learnset 43, TAKE_DOWN
	learnset 49, DAZZLINGLEAM
	learnset 56, PSYCHIC_M
	learnset 63, FUTURE_SIGHT ; Healing Wish → SwSh TR move

	evos_attacks SlowpokeGalarian
	evo_data EVOLVE_TRADE, KINGS_ROCK, SLOWKING, GALARIAN_FORM
	evo_data EVOLVE_LEVEL, 37, SLOWBRO, GALARIAN_FORM
	learnset 1, TACKLE
	learnset 1, CURSE
	learnset 3, GROWL
	learnset 6, ACID
	learnset 9, SAFEGUARD ; Yawn → TM move
	learnset 12, CONFUSION
	learnset 15, DISABLE
	learnset 18, WATER_PULSE
	learnset 21, HEADBUTT
	learnset 24, ZEN_HEADBUTT
	learnset 27, AMNESIA
	learnset 30, SLUDGE_BOMB ; Surf → TM move
	learnset 33, RECOVER ; Slack Off → similar move
	learnset 36, PSYCHIC_M
	learnset 39, BELLY_DRUM ; Psych Up → egg move
	learnset 42, RAIN_DANCE
	learnset 45, FUTURE_SIGHT ; Heal Pulse → egg move

	evos_attacks SlowbroGalarian
	learnset 1, BELLY_DRUM ; added Slowpoke move
	learnset 1, DEFENSE_CURL ; Withdraw → similar move
	learnset 1, TACKLE
	learnset 1, CURSE
	learnset 1, GROWL
	learnset 1, ACID
	learnset 9, SAFEGUARD ; Yawn → TM move
	learnset 12, CONFUSION
	learnset 15, DISABLE
	learnset 18, WATER_PULSE
	learnset 21, HEADBUTT
	learnset 24, ZEN_HEADBUTT
	learnset 27, AMNESIA
	learnset 30, SLUDGE_BOMB ; Surf → TM move
	learnset 33, RECOVER ; Slack Off → similar move
	learnset 36, GUNK_SHOT ; evolution move (Shell Side Arm → SV TM move)
	learnset 36, PSYCHIC_M
	learnset 41, RAZOR_SHELL ; Psych Up → SwSh TM move
	learnset 46, RAIN_DANCE
	learnset 51, FUTURE_SIGHT ; Heal Pulse → egg move

	evos_attacks WeezingGalarian
	learnset 1, DAZZLINGLEAM ; evolution move (Double Hit → TM move)
	learnset 1, HAZE ; Poison Gas → moved Haze from Lv24
	learnset 1, TACKLE
	learnset 1, ACID ; Smog → new move
	learnset 1, MUD_SLAP ; Aromatic Mist → new move
	learnset 12, TOXIC_SPIKES ; Clear Smog → egg move
	learnset 16, PAYBACK ; Assurance → Gen7 TM move
	learnset 20, VENOSHOCK ; Sludge → TM move
	learnset 24, HEAL_BELL ; Fairy Wind → SwSh move (Aromatherapy)
	learnset 28, PSYBEAM ; Self-Destruct → egg move
	learnset 32, SLUDGE_BOMB
	learnset 38, TOXIC
	learnset 44, GUNK_SHOT ; Belch → SV TM move
	learnset 50, EXPLOSION
	learnset 56, PAIN_SPLIT ; Memento → Gen7 tutor move
	learnset 62, DESTINY_BOND
	learnset 68, PLAY_ROUGH ; Misty Terrain → SV TM move

	evos_attacks MrMimeGalarian
	evo_data EVOLVE_LEVEL, 42, MR__RIME
	learnset 1, CHARM ; Copycat → egg move
	learnset 1, ENCORE
	learnset 1, PROTECT
	learnset 1, TRICK ; Recycle → pre Gen8 move
	learnset 1, SUBSTITUTE ; Mimic → pre Gen8 move
	learnset 1, LIGHT_SCREEN
	learnset 1, REFLECT
	learnset 1, SAFEGUARD
	learnset 1, DAZZLINGLEAM
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, RAPID_SPIN
	learnset 1, BATON_PASS
	learnset 1, ICE_SHARD
	learnset 12, CONFUSION
	learnset 16, ICICLE_SPEAR ; Ally Switch → SwSh TM move
	learnset 20, ICY_WIND
	learnset 24, DOUBLE_KICK
	learnset 28, PSYBEAM
	learnset 32, HYPNOSIS
	learnset 36, MIRROR_COAT
	learnset 40, SUCKER_PUNCH
	learnset 44, ICE_BEAM ; Freeze-Dry → TM move
	learnset 48, PSYCHIC_M
	learnset 52, CONFUSE_RAY ; Teeter Dance → egg move

	evos_attacks SlowkingGalarian
	learnset 1, BELLY_DRUM ; added Slowpoke move
	learnset 1, POWER_GEM
	learnset 1, NASTY_PLOT
	learnset 1, SWAGGER
	learnset 1, FUTURE_SIGHT
	learnset 1, TOXIC
	learnset 1, PSYSHOCK ; evolution move (Eerie Spell → TM move)
	learnset 1, TACKLE
	learnset 1, CURSE
	learnset 1, GROWL
	learnset 1, ACID
	learnset 9, SAFEGUARD ; Yawn → TM move
	learnset 12, CONFUSION
	learnset 15, DISABLE
	learnset 18, WATER_PULSE
	learnset 21, HEADBUTT
	learnset 24, ZEN_HEADBUTT
	learnset 27, AMNESIA
	learnset 30, SLUDGE_BOMB ; Surf → TM move
	learnset 33, RECOVER ; Slack Off → similar move
	learnset 36, PSYCHIC_M
	learnset 39, RAZOR_SHELL ; Psych Up → SwSh TM move
	learnset 42, RAIN_DANCE
	learnset 45, FUTURE_SIGHT ; Heal Pulse → egg move

	evos_attacks CorsolaGalarian
	evo_data EVOLVE_LEVEL, 38, CURSOLA, PLAIN_FORM
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 5, NIGHT_SHADE ; Astonish → moved Night Shade from Lv45
	learnset 10, DISABLE
	learnset 15, CONFUSE_RAY ; Spite → egg move
	learnset 20, ANCIENTPOWER
	learnset 25, HEX
	learnset 30, CURSE
	learnset 35, GIGA_DRAIN ; Strength Sap → TM move
	learnset 40, POWER_GEM
	learnset 45, SHADOW_BALL ; Night Shade → TM move
	learnset 50, DESTINY_BOND ; Grudge → egg move
	learnset 55, MIRROR_COAT

	evos_attacks DarumakaGalarian
	evo_data EVOLVE_ITEM, ICE_STONE, DARMANITAN, GALARIAN_FORM
	learnset 1, ICE_SHARD ; Powder Snow → new move
	learnset 1, TACKLE
	learnset 4, FOCUS_ENERGY ; Taunt → SwSh TR move
	learnset 8, BITE
	learnset 12, ICY_WIND ; Avalanche → new move
	learnset 16, BULK_UP ; Work Up → TM move
	learnset 20, ICE_FANG
	learnset 24, HEADBUTT
	learnset 28, ICE_PUNCH
	learnset 32, BODY_SLAM ; Uproar → SwSh TR move
	learnset 36, BELLY_DRUM
	learnset 40, BLIZZARD
	learnset 44, THRASH
	learnset 48, REVERSAL ; Superpower → SwSh TR move

	evos_attacks DarmanitanGalarian
	learnset 1, ICICLE_CRASH ; evolution move
	learnset 1, ICE_SHARD ; Powder Snow → new move
	learnset 1, TACKLE
	learnset 4, FOCUS_ENERGY ; Taunt → SwSh TR move
	learnset 8, BITE
	learnset 12, ICY_WIND ; Avalanche → new move
	learnset 16, BULK_UP ; Work Up → TM move
	learnset 20, ICE_FANG
	learnset 24, HEADBUTT
	learnset 28, ICE_PUNCH
	learnset 32, BODY_SLAM ; Uproar → SwSh TR move
	learnset 38, BELLY_DRUM
	learnset 44, BLIZZARD
	learnset 50, THRASH
	learnset 56, REVERSAL ; Superpower → SwSh TR move
	
	evos_attacks YamaskGalarian
	evo_data EVOLVE_LEVEL, 34, RUNERIGUS
	learnset 1, LICK ; Astonish → similar move
	learnset 1, PROTECT
	learnset 4, HAZE
	learnset 8, NIGHT_SHADE
	learnset 12, DISABLE
	learnset 16, FEINT_ATTACK ; Brutal Swing → similar move
	learnset 20, BULLDOZE ; Crafty Shield → TM move
	learnset 24, HEX
	learnset 28, MEAN_LOOK
	learnset 32, BODY_SLAM ; Slam → similar move
	learnset 36, CURSE
	learnset 40, SHADOW_BALL
	learnset 44, EARTHQUAKE
	learnset 48, NASTY_PLOT ; Power Split/Guard Split → egg move
	learnset 52, DESTINY_BOND
	
	; evos_attacks StunfiskGalarian
	; learnset 1, MUD_SLAP
	; learnset 1, TACKLE
	; learnset 1, WATER_GUN
	; learnset 1, METAL_CLAW
	; learnset 5, ENDURE
	; learnset 10, MUD_SHOT
	; learnset 15, REVENGE
	; learnset 20, FLASH_CANNON ; Metal Sound → TM move
	; learnset 25, SUCKER_PUNCH
	; learnset 30, BARRIER ; Iron Defense → similar move
	; learnset 35, CRUNCH ; Bounce → LZA move
	; learnset 40, EARTH_POWER ; Muddy Water → SwSh TR move
	; learnset 45, IRON_TAIL ; Snap Trap → new move
	; learnset 50, REVERSAL ; Flail → similar move
	; learnset 55, EARTHQUAKE ; Fissure → LZA move

	evos_attacks GrowlitheHisuian
	evo_data EVOLVE_ITEM, FIRE_STONE, ARCANINE, HISUIAN_FORM
	learnset 1, EMBER
	learnset 1, LEER
	learnset 4, FORESIGHT ; Howl → Kantonian Growlithe move (Odor Sleuth)
	learnset 8, BITE
	learnset 12, FLAME_CHARGE ; Flame Wheel → TM move
	learnset 16, HEALINGLIGHT ; Helping Hand → egg move (Morning Sun)
	learnset 24, FIRE_FANG
	learnset 28, POWER_GEM ; Retaliate → SV TM move
	learnset 32, CRUNCH
	learnset 36, TAKE_DOWN
	learnset 40, FLAMETHROWER
	learnset 44, ROAR
	learnset 48, ROCK_SLIDE
	learnset 52, REVERSAL
	learnset 56, FLARE_BLITZ
	learnset 60, HEAD_SMASH ; added egg move

	evos_attacks ArcanineHisuian
	learnset 1, FLAME_CHARGE ; Flame Wheel → TM move
	learnset 1, HEALINGLIGHT ; Helping Hand → egg move (Morning Sun)
	learnset 1, AGILITY
	learnset 1, FIRE_FANG
	learnset 1, POWER_GEM ; Retaliate → SV TM move
	learnset 1, CRUNCH
	learnset 1, TAKE_DOWN
	learnset 1, ROAR
	learnset 1, ROCK_SLIDE
	learnset 1, REVERSAL
	learnset 1, FLARE_BLITZ
	learnset 1, HEAD_SMASH ; added egg move
	learnset 1, ROCK_THROW
	learnset 1, EXTREMESPEED ; evolution move
	learnset 1, EMBER
	learnset 1, LEER
	learnset 1, FORESIGHT ; Howl → pre Gen8 move (Odor Sleuth)
	learnset 1, BITE
	learnset 5, FLAMETHROWER
	learnset 64, HEAD_SMASH ; Raging Fury → egg move

	evos_attacks SneaselHisuian
	evo_data EVOLVE_HOLDING, RAZOR_CLAW, TR_MORNDAY, SNEASLER
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, LEER
	learnset 1, LOW_KICK ; Rock Smash → SV TM move
	learnset 6, QUICK_ATTACK ; Taunt → moved Quick Attack from Lv12
	learnset 12, SWIFT ; Quick Attack → LA move
	learnset 18, METAL_CLAW
	learnset 24, POISON_JAB
	learnset 30, BRICK_BREAK
	learnset 36, HONE_CLAWS
	learnset 42, SLASH
	learnset 48, AGILITY
	learnset 54, SCREECH
	learnset 60, CLOSE_COMBAT
	
	; evos_attacks SamurottHisuian
	; learnset 1, SUCKER_PUNCH
	; learnset 1, MEGAHORN
	; learnset 1, SLASH
	; learnset 1, TACKLE
	; learnset 1, LEER ; Tail Whip → similar move
	; learnset 1, WATER_GUN
	; learnset 13, FOCUS_ENERGY
	; learnset 18, RAZOR_SHELL
	; learnset 21, FURY_CUTTER
	; learnset 25, WATER_PULSE
	; learnset 29, AERIAL_ACE
	; learnset 34, AQUA_JET
	; learnset 36, NIGHT_SLASH ; evolution move (Ceaseless Edge → LA move)
	; learnset 39, ENCORE
	; learnset 46, AQUA_TAIL
	; learnset 51, SACRED_SWORD ; Retaliate → egg move
	; learnset 58, SWORDS_DANCE
	; learnset 63, HYDRO_PUMP
	; learnset 68, MEGAHORN ; added Lv1 move

	; evos_attacks LilligantHisuian
	; learnset 1, DRAGON_DANCE ; Victory Dance → new move
	; learnset 1, LEAF_BLADE
	; learnset 1, MEGA_DRAIN
	; learnset 1, RAZOR_LEAF ; Magical Leaf → new move
	; learnset 1, SLEEP_POWDER
	; learnset 1, GIGA_DRAIN
	; learnset 1, LEECH_SEED
	; learnset 1, HEAL_BELL ; After You → pre Gen8 move (Aromatherapy)
	; learnset 1, ENERGY_BALL
	; learnset 1, HEALINGLIGHT ; Synthesis → similar move
	; learnset 1, SUNNY_DAY
	; learnset 1, ENCORE ; Entrainment → egg move
	; learnset 1, LEAF_STORM
	; learnset 1, DRAIN_PUNCH ; evolution move (Victory Dance → LA move)
	; learnset 1, ABSORB
	; learnset 1, GROWTH
	; learnset 1, SAFEGUARD ; Helping Hand → TM move
	; learnset 1, STUN_SPORE
	; learnset 5, CLOSE_COMBAT ; Axe Kick → LA move
	
	; evos_attacks ZoruaHisuian
	; evo_data EVOLVE_LEVEL, 30, ZOROARK, HISUIAN_FORM
	; learnset 1, TACKLE ; Scratch → similar move
	; learnset 1, LEER
	; learnset 4, PURSUIT ; Torment → Unovan Zorua move
	; learnset 8, HONE_CLAWS
	; learnset 12, SHADOW_SNEAK
	; learnset 16, CURSE
	; learnset 20, SWIFT ; Taunt → LA move
	; learnset 24, KNOCK_OFF
	; learnset 28, SLASH ; Spite → LA move
	; learnset 32, AGILITY
	; learnset 36, SHADOW_BALL
	; learnset 40, EXTRASENSORY ; Bitter Malice → LA move
	; learnset 44, NASTY_PLOT
	; learnset 48, PHANTOM_FORCE ; Foul Play → SV TM move
	
	; evos_attacks ZoroarkHisuian
	; learnset 1, U_TURN
	; learnset 1, TACKLE ; Scratch → similar move
	; learnset 1, LEER
	; learnset 1, PURSUIT ; Torment → Unovan Zorua move
	; learnset 1, HONE_CLAWS
	; learnset 12, SHADOW_SNEAK
	; learnset 16, CURSE
	; learnset 20, SWIFT ; Taunt → LA move
	; learnset 24, KNOCK_OFF
	; learnset 28, SLASH ; Spite → LA move
	; learnset 29, SHADOW_CLAW ; evolution move
	; learnset 34, AGILITY
	; learnset 40, SHADOW_BALL
	; learnset 46, EXTRASENSORY ; Bitter Malice → LA move
	; learnset 52, NASTY_PLOT
	; learnset 58, PHANTOM_FORCE ; Foul Play → SV TM move
	
	; evos_attacks BraviaryHisuian
	; learnset 1, CLOSE_COMBAT ; Superpower → SV TM move
	; learnset 1, BRAVE_BIRD ; Sky Attack → Rufflet move
	; learnset 1, PECK
	; learnset 1, LEER
	; learnset 1, HONE_CLAWS
	; learnset 1, WING_ATTACK
	; learnset 18, FURY_STRIKES ; Tailwind → pre Gen8 move (Fury Attack)
	; learnset 24, SCARY_FACE
	; learnset 30, AERIAL_ACE
	; learnset 36, SLASH
	; learnset 42, ROAR ; Whirlwind → similar move
	; learnset 48, DRILL_PECK ; Crush Claw → new move
	; learnset 54, PSYCHIC_M ; evolution move (Esper Wing → TM move)
	; learnset 57, AIR_SLASH
	; learnset 64, ROOST ; Defog → egg move
	; learnset 72, THRASH
	; learnset 80, HURRICANE
	
	evos_attacks CastformAlt
	learnset 1, TACKLE
	learnset 10, WATER_GUN
	learnset 10, EMBER
	learnset 10, ICE_SHARD ; Powder Snow → new move
	learnset 15, HEADBUTT
	learnset 20, RAIN_DANCE
	learnset 20, SUNNY_DAY
	learnset 20, HAIL
	learnset 25, WEATHER_BALL
	learnset 35, HYDRO_PUMP
	learnset 35, FIRE_BLAST
	learnset 35, BLIZZARD
	learnset 45, HURRICANE
	
	evos_attacks CombeeMale
	learnset 1, STRING_SHOT ; Sweet Scent → HGSS tutor move
	learnset 1, GUST
	learnset 1, BUG_BITE
	learnset 29, BUG_BUZZ ; Struggle Bug → pre Gen8 move
	
	evos_attacks UnfezantFemale
	learnset 1, GUST
	learnset 1, GROWL
	learnset 1, LEER
	learnset 1, QUICK_ATTACK
	learnset 12, PROTECT ; Taunt → moved Detect from Lv34
	learnset 16, AERIAL_ACE ; Air Cutter → TM move
	learnset 20, SWAGGER
	learnset 26, CHARM ; FeatherDance → similar move
	learnset 36, AIR_SLASH ; Detect → moved Air Slash from Lv38
	learnset 42, DRILL_PECK ; Air Slash → new move
	learnset 50, ROOST
	learnset 58, FACADE ; Tailwind → pre Gen8 move
	learnset 66, BRAVE_BIRD ; Sky Attack → SwSh TR move

	evos_attacks BasculinNonWhite
	learnset 1, WATER_GUN
	learnset 1, LEER ; Tail Whip → similar move
	learnset 4, TACKLE
	learnset 8, REVERSAL ; Flail → similar move
	learnset 12, AQUA_JET
	learnset 16, BITE
	learnset 20, SCARY_FACE
	learnset 24, HEADBUTT
	learnset 28, AGILITY ; Soak → egg move
	learnset 32, CRUNCH
	learnset 36, TAKE_DOWN
	learnset 40, ZEN_HEADBUTT ; Final Gambit → LA move
	learnset 44, AQUA_TAIL ; Wave Crash → pre Gen9 move
	learnset 48, THRASH
	learnset 52, DOUBLE_EDGE
	learnset 56, HEAD_SMASH
	
	evos_attacks DarmanitanZen
	learnset 1, EMBER
	learnset 1, TACKLE
	learnset 1, SWAGGER ; Taunt → pre Gen8 move
	learnset 1, BITE
	learnset 12, FIRE_SPIN ; Incinerate → SwSh TM move
	learnset 16, BULK_UP ; Work Up → TM move
	learnset 20, FIRE_FANG
	learnset 24, HEADBUTT
	learnset 28, FIRE_PUNCH
	learnset 32, FACADE ; Uproar → pre Gen8 move
	learnset 34, HAMMER_ARM ; evolution move
	learnset 38, BELLY_DRUM
	learnset 44, FLARE_BLITZ
	learnset 50, THRASH
	learnset 56, REVERSAL ; Superpower → SwSh TR move
	
	evos_attacks DeerlingAlt
	evo_data EVOLVE_LEVEL, 34, SAWSBUCK, NO_FORM ; preserve pre-evo form
	learnset 1, TACKLE
	learnset 4, GROWL
	learnset 7, MUD_SLAP ; Sand Attack → similar move
	learnset 10, DOUBLE_KICK
	learnset 13, LEECH_SEED
	learnset 16, FEINT_ATTACK ; Bullet Seed → pre Gen8 move
	learnset 20, TAKE_DOWN
	learnset 24, ZEN_HEADBUTT
	learnset 28, ENERGY_BALL
	learnset 32, CHARM
	learnset 37, DOUBLE_EDGE
	learnset 42, SOLAR_BEAM
	learnset 47, HI_JUMP_KICK ; added pre Gen8 move (Jump Kick)
	
	evos_attacks SawsbuckAlt
	learnset 1, MEGAHORN
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 1, MUD_SLAP ; Sand Attack → similar move
	learnset 10, DOUBLE_KICK
	learnset 13, LEECH_SEED
	learnset 16, FEINT_ATTACK ; Bullet Seed → pre Gen8 move
	learnset 20, TAKE_DOWN
	learnset 24, ZEN_HEADBUTT
	learnset 28, ENERGY_BALL
	learnset 33, LEAF_BLADE ; evolution move (Horn Leech → new move)
	learnset 36, CHARM
	learnset 44, DOUBLE_EDGE
	learnset 52, SOLAR_BEAM
	learnset 60, HI_JUMP_KICK ; added pre Gen8 move (Jump Kick)
	
	evos_attacks FrillishFemale
	evo_data EVOLVE_LEVEL, 40, JELLICENT, NO_FORM ; preserve pre-evo form
	learnset 1, ABSORB
	learnset 1, WATER_GUN
	learnset 4, POISON_STING
	learnset 8, NIGHT_SHADE
	learnset 12, WATER_PULSE
	learnset 16, RAIN_DANCE
	learnset 20, HEX
	learnset 24, BRINE
	learnset 28, RECOVER
	learnset 32, SHADOW_BALL
	learnset 36, SCALD ; Whirlpool → TM move
	learnset 41, HYDRO_PUMP
	learnset 44, DESTINY_BOND
	learnset 48, GIGA_DRAIN ; Water Spout → TM move
	
	evos_attacks JellicentFemale
	learnset 1, BARRIER ; Acid Armor → similar move
	learnset 1, ABSORB
	learnset 1, WATER_GUN
	learnset 1, POISON_STING
	learnset 1, NIGHT_SHADE
	learnset 12, WATER_PULSE
	learnset 16, RAIN_DANCE
	learnset 20, HEX
	learnset 24, BRINE
	learnset 28, RECOVER
	learnset 32, SHADOW_BALL
	learnset 36, SCALD ; Whirlpool → TM move
	learnset 43, HYDRO_PUMP
	learnset 48, DESTINY_BOND
	learnset 54, GIGA_DRAIN ; Water Spout → TM move
	
	evos_attacks TornadusTherian
	learnset 1, QUICK_ATTACK ; Astonish → new move
	learnset 1, GUST
	learnset 5, LEER
	learnset 10, SWAGGER
	learnset 15, BITE
	learnset 20, ACROBATICS ; Air Cutter → TM move
	learnset 25, AGILITY
	learnset 30, REVENGE ; Tailwind → pre Gen8 move
	learnset 35, AIR_SLASH
	learnset 40, CRUNCH
	learnset 45, EXTRASENSORY
	learnset 50, DARK_PULSE ; Uproar → pre Gen8 move
	learnset 55, HAMMER_ARM
	learnset 60, RAIN_DANCE
	learnset 65, HURRICANE
	learnset 70, THRASH
	learnset 75, ROOST ; Bleakwind Storm → new move
	
	evos_attacks ThundurusTherian
	learnset 1, QUICK_ATTACK ; Astonish → new move
	learnset 1, THUNDERSHOCK
	learnset 5, LEER
	learnset 10, SWAGGER
	learnset 15, BITE
	learnset 20, SHOCK_WAVE
	learnset 25, AGILITY
	learnset 30, REVENGE ; Charge → pre Gen8 move
	learnset 35, VOLT_SWITCH
	learnset 40, CRUNCH
	learnset 45, THUNDERBOLT ; Discharge → TM move
	learnset 50, DARK_PULSE ; Uproar → pre Gen8 move
	learnset 55, HAMMER_ARM
	learnset 60, RAIN_DANCE
	learnset 65, THUNDER
	learnset 70, THRASH
	learnset 75, NASTY_PLOT ; Wildbolt Storm → pre Gen8 move
	
	evos_attacks LandorusTherian
	learnset 1, MUD_SHOT ; Sand Tomb → pre Gen8 move
	learnset 1, ROCK_THROW ; Smack Down → pre Gen8 move
	learnset 5, LEER
	learnset 10, MEAN_LOOK ; Block → similar move
	learnset 15, BULLDOZE
	learnset 20, ROCK_BLAST ; Rock Tomb → new move
	learnset 30, PAYBACK ; Imprison → TM move
	learnset 35, ROCK_SLIDE
	learnset 40, EARTH_POWER
	learnset 45, EXTRASENSORY
	learnset 50, STONE_EDGE
	learnset 55, HAMMER_ARM
	learnset 60, SANDSTORM
	learnset 65, EARTHQUAKE
	learnset 70, OUTRAGE
	learnset 75, IRON_TAIL ; Fissure → SwSh TR move
	learnset 80, SWORDS_DANCE ; Sandsear Storm → pre Gen9 move
	
	evos_attacks KyuremAlt
	learnset 1, DRAGONBREATH
	learnset 1, DRAGON_RAGE ; Noble Roar → pre Gen8 move
	learnset 1, ANCIENTPOWER
	learnset 1, ICE_FANG ; Freeze-Dry → SV TM move
	learnset 8, SLASH
	learnset 16, ICY_WIND ; Endeavor → pre Gen8 move
	learnset 24, DRAGON_PULSE
	learnset 32, ICE_BEAM
	learnset 40, HYPER_VOICE
	learnset 48, SCARY_FACE
	learnset 56, BLIZZARD
	learnset 64, DRAGON_DANCE ; Imprison → SV TM move
	learnset 72, OUTRAGE
	learnset 80, DRAGON_RUSH ; Glaciate → new move
	learnset 88, HYPER_BEAM ; Sheer Cold → TM move
	
	evos_attacks MeloettaPirouette
	learnset 1, SWIFT ; Round → SV TM move
	learnset 1, QUICK_ATTACK
	learnset 1, CONFUSION
	learnset 1, SING
	learnset 21, CONFUSE_RAY ; Teeter Dance → similar move
	learnset 26, ACROBATICS
	learnset 31, PSYBEAM
	learnset 36, TRI_ATTACK ; Echoed Voice → new move
	learnset 43, U_TURN
	learnset 50, DRAIN_PUNCH ; Relic Song → SV TM move
	learnset 57, PSYCHIC_M
	learnset 64, HYPER_VOICE
	learnset 71, SKILL_SWAP ; Role Play → SV TM move
	learnset 78, CLOSE_COMBAT
	learnset 85, PERISH_SONG

	end_evos_attacks
