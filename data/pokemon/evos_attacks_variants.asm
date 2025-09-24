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
	learnset 1, DEFENSE_CURL
	learnset 3, ROLLOUT
	learnset 8, PURSUIT
	learnset 11, SCREECH
	learnset 13, MUD_SLAP
	learnset 16, FURY_STRIKES ; Yawn → event move (Fury Attack)
	learnset 18, ANCIENTPOWER
	learnset 21, BODY_SLAM
	learnset 23, DRAGON_RAGE ; Drill Run → new move
	learnset 26, ROOST
	learnset 28, TAKE_DOWN
	learnset 31, DRAGON_DANCE ; Coil → new move
	learnset 33, DIG
	learnset 36, GLARE
	learnset 38, DOUBLE_EDGE
	learnset 41, EARTHQUAKE ; Endeavor → TM move
	learnset 43, AIR_SLASH
	learnset 46, HEX ; Dragon Rush → egg move
	learnset 48, ENDURE
	learnset 51, REVERSAL ; Flail → similar move
	learnset 53, HURRICANE
	learnset 56, HYPER_VOICE ; Boomburst → similar move
	learnset 58, OUTRAGE ; new move

	evos_attacks RattataAlolan
	evo_data EVOLVE_LEVEL, 20, RATICATE, ALOLAN_FORM
	learnset 1, TACKLE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 4, QUICK_ATTACK
	learnset 7, FOCUS_ENERGY
	learnset 10, BITE
	learnset 13, PURSUIT
	learnset 19, SUCKER_PUNCH
	learnset 22, CRUNCH
	learnset 25, FEINT_ATTACK ; Assurance → similar move
	learnset 28, SUPER_FANG
	learnset 31, DOUBLE_EDGE
	learnset 34, COUNTER ; Endeavor → egg move

	evos_attacks RaticateAlolan
	learnset 1, SCARY_FACE ; evolution move
	learnset 1, SWORDS_DANCE
	learnset 1, TACKLE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 4, QUICK_ATTACK
	learnset 7, FOCUS_ENERGY
	learnset 10, BITE
	learnset 13, PURSUIT
	learnset 19, SUCKER_PUNCH
	learnset 24, CRUNCH
	learnset 29, FEINT_ATTACK ; Assurance → similar move
	learnset 34, SUPER_FANG
	learnset 39, DOUBLE_EDGE
	learnset 44, COUNTER ; Endeavor → egg move

	evos_attacks RaichuAlolan
	learnset 1, THUNDERSHOCK
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, QUICK_ATTACK
	learnset 1, THUNDERBOLT
	learnset 1, PSYCHIC_M ; evolution move
	learnset 1, REVERSAL ; Sw/Sh move

	evos_attacks SandshrewAlolan
	evo_data EVOLVE_ITEM, ICE_STONE, SANDSLASH, ALOLAN_FORM
	learnset 1, DEFENSE_CURL
	learnset 3, FOCUS_ENERGY ; Bide → new move
	learnset 5, ICY_WIND ; Powder Snow → similar move
	learnset 7, DEFENSE_CURL ; Ice Ball → TM move
	learnset 9, RAPID_SPIN
	learnset 11, PIN_MISSILE ; Fury Cutter → new move
	learnset 14, METAL_CLAW
	learnset 17, SWIFT
	learnset 20, FURY_STRIKES ; Fury Swipes → similar move
	learnset 23, ROLLOUT ; Iron Defense → TM move
	learnset 26, SLASH
	learnset 30, IRON_HEAD
	learnset 34, GYRO_BALL
	learnset 38, SWORDS_DANCE
	learnset 42, HAIL
	learnset 46, BLIZZARD

	evos_attacks SandslashAlolan
	learnset 1, ICICLE_SPEAR ; evolution move
	learnset 1, COUNTER ; Metal Burst → similar move
	learnset 1, MIRROR_COAT ; Metal Burst → similar move
	learnset 1, ICICLE_CRASH ; evolution move
	learnset 1, SLASH
	learnset 1, DEFENSE_CURL
	learnset 1, ROLLOUT ; Ice Ball → TM move
	learnset 1, METAL_CLAW
	learnset 48, HAIL
	learnset 53, BLIZZARD

	evos_attacks VulpixAlolan
	evo_data EVOLVE_ITEM, ICE_STONE, NINETALES, ALOLAN_FORM
	learnset 1, ICY_WIND ; Powder Snow → similar move
	learnset 4, GROWL ; Tail Whip → new move
	learnset 7, ROAR
	learnset 9, CHARM ; Baby-Doll Eyes → similar move
	learnset 10, ICE_SHARD
	learnset 12, CONFUSE_RAY
	learnset 15, DISARM_VOICE ; Icy Wind → new move
	learnset 18, NIGHT_SHADE ; Payback → new move
	learnset 20, HAIL ; Mist → TM move
	learnset 23, FEINT_ATTACK
	learnset 26, HEX
	learnset 28, AURORA_BEAM
	learnset 31, EXTRASENSORY
	learnset 34, SAFEGUARD
	learnset 36, ICE_BEAM
	learnset 39, HYPNOSIS ; Imprison → egg move
	learnset 42, BLIZZARD
	learnset 44, SHADOW_BALL ; Grudge → TM move
	learnset 47, DISABLE ; Captivate → egg move
	learnset 50, MOONBLAST ; Sheer Cold → egg move
	learnset 53, HEALINGLIGHT ; new move

	evos_attacks NinetalesAlolan
	learnset 1, DAZZLINGLEAM ; evolution move
	learnset 1, NASTY_PLOT
	learnset 1, ICE_BEAM
	learnset 1, ICE_SHARD
	learnset 1, CONFUSE_RAY
	learnset 1, SAFEGUARD

	evos_attacks MeowthAlolan
	evo_data EVOLVE_LEVEL, 28, PERSIAN, ALOLAN_FORM
	learnset 1, GROWL
	learnset 6, BITE
	learnset 14, FURY_STRIKES ; Fury Swipes → similar move
	learnset 17, SCREECH
	learnset 22, FEINT_ATTACK
	learnset 25, PURSUIT ; Taunt → egg move
	learnset 33, SLASH
	learnset 38, NASTY_PLOT
	learnset 41, THIEF ; Assurance → TM move
	learnset 46, CHARM ; Captivate → egg move
	learnset 49, NIGHT_SLASH
	learnset 55, DARK_PULSE

	evos_attacks PersianAlolan
	learnset 1, BUBBLE_BEAM ; RBY TM move
	learnset 1, PLAY_ROUGH
	learnset 1, SWIFT ; evolution move
	learnset 1, GROWL
	learnset 6, BITE
	learnset 14, FURY_STRIKES ; Fury Swipes → similar move
	learnset 17, SCREECH
	learnset 22, FEINT_ATTACK
	learnset 25, PURSUIT ; Taunt → egg move
	learnset 32, POWER_GEM
	learnset 37, SLASH
	learnset 44, NASTY_PLOT
	learnset 49, THIEF ; Assurance → TM move
	learnset 56, CHARM ; Captivate → egg move
	learnset 61, NIGHT_SLASH
	learnset 65, DARK_PULSE

	evos_attacks GeodudeAlolan
	evo_data EVOLVE_LEVEL, 25, GRAVELER, ALOLAN_FORM
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 4, THUNDERSHOCK ; Charge → new move
	learnset 6, RAPID_SPIN ; Rock Polish → event move
	learnset 10, ROLLOUT
	learnset 12, SPARK
	learnset 16, ROCK_THROW
	learnset 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnset 22, THUNDERPUNCH
	learnset 24, ROCK_BLAST ; Self-Destruct → Rock Blast
	learnset 28, SANDSTORM ; Stealth Rock → TM move
	learnset 30, ROCK_SLIDE ; Rock Blast → TM move
	learnset 34, WILD_CHARGE ; Discharge → new move
	learnset 36, EXPLOSION
	learnset 40, DOUBLE_EDGE
	learnset 42, STONE_EDGE

	evos_attacks GravelerAlolan
	evo_data EVOLVE_TRADE, LINKING_CORD, GOLEM, ALOLAN_FORM
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 4, THUNDERSHOCK ; Charge → new move
	learnset 6, RAPID_SPIN ; Rock Polish → event move
	learnset 10, ROLLOUT
	learnset 12, SPARK
	learnset 16, ROCK_THROW
	learnset 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnset 22, THUNDERPUNCH
	learnset 24, ROCK_BLAST ; Self-Destruct → Rock Blast
	learnset 30, SANDSTORM ; Stealth Rock → TM move
	learnset 34, ROCK_SLIDE ; Rock Blast → TM move
	learnset 40, WILD_CHARGE ; Discharge → new move
	learnset 44, EXPLOSION
	learnset 50, DOUBLE_EDGE
	learnset 54, STONE_EDGE

	evos_attacks GolemAlolan
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 4, THUNDERSHOCK ; Charge → new move
	learnset 6, RAPID_SPIN ; Rock Polish → event move
	learnset 10, ROLLOUT
	learnset 12, SPARK
	learnset 16, ROCK_THROW
	learnset 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnset 22, THUNDERPUNCH
	learnset 24, ROCK_BLAST ; Self-Destruct → Rock Blast
	learnset 30, SANDSTORM ; Stealth Rock → TM move
	learnset 34, ROCK_SLIDE ; Rock Blast → TM move
	learnset 40, WILD_CHARGE ; Discharge → new move
	learnset 44, EXPLOSION
	learnset 50, DOUBLE_EDGE
	learnset 54, STONE_EDGE
	learnset 60, GYRO_BALL ; Heavy Slam → similar move

	evos_attacks GrimerAlolan
	evo_data EVOLVE_LEVEL, 38, MUK, ALOLAN_FORM
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, ACID ; Poison Gas → new move
	learnset 4, DEFENSE_CURL ; Harden → similar move
	learnset 7, BITE
	learnset 12, DISABLE
	learnset 15, VENOSHOCK ; Acid Spray → tutor move
	learnset 18, HAZE ; Poison Fang → egg move
	learnset 21, MINIMIZE
	learnset 26, FEINT_ATTACK ; Fling → new move
	learnset 29, KNOCK_OFF
	learnset 32, CRUNCH
	learnset 37, SCREECH
	learnset 40, GUNK_SHOT
	learnset 43, PAIN_SPLIT ; Acid Armor → HGSS tutor move
	learnset 46, TOXIC_SPIKES ; Belch → SV TM move

	evos_attacks MukAlolan
	learnset 1, MOONBLAST ; LGPE move
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, ACID ; Poison Gas → new move
	learnset 4, DEFENSE_CURL ; Harden → similar move
	learnset 7, BITE
	learnset 12, DISABLE
	learnset 15, VENOSHOCK ; Acid Spray → tutor move
	learnset 18, HAZE ; Poison Fang → egg move
	learnset 21, MINIMIZE
	learnset 26, FEINT_ATTACK ; Fling → new move
	learnset 29, KNOCK_OFF
	learnset 32, CRUNCH
	learnset 37, SCREECH
	learnset 40, GUNK_SHOT
	learnset 46, PAIN_SPLIT ; Acid Armor → HGSS tutor move
	learnset 52, TOXIC_SPIKES ; Belch → SV TM move

	evos_attacks ExeggutorAlolan
	learnset 1, TACKLE ; Barrage → new move
	learnset 1, HYPNOSIS
	learnset 1, CONFUSION
	learnset 1, DRAGON_PULSE ; evolution move
	learnset 17, DRAGON_RAGE ; Psyshock → new move
	learnset 27, ZEN_HEADBUTT ; Egg Bomb → tutor move
	learnset 37, POWER_WHIP ; Wood Hammer → new move
	learnset 47, OUTRAGE ; Leaf Storm → S/M TM move

	evos_attacks MeowthGalarian
	evo_data EVOLVE_LEVEL, 28, PERRSERKER, PLAIN_FORM
	learnset 1, GROWL
	learnset 4, HONE_CLAWS
	learnset 16, METAL_CLAW
	learnset 20, PURSUIT ; Taunt → new move
	learnset 24, SWAGGER
	learnset 29, FURY_STRIKES ; Fury Swipes → similar move
	learnset 32, SCREECH
	learnset 36, SLASH
	learnset 40, CRUNCH ; Metal Sound → TR move
	learnset 44, THRASH

	evos_attacks PonytaGalarian
	evo_data EVOLVE_LEVEL, 40, RAPIDASH, GALARIAN_FORM
	learnset 1, GROWL
	learnset 1, TACKLE
	learnset 4, LEER ; Tail Whip → similar move
	learnset 9, CONFUSION
	learnset 13, DISARM_VOICE ; Fairy Wind → similar move
	learnset 17, STOMP
	learnset 21, HEALINGLIGHT ; Heal Pulse → similar move
	learnset 25, PSYBEAM
	learnset 29, TAKE_DOWN
	learnset 33, DAZZLINGLEAM
	learnset 37, AGILITY
	learnset 41, PSYCHIC_M
	learnset 45, EXTREMESPEED ; Bounce → new move
	learnset 49, MOONBLAST ; Healing Wish → new move

	evos_attacks RapidashGalarian
	learnset 1, PLAY_ROUGH ; evolution move
	learnset 1, MEGAHORN
	learnset 1, GROWL
	learnset 1, TACKLE
	learnset 4, LEER ; Tail Whip → similar move
	learnset 9, CONFUSION
	learnset 13, DISARM_VOICE ; Fairy Wind → similar move
	learnset 17, STOMP
	learnset 21, HEALINGLIGHT ; Heal Pulse → similar move
	learnset 25, PSYBEAM
	learnset 29, TAKE_DOWN
	learnset 33, DAZZLINGLEAM
	learnset 37, AGILITY
	learnset 41, PSYCHIC_M
	learnset 45, EXTREMESPEED ; Bounce → new move
	learnset 49, MOONBLAST ; Healing Wish → new move

	evos_attacks SlowpokeGalarian
	evo_data EVOLVE_TRADE, KINGS_ROCK, SLOWKING, GALARIAN_FORM
	evo_data EVOLVE_LEVEL, 37, SLOWBRO, GALARIAN_FORM
	learnset 1, CURSE
	learnset 1, TACKLE
	learnset 5, GROWL
	learnset 9, ACID
	learnset 14, CONFUSION
	learnset 19, DISABLE
	learnset 23, HEADBUTT
	learnset 28, WATER_PULSE
	learnset 32, ZEN_HEADBUTT
	learnset 36, SAFEGUARD ; Slack Off → egg move
	learnset 41, AMNESIA
	learnset 45, PSYCHIC_M
	learnset 49, RAIN_DANCE
	learnset 54, BELLY_DRUM ; Psych Up → egg move
	learnset 58, RECOVER ; Heal Pulse → similar move

	evos_attacks SlowbroGalarian
	learnset 1, GUNK_SHOT ; Shell Side Arm → similar move ; evolution move
	learnset 1, CURSE
	learnset 1, TACKLE
	learnset 5, GROWL
	learnset 9, ACID
	learnset 14, CONFUSION
	learnset 19, DISABLE
	learnset 23, HEADBUTT
	learnset 28, WATER_PULSE
	learnset 32, ZEN_HEADBUTT
	learnset 36, SAFEGUARD ; Slack Off → egg move
	learnset 43, AMNESIA
	learnset 49, PSYCHIC_M
	learnset 55, RAIN_DANCE
	learnset 62, BELLY_DRUM ; Psych Up → egg move
	learnset 68, RECOVER ; Heal Pulse → similar move

	evos_attacks WeezingGalarian
	learnset 1, SAFEGUARD ; evolution move
	learnset 1, TACKLE
	learnset 4, GUST ; Smog → new move
	learnset 12, ENDURE ; Assurance → TM move
	learnset 15, WILL_O_WISP ; Clear Smog → TM move
	learnset 18, SCREECH ; Sludge → Sw/Sh TM move
	learnset 26, HAZE ; Aromatherapy → Kantonian move
	learnset 29, GYRO_BALL
	learnset 34, PLAY_ROUGH ; Sludge Bomb → Sw/Sh TR move
	learnset 40, EXPLOSION
	learnset 46, DESTINY_BOND
	learnset 51, PAIN_SPLIT ; Belch → HGSS tutor move
	learnset 57, MOONBLAST ; Memento → new move

	evos_attacks MrMimeGalarian
	evo_data EVOLVE_LEVEL, 42, MR__RIME
	MrRimeEvosAttacks:
	learnset 1, RECOVER ; Slack Off → similar move
	learnset 1, ENCORE
	learnset 1, PROTECT
	learnset 1, LIGHT_SCREEN
	learnset 1, REFLECT
	learnset 1, SAFEGUARD
	learnset 1, DAZZLINGLEAM
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, RAPID_SPIN
	learnset 1, BATON_PASS
	learnset 1, ICE_SHARD
	learnset 12, CONFUSION
	learnset 20, ICY_WIND
	learnset 24, DOUBLE_KICK
	learnset 28, PSYBEAM
	learnset 32, HYPNOSIS
	learnset 36, MIRROR_COAT
	learnset 40, SUCKER_PUNCH
	learnset 44, ICE_BEAM ; Freeze-Dry → TR move
	learnset 48, PSYCHIC_M
	learnset 52, CONFUSE_RAY ; Teeter Dance → egg move

	evos_attacks SlowkingGalarian
	learnset 1, HEX ; Eerie Spell → Sw/Sh TR move ; evolution move
	learnset 1, POWER_GEM
	learnset 1, HIDDEN_POWER
	learnset 1, CURSE
	learnset 1, TACKLE
	learnset 5, GROWL
	learnset 9, ACID
	learnset 14, CONFUSION
	learnset 19, DISABLE
	learnset 23, HEADBUTT
	learnset 28, WATER_PULSE
	learnset 32, ZEN_HEADBUTT
	learnset 36, NASTY_PLOT
	learnset 41, SWAGGER
	learnset 45, PSYCHIC_M
	learnset 49, RAIN_DANCE ; Trump Card → TM move
	learnset 54, BELLY_DRUM ; Psych Up → egg move
	learnset 58, RECOVER ; Heal Pulse → similar move

	evos_attacks CorsolaGalarian
	evo_data EVOLVE_LEVEL, 38, CURSOLA, PLAIN_FORM
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 10, DISABLE
	learnset 15, HAZE ; Spite → egg move
	learnset 20, ANCIENTPOWER
	learnset 25, HEX
	learnset 30, CURSE
	learnset 35, GIGA_DRAIN ; Strength Sap → TM move
	learnset 40, POWER_GEM
	learnset 45, NIGHT_SHADE
	learnset 50, HYDRO_PUMP ; Grudge → TR move
	learnset 55, MIRROR_COAT

	evos_attacks DarumakaGalarian
	evo_data EVOLVE_ITEM, ICE_STONE, DARMANITAN, GALARIAN_FORM
	learnset 1, ICY_WIND ; Powder Snow → similar move
	learnset 4, GROWL ; Tail Whip → new move
	learnset 7, ROAR
	learnset 9, CHARM ; Baby-Doll Eyes → similar move
	learnset 10, ICE_SHARD
	learnset 12, CONFUSE_RAY
	learnset 15, DISARM_VOICE ; Icy Wind → new move
	learnset 18, NIGHT_SHADE ; Payback → new move
	learnset 20, HAIL ; Mist → TM move
	learnset 23, FEINT_ATTACK
	learnset 26, HEX
	learnset 28, AURORA_BEAM
	learnset 31, EXTRASENSORY
	learnset 34, SAFEGUARD
	learnset 36, ICE_BEAM
	learnset 39, HYPNOSIS ; Imprison → egg move
	learnset 42, BLIZZARD
	learnset 44, SHADOW_BALL ; Grudge → TM move
	learnset 47, DISABLE ; Captivate → egg move
	learnset 50, MOONBLAST ; Sheer Cold → egg move
	learnset 53, HEALINGLIGHT ; new move

	evos_attacks DarmanitanGalarian
	learnset 1, ICY_WIND ; Powder Snow → similar move
	learnset 4, GROWL ; Tail Whip → new move
	learnset 7, ROAR
	learnset 9, CHARM ; Baby-Doll Eyes → similar move
	learnset 10, ICE_SHARD
	learnset 12, CONFUSE_RAY
	learnset 15, DISARM_VOICE ; Icy Wind → new move
	learnset 18, NIGHT_SHADE ; Payback → new move
	learnset 20, HAIL ; Mist → TM move
	learnset 23, FEINT_ATTACK
	learnset 26, HEX
	learnset 28, AURORA_BEAM
	learnset 31, EXTRASENSORY
	learnset 34, SAFEGUARD
	learnset 36, ICE_BEAM
	learnset 39, HYPNOSIS ; Imprison → egg move
	learnset 42, BLIZZARD
	learnset 44, SHADOW_BALL ; Grudge → TM move
	learnset 47, DISABLE ; Captivate → egg move
	learnset 50, MOONBLAST ; Sheer Cold → egg move
	learnset 53, HEALINGLIGHT ; new move
	
	evos_attacks YamaskGalarian
	evo_data EVOLVE_LEVEL, 34, RUNERIGUS
	learnset 1, PROTECT
	learnset 5, DISABLE
	learnset 9, HAZE
	learnset 13, NIGHT_SHADE
	learnset 17, HEX
	learnset 21, WILL_O_WISP
	;learnset 25, OMINOUS_WIND
	learnset 29, CURSE
	learnset 33, PAIN_SPLIT ; Power Split / Guard Split
	learnset 37, SHADOW_BALL
	learnset 41, CONFUSE_RAY ; Grudge
	learnset 45, MEAN_LOOK
	learnset 49, DESTINY_BOND

	evos_attacks GrowlitheHisuian
	evo_data EVOLVE_ITEM, FIRE_STONE, ARCANINE, HISUIAN_FORM
	learnset 1, GROWL
	learnset 1, BITE
	learnset 1, ROAR
	learnset 6, EMBER
	learnset 8, LEER
	learnset 10, SAFEGUARD ; Odor Sleuth → egg move
	learnset 12, BATON_PASS ; Helping Hand → new move
	learnset 17, FIRE_SPIN ; Flame Wheel → egg move
	learnset 19, REVERSAL
	learnset 21, ROCK_BLAST ; Fire Fang → new move
	learnset 23, TAKE_DOWN
	learnset 28, FLAME_CHARGE ; Flame Burst → TM move
	learnset 30, AGILITY
	learnset 32, ROCK_SLIDE
	learnset 34, FLAMETHROWER
	learnset 39, CRUNCH
	learnset 41, POWER_GEM ; Heat Wave → new move
	learnset 43, OUTRAGE
	learnset 45, PLAY_ROUGH ; Flare Blitz → LGPE move
	learnset 49, FLARE_BLITZ

	evos_attacks ArcanineHisuian
	learnset 1, BULK_UP ; new move
	learnset 1, GROWL
	learnset 1, BITE
	learnset 1, ROAR
	learnset 1, FLAME_CHARGE
	learnset 1, TAKE_DOWN
	learnset 1, EXTREMESPEED ; evolution move

	evos_attacks SneaselHisuian
	evo_data EVOLVE_HOLDING, RAZOR_CLAW, TR_MORNDAY, SNEASLER
	learnset 1, LEER
	learnset 1, BITE ; Taunt → egg move
	learnset 8, QUICK_ATTACK
	learnset 10, FEINT_ATTACK
	learnset 14, LOW_KICK ; Rock Smash → Low Kick
	learnset 16, FURY_STRIKES ; Fury Swipes → similar move
	learnset 20, AGILITY
	learnset 22, METAL_CLAW
	learnset 25, HONE_CLAWS
	learnset 28, POISON_JAB
	learnset 32, SCREECH
	learnset 35, SLASH
	learnset 40, SWORDS_DANCE
	learnset 44, X_SCISSOR ; Punishment → TM move
	learnset 47, CLOSE_COMBAT
	learnset 50, GUNK_SHOT ; SV TM move
	
	evos_attacks CastformAlt
	learnset 1, POWER_GEM
	learnset 1, SHADOW_BALL ; Phantom Force → TM move
	learnset 1, FLAMETHROWER ; Mystical Fire → TM move
	learnset 1, DAZZLINGLEAM ; Magical Leaf → TM move ; evolution move
	learnset 1, GROWL
	learnset 1, DISARM_VOICE ; new move
	learnset 1, CONFUSION ; Spite → new move
	
	evos_attacks CombeeMale
	learnset 1, ABSORB
	learnset 4, GROWTH
	learnset 7, POISON_STING
	learnset 10, STUN_SPORE
	learnset 13, MEGA_DRAIN
	learnset 16, LEECH_SEED
	;learnset 19, MAGICAL_LEAF
	learnset 22, SING ; GrassWhistle
	learnset 25, GIGA_DRAIN
	learnset 28, TOXIC_SPIKES
	;learnset 31, SWEET_SCENT
	learnset 34, VENOSHOCK ; Ingrain
	;learnset 37, PETAL_BLIZZARD
	learnset 40, TOXIC
	; Skipped Aromatherapy
	learnset 43, HEALINGLIGHT ; Synthesis
	learnset 46, PETAL_DANCE
	
	evos_attacks UnfezantFemale
	learnset 1, GUST
	learnset 1, GROWL
	learnset 1, LEER
	learnset 1, QUICK_ATTACK
	learnset 4, GROWL
	learnset 8, LEER
	learnset 11, QUICK_ATTACK
	;learnset 15, AIR_CUTTER
	learnset 18, ROOST
	learnset 23, PROTECT ; Detect
	learnset 27, THIEF ; Taunt
	learnset 32, AIR_SLASH
	learnset 38, DRILL_PECK ; Razor Wind
	learnset 44, CHARM ; FeatherDance
	learnset 49, SWAGGER
	learnset 55, FACADE
	; Skipped Tailwind
	learnset 60, BRAVE_BIRD ; Sky Attack

	evos_attacks BasculinNonWhite
	learnset 1, TACKLE
	learnset 1, LEER
	learnset 1, WATER_GUN
	learnset 5, HEADBUTT
	learnset 7, BITE
	learnset 9, AQUA_JET
	learnset 14, TAKE_DOWN
	learnset 17, CRUNCH
	learnset 20, AQUA_TAIL
	learnset 23, RAIN_DANCE ; Soak
	learnset 26, DOUBLE_EDGE
	learnset 30, SCARY_FACE
	learnset 34, REVERSAL ; Flail
	;learnset 38, FINAL_GAMBIT
	learnset 42, THRASH
	learnset 46, ZEN_HEADBUTT ; Head Smash
	
	evos_attacks DarmanitanZen
	;learnset 1, HAMMER_ARM
	learnset 1, TACKLE
	learnset 1, ROLLOUT
	learnset 1, EMBER ; Incinerate
	learnset 3, ROLLOUT
	learnset 6, EMBER ; Incinerate
	;learnset 11, FIRE_FANG
	learnset 14, HEADBUTT
	learnset 17, HYPER_VOICE ; Uproar
	learnset 19, FACADE
	learnset 22, FIRE_PUNCH
	learnset 25, BULK_UP ; Work Up
	learnset 27, THRASH
	learnset 30, BELLY_DRUM
	learnset 33, FLARE_BLITZ
	;learnset 34, HAMMER_ARM
	learnset 39, SWAGGER ; Taunt
	;learnset 54, OVERHEAT
	
	evos_attacks DeerlingAlt
	evo_data EVOLVE_LEVEL, 34, SAWSBUCK, NO_FORM ; preserve pre-evo form
	learnset 1, TACKLE
	learnset 4, GROWL
	learnset 7, MUD_SLAP ; Sand-Attack
	learnset 10, DOUBLE_KICK
	learnset 13, LEECH_SEED
	learnset 16, FEINT_ATTACK
	learnset 20, TAKE_DOWN
	learnset 24, HI_JUMP_KICK ; Jump Kick
	learnset 28, HEALINGLIGHT ; Aromatherapy
	learnset 32, ENERGY_BALL
	learnset 36, CHARM
	;learnset 41, NATURE_POWER
	learnset 46, DOUBLE_EDGE
	learnset 51, SOLAR_BEAM
	
	evos_attacks SawsbuckAlt
	learnset 1, MEGAHORN
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 1, MUD_SLAP ; Sand-Attack
	learnset 1, DOUBLE_KICK
	learnset 4, GROWL
	learnset 7, MUD_SLAP ; Sand-Attack
	learnset 10, DOUBLE_KICK
	learnset 13, LEECH_SEED
	learnset 16, FEINT_ATTACK
	learnset 20, TAKE_DOWN
	learnset 24, HI_JUMP_KICK ; Jump Kick
	learnset 28, HEALINGLIGHT ; Aromatherapy
	learnset 32, ENERGY_BALL
	learnset 33, MEGAHORN ; Horn Leech
	learnset 36, CHARM
	;learnset 44, NATURE_POWER
	learnset 52, DOUBLE_EDGE
	learnset 60, SOLAR_BEAM
	
	evos_attacks FrillishFemale
	evo_data EVOLVE_LEVEL, 40, JELLICENT, NO_FORM ; preserve pre-evo form
	learnset 1, WATER_GUN ; Bubble
	learnset 5, ABSORB
	learnset 9, NIGHT_SHADE
	learnset 13, BUBBLE_BEAM
	learnset 17, RECOVER
	learnset 22, WATER_PULSE
	learnset 27, HEX ; Ominous Wind
	learnset 32, SCALD ; Brine
	learnset 37, RAIN_DANCE
	learnset 43, SHADOW_BALL ; Hex
	learnset 49, HYDRO_PUMP
	learnset 55, GIGA_DRAIN ; Wring Out
	
	evos_attacks JellicentFemale
	learnset 1, GIGA_DRAIN ; Wring Out
	learnset 1, WATER_GUN ; Bubble
	learnset 1, ABSORB
	learnset 1, NIGHT_SHADE
	learnset 5, ABSORB
	learnset 9, NIGHT_SHADE
	learnset 13, BUBBLE_BEAM
	learnset 17, RECOVER
	learnset 22, WATER_PULSE
	learnset 27, HEX ; Ominous Wind
	learnset 32, SCALD ; Brine
	learnset 37, RAIN_DANCE
	learnset 45, SHADOW_BALL ; Hex
	learnset 53, HYDRO_PUMP
	learnset 61, GIGA_DRAIN ; Wring Out
	
	evos_attacks TornadusTherian
	learnset 1, QUICK_ATTACK
	learnset 1, METAL_CLAW
	learnset 1, SCREECH
	;learnset 7, FURY_CUTTER
	;learnset 11, LOCK_ON
	;learnset 18, FLAME_WHEEL
	learnset 22, ROAR ; Magnet Bomb
	learnset 29, SLASH
	learnset 33, BODY_SLAM ; Metal Sound
	;learnset 40, SIGNAL_BEAM
	learnset 44, TRI_ATTACK
	learnset 51, X_SCISSOR
	learnset 55, BUG_BUZZ
	learnset 62, SCARY_FACE ; Simple Beam
	learnset 66, ZAP_CANNON
	learnset 73, HYPER_BEAM
	learnset 77, EXPLOSION ; SelfDestruct
	
	evos_attacks ThundurusTherian
	learnset 1, QUICK_ATTACK
	learnset 1, METAL_CLAW
	learnset 1, SCREECH
	;learnset 7, FURY_CUTTER
	;learnset 11, LOCK_ON
	;learnset 18, FLAME_WHEEL
	learnset 22, ROAR ; Magnet Bomb
	learnset 29, SLASH
	learnset 33, BODY_SLAM ; Metal Sound
	;learnset 40, SIGNAL_BEAM
	learnset 44, TRI_ATTACK
	learnset 51, X_SCISSOR
	learnset 55, BUG_BUZZ
	learnset 62, SCARY_FACE ; Simple Beam
	learnset 66, ZAP_CANNON
	learnset 73, HYPER_BEAM
	learnset 77, EXPLOSION ; SelfDestruct
	
	evos_attacks LandorusTherian
	learnset 1, QUICK_ATTACK
	learnset 1, METAL_CLAW
	learnset 1, SCREECH
	;learnset 7, FURY_CUTTER
	;learnset 11, LOCK_ON
	;learnset 18, FLAME_WHEEL
	learnset 22, ROAR ; Magnet Bomb
	learnset 29, SLASH
	learnset 33, BODY_SLAM ; Metal Sound
	;learnset 40, SIGNAL_BEAM
	learnset 44, TRI_ATTACK
	learnset 51, X_SCISSOR
	learnset 55, BUG_BUZZ
	learnset 62, SCARY_FACE ; Simple Beam
	learnset 66, ZAP_CANNON
	learnset 73, HYPER_BEAM
	learnset 77, EXPLOSION ; SelfDestruct
	
	evos_attacks KyuremAlt
	learnset 1, QUICK_ATTACK
	learnset 1, METAL_CLAW
	learnset 1, SCREECH
	;learnset 7, FURY_CUTTER
	;learnset 11, LOCK_ON
	;learnset 18, FLAME_WHEEL
	learnset 22, ROAR ; Magnet Bomb
	learnset 29, SLASH
	learnset 33, BODY_SLAM ; Metal Sound
	;learnset 40, SIGNAL_BEAM
	learnset 44, TRI_ATTACK
	learnset 51, X_SCISSOR
	learnset 55, BUG_BUZZ
	learnset 62, SCARY_FACE ; Simple Beam
	learnset 66, ZAP_CANNON
	learnset 73, HYPER_BEAM
	learnset 77, EXPLOSION ; SelfDestruct
	
	evos_attacks MeloettaPirouette
	learnset 1, QUICK_ATTACK
	learnset 1, METAL_CLAW
	learnset 1, SCREECH
	;learnset 7, FURY_CUTTER
	;learnset 11, LOCK_ON
	;learnset 18, FLAME_WHEEL
	learnset 22, ROAR ; Magnet Bomb
	learnset 29, SLASH
	learnset 33, BODY_SLAM ; Metal Sound
	;learnset 40, SIGNAL_BEAM
	learnset 44, TRI_ATTACK
	learnset 51, X_SCISSOR
	learnset 55, BUG_BUZZ
	learnset 62, SCARY_FACE ; Simple Beam
	learnset 66, ZAP_CANNON
	learnset 73, HYPER_BEAM
	learnset 77, EXPLOSION ; SelfDestruct

	end_evos_attacks
