SECTION "Evolutions and Attacks Kanto", ROMX

EvosAttacksPointersKanto::
	dw RattataPlainEvosAttacks
	dw RaticatePlainEvosAttacks
	dw PikachuEvosAttacks
	dw RaichuPlainEvosAttacks
	dw SandshrewPlainEvosAttacks
	dw SandslashPlainEvosAttacks
	dw NidoranFEvosAttacks
	dw NidorinaEvosAttacks
	dw NidoqueenEvosAttacks
	dw NidoranMEvosAttacks
	dw NidorinoEvosAttacks
	dw NidokingEvosAttacks
	dw ClefairyEvosAttacks
	dw ClefableEvosAttacks
	dw VulpixPlainEvosAttacks
	dw NinetalesPlainEvosAttacks
	dw JigglypuffEvosAttacks
	dw WigglytuffEvosAttacks
	dw ZubatEvosAttacks
	dw GolbatEvosAttacks
	dw ParasEvosAttacks
	dw ParasectEvosAttacks
	dw MeowthPlainEvosAttacks
	dw PersianPlainEvosAttacks
	dw PsyduckEvosAttacks
	dw GolduckEvosAttacks
	dw MankeyEvosAttacks
	dw PrimeapeEvosAttacks
	dw GrowlithePlainEvosAttacks
	dw ArcaninePlainEvosAttacks
	dw PoliwagEvosAttacks
	dw PoliwhirlEvosAttacks
	dw PoliwrathEvosAttacks
	dw GeodudePlainEvosAttacks
	dw GravelerPlainEvosAttacks
	dw GolemPlainEvosAttacks
	dw PonytaPlainEvosAttacks
	dw RapidashPlainEvosAttacks
	dw SlowpokePlainEvosAttacks
	dw SlowbroPlainEvosAttacks
	dw MagnemiteEvosAttacks
	dw MagnetonEvosAttacks
	dw SeelEvosAttacks
	dw DewgongEvosAttacks
	dw GrimerPlainEvosAttacks
	dw MukPlainEvosAttacks
	dw GastlyEvosAttacks
	dw HaunterEvosAttacks
	dw GengarEvosAttacks
	dw OnixEvosAttacks
	dw ExeggcuteEvosAttacks
	dw ExeggutorPlainEvosAttacks
	dw LickitungEvosAttacks
	dw KoffingEvosAttacks
	dw WeezingPlainEvosAttacks
	dw TangelaEvosAttacks
	dw KangaskhanEvosAttacks
	dw HorseaEvosAttacks
	dw SeadraEvosAttacks
	dw StaryuEvosAttacks
	dw StarmieEvosAttacks
	dw MrMimePlainEvosAttacks
	dw ScytherEvosAttacks
	dw ElectabuzzEvosAttacks
	dw MagmarEvosAttacks
	dw PinsirEvosAttacks
	dw LaprasEvosAttacks
	dw DittoEvosAttacks
	dw EeveeEvosAttacks
	dw VaporeonEvosAttacks
	dw JolteonEvosAttacks
	dw FlareonEvosAttacks
	dw SnorlaxEvosAttacks
	dw DratiniEvosAttacks
	dw DragonairEvosAttacks
	dw DragoniteEvosAttacks
.IndirectEnd::

	evos_attacks RattataPlain
	evo_data EVOLVE_LEVEL, 20, RATICATE
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

	evos_attacks RaticatePlain
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

	evos_attacks Pikachu
	evo_data EVOLVE_ITEM, THUNDERSTONE, RAICHU, PLAIN_FORM
	evo_data EVOLVE_ITEM, ODD_SOUVENIR, RAICHU, ALOLAN_FORM
	learnset 1, THUNDERSHOCK
	learnset 1, LEER ; Tail Whip → similar move
	learnset 5, GROWL
	learnset 7, CHARM ; Play Nice → Pichu move
	learnset 10, QUICK_ATTACK
	learnset 13, DOUBLE_KICK ; Electro Ball → LGPE move
	learnset 18, THUNDER_WAVE
	learnset 21, MUD_SLAP ; Feint → GSC TM move
	learnset 23, DOUBLE_TEAM
	learnset 26, SPARK
	learnset 29, IRON_TAIL ; Nuzzle → TM move
	learnset 34, EXTREMESPEED ; Discharge → event move
	learnset 37, BODY_SLAM ; Slam → TM move
	learnset 42, THUNDERBOLT
	learnset 45, AGILITY
	learnset 50, WILD_CHARGE
	learnset 53, LIGHT_SCREEN
	learnset 58, THUNDER

	evos_attacks RaichuPlain
	learnset 1, THUNDERSHOCK
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, QUICK_ATTACK
	learnset 1, THUNDERBOLT ; evolution move
	learnset 1, REVERSAL ; Sw/Sh move

	evos_attacks SandshrewPlain
	evo_data EVOLVE_LEVEL, 22, SANDSLASH, PLAIN_FORM
	learnset 1, DEFENSE_CURL
	learnset 3, MUD_SLAP ; Sand Attack → similar move
	learnset 5, POISON_STING
	learnset 7, ROLLOUT
	learnset 9, RAPID_SPIN
	learnset 11, PIN_MISSILE ; Fury Cutter → new move
	learnset 14, MAGNITUDE
	learnset 17, SWIFT
	learnset 20, FURY_STRIKES ; Fury Swipes → similar move
	learnset 23, METAL_CLAW ; Sand Tomb → HGSS tutor move
	learnset 26, SLASH
	learnset 30, DIG
	learnset 34, GYRO_BALL
	learnset 38, SWORDS_DANCE
	learnset 42, SANDSTORM
	learnset 46, EARTHQUAKE

	evos_attacks SandslashPlain
	learnset 1, SLASH ; Crush Claw → Slash ; evolution move
	learnset 1, DEFENSE_CURL
	learnset 3, MUD_SLAP ; Sand Attack → similar move
	learnset 5, POISON_STING
	learnset 7, ROLLOUT
	learnset 9, RAPID_SPIN
	learnset 11, PIN_MISSILE ; Fury Cutter → new move
	learnset 14, MAGNITUDE
	learnset 17, SWIFT
	learnset 20, FURY_STRIKES ; Fury Swipes → similar move
	learnset 24, SUPER_FANG ; Sand Tomb → HGSS tutor move
	learnset 28, METAL_CLAW ; Slash → TM move
	learnset 33, DIG
	learnset 38, GYRO_BALL
	learnset 43, SWORDS_DANCE
	learnset 48, SANDSTORM
	learnset 53, EARTHQUAKE

	evos_attacks NidoranF
	evo_data EVOLVE_LEVEL, 16, NIDORINA
	learnset 1, GROWL
	learnset 7, LEER ; Tail Whip → similar move
	learnset 9, DOUBLE_KICK
	learnset 13, POISON_STING
	learnset 19, FURY_STRIKES ; Fury Swipes → similar move
	learnset 21, BITE
	learnset 25, SWEET_KISS ; Helping Hand → event move
	learnset 31, TOXIC_SPIKES
	learnset 33, HEALINGLIGHT ; Flatter → event move (Moonlight)
	learnset 37, CRUNCH
	learnset 43, CHARM ; Captivate → egg move
	learnset 45, POISON_JAB

	evos_attacks Nidorina
	evo_data EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	learnset 1, GROWL
	learnset 7, LEER ; Tail Whip → similar move
	learnset 9, DOUBLE_KICK
	learnset 13, POISON_STING
	learnset 20, FURY_STRIKES ; Fury Swipes → similar move
	learnset 23, BITE
	learnset 28, SWEET_KISS ; Helping Hand → event move
	learnset 35, TOXIC_SPIKES
	learnset 38, HEALINGLIGHT ; Flatter → event move (Moonlight)
	learnset 43, CRUNCH
	learnset 50, CHARM ; Captivate → egg move
	learnset 58, POISON_JAB

	evos_attacks Nidoqueen
	learnset 1, CLOSE_COMBAT ; Superpower → similar move
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, DOUBLE_KICK
	learnset 1, POISON_STING
	learnset 23, OUTRAGE ; Chip Away → HGSS tutor move
	learnset 35, BODY_SLAM
	learnset 43, EARTH_POWER
	learnset 58, CLOSE_COMBAT ; Superpower → similar move

	evos_attacks NidoranM
	evo_data EVOLVE_LEVEL, 16, NIDORINO
	learnset 1, LEER
	learnset 1, PECK
	learnset 7, FOCUS_ENERGY
	learnset 9, DOUBLE_KICK
	learnset 13, POISON_STING
	learnset 19, FURY_STRIKES ; Fury Attack → similar move
	learnset 21, HORN_ATTACK
	learnset 25, SWEET_KISS ; Helping Hand → event move
	learnset 31, TOXIC_SPIKES
	learnset 33, HEALINGLIGHT ; Flatter → event move (Morning Sun)
	learnset 37, POISON_JAB
	learnset 43, CHARM ; Captivate → egg move
	learnset 45, MEGAHORN ; Horn Drill → Nidoking move

	evos_attacks Nidorino
	evo_data EVOLVE_ITEM, MOON_STONE, NIDOKING
	learnset 1, LEER
	learnset 1, PECK
	learnset 7, FOCUS_ENERGY
	learnset 9, DOUBLE_KICK
	learnset 13, POISON_STING
	learnset 20, FURY_STRIKES ; Fury Attack → similar move
	learnset 23, HORN_ATTACK
	learnset 28, SWEET_KISS ; Helping Hand → event move
	learnset 35, TOXIC_SPIKES
	learnset 38, HEALINGLIGHT ; Flatter → event move (Morning Sun)
	learnset 43, POISON_JAB
	learnset 50, CHARM ; Captivate → egg move
	learnset 58, MEGAHORN ; Horn Drill → Nidoking move

	evos_attacks Nidoking
	learnset 1, MEGAHORN
	learnset 1, PECK
	learnset 1, FOCUS_ENERGY
	learnset 1, DOUBLE_KICK
	learnset 1, POISON_STING
	learnset 23, OUTRAGE ; Chip Away → HGSS tutor move
	learnset 35, THRASH
	learnset 43, EARTH_POWER
	learnset 58, MEGAHORN

	evos_attacks Clefairy
	evo_data EVOLVE_ITEM, MOON_STONE, CLEFABLE
	learnset 1, DISARM_VOICE
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, GROWL
	learnset 1, ENCORE
	learnset 7, SING
	learnset 13, DEFENSE_CURL
	learnset 16, SWEET_KISS ; Follow Me → new move
	learnset 19, DIZZY_PUNCH ; Bestow → Crystal unique move
	learnset 22, TRI_ATTACK ; Wake-Up Slap → RBY TM move
	learnset 28, DRAINING_KISS ; Stored Power → Sw/Sh move
	learnset 34, REFLECT ; Cosmic Power → TM move
	learnset 37, LIGHT_SCREEN ; Lucky Chant → TM move
	learnset 40, BODY_SLAM
	learnset 43, HEALINGLIGHT ; Moonlight → similar move
	learnset 46, MOONBLAST
	learnset 49, BELLY_DRUM ; Gravity → egg move
	learnset 50, EXTRASENSORY ; Meteor Mash → new move
	learnset 55, HEAL_BELL ; Healing Wish → HGSS tutor move

	evos_attacks Clefable
	learnset 1, HEALINGLIGHT ; Moonlight → similar move
	learnset 1, DISARM_VOICE
	learnset 1, PLAY_ROUGH ; LGPE TM move
	learnset 1, SING

	evos_attacks VulpixPlain
	evo_data EVOLVE_ITEM, FIRE_STONE, NINETALES, PLAIN_FORM
	learnset 1, EMBER
	learnset 4, GROWL ; Tail Whip → new move
	learnset 9, CHARM ; Baby-Doll Eyes → similar move
	learnset 10, QUICK_ATTACK
	learnset 12, CONFUSE_RAY
	learnset 15, FIRE_SPIN
	learnset 18, NIGHT_SHADE ; Payback → new move
	learnset 20, WILL_O_WISP
	learnset 23, FEINT_ATTACK
	learnset 26, HEX
	learnset 28, PAIN_SPLIT ; Flame Burst → HGSS tutor move
	learnset 31, EXTRASENSORY
	learnset 34, SAFEGUARD
	learnset 36, FLAMETHROWER
	learnset 39, HYPNOSIS ; Imprison → egg move
	learnset 42, FIRE_BLAST
	learnset 44, SHADOW_BALL ; Grudge → TM move
	learnset 47, DISABLE ; Captivate → egg move
	learnset 50, FLARE_BLITZ ; Inferno → egg move
	learnset 53, HEALINGLIGHT ; new move

	evos_attacks NinetalesPlain
	learnset 1, NASTY_PLOT ; evolution move
	learnset 1, FLAMETHROWER
	learnset 1, QUICK_ATTACK
	learnset 1, CONFUSE_RAY
	learnset 1, SAFEGUARD

	evos_attacks Jigglypuff
	evo_data EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	learnset 1, SING
	learnset 1, SWEET_KISS ; Igglybuff move
	learnset 3, DEFENSE_CURL
	learnset 5, TACKLE ; Pound → similar move
	learnset 9, DIZZY_PUNCH ; Play Nice → Crystal unique move
	learnset 11, DISARM_VOICE
	learnset 14, DISABLE
	learnset 20, ROLLOUT
	learnset 22, CHARM ; Round → Igglybuff move
	learnset 27, MEAN_LOOK ; Wake-Up Slap → new move
	learnset 30, REST
	learnset 32, BODY_SLAM
	learnset 35, GYRO_BALL
	learnset 38, HEAL_BELL ; Mimic → HGSS tutor move
	learnset 41, HYPER_VOICE
	learnset 45, DOUBLE_EDGE

	evos_attacks Wigglytuff
	learnset 1, NASTY_PLOT ; SV TM move
	learnset 1, DOUBLE_EDGE
	learnset 1, PLAY_ROUGH
	learnset 1, SING
	learnset 1, DEFENSE_CURL
	learnset 1, DISABLE

	evos_attacks Zubat
	evo_data EVOLVE_LEVEL, 22, GOLBAT
	learnset 1, ABSORB
	learnset 5, SUPERSONIC
	learnset 11, BITE
	learnset 13, GUST ; Wing Attack → egg move
	learnset 17, CONFUSE_RAY
	learnset 19, WING_ATTACK ; Air Cutter → Wing Attack
	learnset 23, SWIFT
	learnset 25, SUPER_FANG ; Poison Fang → HGSS tutor move
	learnset 29, MEAN_LOOK
	learnset 35, HAZE
	learnset 37, VENOSHOCK
	learnset 41, AIR_SLASH
	learnset 43, PURSUIT ; Quick Guard → egg move

	evos_attacks Golbat
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	learnset 1, SCREECH
	learnset 1, ABSORB
	learnset 1, CRUNCH ; LGPE move
	learnset 5, SUPERSONIC
	learnset 11, BITE
	learnset 13, GUST ; Wing Attack → egg move
	learnset 17, CONFUSE_RAY
	learnset 19, WING_ATTACK ; Air Cutter → Wing Attack
	learnset 24, SWIFT
	learnset 27, SUPER_FANG ; Poison Fang → HGSS tutor move
	learnset 32, MEAN_LOOK
	learnset 40, HAZE
	learnset 43, VENOSHOCK
	learnset 48, AIR_SLASH
	learnset 51, PURSUIT ; Quick Guard → egg move

	evos_attacks Paras
	evo_data EVOLVE_LEVEL, 24, PARASECT
	learnset 1, TACKLE
	learnset 2, SLEEP_POWDER ; LGPE move
	learnset 4, STUN_SPORE
	learnset 6, POISONPOWDER
	learnset 11, ABSORB
	learnset 17, BUG_BITE ; Fury Cutter → egg move
	learnset 22, SPORE
	learnset 27, SLASH
	learnset 33, GROWTH
	learnset 38, GIGA_DRAIN
	learnset 49, HEALINGLIGHT ; Rage Powder → new move
	learnset 54, X_SCISSOR

	evos_attacks Parasect
	learnset 1, SHADOW_CLAW ; evolution move
	learnset 2, SLEEP_POWDER ; LGPE move
	learnset 4, STUN_SPORE
	learnset 6, POISONPOWDER
	learnset 11, ABSORB
	learnset 17, BUG_BITE ; Fury Cutter → egg move
	learnset 22, SPORE
	learnset 29, SLASH
	learnset 37, GROWTH
	learnset 44, GIGA_DRAIN
	learnset 59, HEALINGLIGHT ; Rage Powder → new move
	learnset 66, X_SCISSOR

	evos_attacks MeowthPlain
	evo_data EVOLVE_LEVEL, 28, PERSIAN, PLAIN_FORM
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

	evos_attacks PersianPlain
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

	evos_attacks Psyduck
	evo_data EVOLVE_LEVEL, 33, GOLDUCK
	learnset 1, TACKLE
	learnset 4, LEER ; Tail Whip → similar move
	learnset 7, WATER_GUN
	learnset 10, CONFUSION
	learnset 13, FURY_STRIKES ; Fury Swipes → similar move
	learnset 16, WATER_PULSE
	learnset 19, DISABLE
	learnset 22, SCREECH
	learnset 25, ZEN_HEADBUTT
	learnset 28, AQUA_TAIL
	learnset 31, RAIN_DANCE ; Soak → TM move
	learnset 34, PSYBEAM ; Psych Up → egg move
	learnset 37, AMNESIA
	learnset 40, HYDRO_PUMP
	learnset 43, NASTY_PLOT ; Wonder Room → SV TM move
	learnset 46, PSYCHIC_M ; TM move

	evos_attacks Golduck
	learnset 1, AQUA_JET
	learnset 4, LEER ; Tail Whip → similar move
	learnset 7, WATER_GUN
	learnset 10, CONFUSION
	learnset 13, FURY_STRIKES ; Fury Swipes → similar move
	learnset 16, WATER_PULSE
	learnset 19, DISABLE
	learnset 22, SCREECH
	learnset 25, ZEN_HEADBUTT
	learnset 28, AQUA_TAIL
	learnset 31, RAIN_DANCE ; Soak → TM move
	learnset 36, PSYBEAM ; Psych Up → egg move
	learnset 41, AMNESIA
	learnset 46, HYDRO_PUMP
	learnset 51, NASTY_PLOT ; Wonder Room → SV TM move
	learnset 56, PSYCHIC_M ; TM move

	evos_attacks Mankey
	evo_data EVOLVE_LEVEL, 28, PRIMEAPE
	learnset 1, LOW_KICK
	learnset 1, LEER
	learnset 1, FOCUS_ENERGY
	learnset 5, FURY_STRIKES ; Fury Swipes → similar move
	learnset 12, PURSUIT
	learnset 15, SEISMIC_TOSS
	learnset 19, SWAGGER
	learnset 26, REVERSAL ; Assurance → egg move
	learnset 29, FEINT_ATTACK ; Punishment → new move
	learnset 33, THRASH
	learnset 36, CLOSE_COMBAT
	learnset 40, SCREECH
	learnset 43, GUNK_SHOT ; Stomping Tantrum → HGSS tutor move
	learnset 47, OUTRAGE

	evos_attacks Primeape
	evo_data EVOLVE_MOVE, OUTRAGE, ANNIHILAPE
	learnset 1, OUTRAGE
	learnset 1, LOW_KICK
	learnset 1, LEER
	learnset 1, FOCUS_ENERGY
	learnset 5, FURY_STRIKES ; Fury Swipes → similar move
	learnset 12, PURSUIT
	learnset 15, SEISMIC_TOSS
	learnset 19, SWAGGER
	learnset 26, REVERSAL ; Assurance → egg move
	learnset 30, FEINT_ATTACK ; Punishment → new move
	learnset 35, THRASH
	learnset 39, CLOSE_COMBAT
	learnset 44, SCREECH
	learnset 48, GUNK_SHOT ; Stomping Tantrum → HGSS tutor move
	learnset 53, OUTRAGE

	evos_attacks GrowlithePlain
	evo_data EVOLVE_ITEM, FIRE_STONE, ARCANINE
	learnset 1, GROWL
	learnset 1, BITE
	learnset 1, ROAR
	learnset 6, EMBER
	learnset 8, LEER
	learnset 10, SAFEGUARD ; Odor Sleuth → egg move
	learnset 12, BATON_PASS ; Helping Hand → new move
	learnset 17, FIRE_SPIN ; Flame Wheel → egg move
	learnset 19, REVERSAL
	learnset 21, DOUBLE_KICK ; Fire Fang → egg move
	learnset 23, TAKE_DOWN
	learnset 28, FLAME_CHARGE ; Flame Burst → TM move
	learnset 30, AGILITY
	learnset 32, THRASH ; Retaliate → egg move
	learnset 34, FLAMETHROWER
	learnset 39, CRUNCH
	learnset 41, SUNNY_DAY ; Heat Wave → TM move
	learnset 43, OUTRAGE
	learnset 45, PLAY_ROUGH ; Flare Blitz → LGPE move
	learnset 49, FLARE_BLITZ

	evos_attacks ArcaninePlain
	learnset 1, DRAGON_DANCE ; new move
	learnset 1, GROWL
	learnset 1, BITE
	learnset 1, ROAR
	learnset 1, FLAME_CHARGE
	learnset 1, TAKE_DOWN
	learnset 1, EXTREMESPEED ; evolution move

	evos_attacks Poliwag
	evo_data EVOLVE_LEVEL, 25, POLIWHIRL
	learnset 1, SWEET_KISS ; event move
	learnset 1, WATER_GUN ; Water Sport → Water Gun
	learnset 5, HYPNOSIS ; Water Gun → Hypnosis
	learnset 11, AQUA_JET ; Bubble → new move
	learnset 15, MUD_SLAP ; Double Slap → TM move
	learnset 18, RAIN_DANCE
	learnset 21, BODY_SLAM
	learnset 25, BUBBLE_BEAM
	learnset 28, LOW_KICK ; Mud Shot → LGPE move
	learnset 31, BELLY_DRUM
	learnset 35, GROWTH ; Wake-Up Slap → event move
	learnset 38, HYDRO_PUMP
	learnset 41, EARTH_POWER ; Mud Bomb → similar move

	evos_attacks Poliwhirl
	evo_data EVOLVE_TRADE, KINGS_ROCK, POLITOED
	evo_data EVOLVE_ITEM, WATER_STONE, POLIWRATH
	learnset 1, SWEET_KISS ; event move
	learnset 1, WATER_GUN ; Water Sport → Water Gun
	learnset 5, HYPNOSIS ; Water Gun → Hypnosis
	learnset 11, AQUA_JET ; Bubble → new move
	learnset 15, MUD_SLAP ; Double Slap → TM move
	learnset 18, RAIN_DANCE
	learnset 21, BODY_SLAM
	learnset 27, BUBBLE_BEAM
	learnset 32, LOW_KICK ; Mud Shot → LGPE move
	learnset 37, BELLY_DRUM
	learnset 43, GROWTH ; Wake-Up Slap → event move
	learnset 48, HYDRO_PUMP
	learnset 53, EARTH_POWER ; Mud Bomb → similar move

	evos_attacks Poliwrath
	learnset 1, BUBBLE_BEAM
	learnset 1, HYPNOSIS
	learnset 1, CLOSE_COMBAT ; evolution move
	learnset 32, DYNAMICPUNCH
	learnset 43, EARTH_POWER ; Mind Reader → Poliwhirl move

	evos_attacks GeodudePlain
	evo_data EVOLVE_LEVEL, 25, GRAVELER, PLAIN_FORM
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 4, MUD_SLAP ; Mud Sport → TM move
	learnset 6, RAPID_SPIN ; Rock Polish → event move
	learnset 10, ROLLOUT
	learnset 12, MAGNITUDE
	learnset 16, ROCK_THROW
	learnset 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnset 22, BULLDOZE
	learnset 24, ROCK_BLAST ; Self-Destruct → Rock Blast
	learnset 28, SANDSTORM ; Stealth Rock → TM move
	learnset 30, ROCK_SLIDE ; Rock Blast → TM move
	learnset 34, EARTHQUAKE
	learnset 36, EXPLOSION
	learnset 40, DOUBLE_EDGE
	learnset 42, STONE_EDGE

	evos_attacks GravelerPlain
	evo_data EVOLVE_TRADE, LINKING_CORD, GOLEM, PLAIN_FORM
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 4, MUD_SLAP ; Mud Sport → TM move
	learnset 6, RAPID_SPIN ; Rock Polish → event move
	learnset 10, ROLLOUT
	learnset 12, MAGNITUDE
	learnset 16, ROCK_THROW
	learnset 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnset 22, BULLDOZE
	learnset 24, ROCK_BLAST ; Self-Destruct → Rock Blast
	learnset 30, SANDSTORM ; Stealth Rock → TM move
	learnset 34, ROCK_SLIDE ; Rock Blast → TM move
	learnset 40, EARTHQUAKE
	learnset 44, EXPLOSION
	learnset 50, DOUBLE_EDGE
	learnset 54, STONE_EDGE

	evos_attacks GolemPlain
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 4, MUD_SLAP ; Mud Sport → TM move
	learnset 6, RAPID_SPIN ; Rock Polish → event move
	learnset 10, ROLLOUT
	learnset 12, MAGNITUDE
	learnset 16, ROCK_THROW
	learnset 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnset 22, BULLDOZE
	learnset 24, ROCK_BLAST ; Self-Destruct → Rock Blast
	learnset 30, SANDSTORM ; Stealth Rock → TM move
	learnset 34, ROCK_SLIDE ; Rock Blast → TM move
	learnset 40, EARTHQUAKE
	learnset 44, EXPLOSION
	learnset 50, DOUBLE_EDGE
	learnset 54, STONE_EDGE
	learnset 60, GYRO_BALL ; Heavy Slam → similar move

	evos_attacks PonytaPlain
	evo_data EVOLVE_LEVEL, 40, RAPIDASH, PLAIN_FORM
	learnset 1, GROWL
	learnset 1, TACKLE
	learnset 4, LEER ; Tail Whip → similar move
	learnset 9, EMBER
	learnset 13, STOMP ; Flame Wheel → Stomp
	learnset 17, FLAME_CHARGE ; Stomp → Flame Charge
	learnset 21, LOW_KICK ; Flame Charge → event move
	learnset 25, FIRE_SPIN
	learnset 29, TAKE_DOWN
	learnset 33, DOUBLE_KICK ; Inferno → egg move
	learnset 37, AGILITY
	learnset 41, FIRE_BLAST
	learnset 45, EXTREMESPEED ; Bounce → new move
	learnset 49, FLARE_BLITZ

	evos_attacks RapidashPlain
	learnset 1, PLAY_ROUGH ; evolution move
	learnset 1, POISON_JAB
	learnset 1, MEGAHORN
	learnset 1, GROWL
	learnset 1, TACKLE
	learnset 4, LEER ; Tail Whip → similar move
	learnset 9, EMBER
	learnset 13, STOMP ; Flame Wheel → Stomp
	learnset 17, FLAME_CHARGE ; Stomp → Flame Charge
	learnset 21, LOW_KICK ; Flame Charge → event move
	learnset 25, FIRE_SPIN
	learnset 29, TAKE_DOWN
	learnset 33, DOUBLE_KICK ; Inferno → egg move
	learnset 37, AGILITY
	learnset 41, FIRE_BLAST
	learnset 45, EXTREMESPEED ; Bounce → new move
	learnset 49, FLARE_BLITZ

	evos_attacks SlowpokePlain
	evo_data EVOLVE_TRADE, KINGS_ROCK, SLOWKING, PLAIN_FORM
	evo_data EVOLVE_LEVEL, 37, SLOWBRO, PLAIN_FORM
	learnset 1, CURSE
	learnset 1, TACKLE
	learnset 5, GROWL
	learnset 9, WATER_GUN
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

	evos_attacks SlowbroPlain
	learnset 1, DEFENSE_CURL ; Withdraw → similar move ; evolution move
	learnset 1, CURSE
	learnset 1, TACKLE
	learnset 5, GROWL
	learnset 9, WATER_GUN
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

	evos_attacks Magnemite
	evo_data EVOLVE_LEVEL, 30, MAGNETON
	learnset 1, SUPERSONIC
	learnset 1, TACKLE
	learnset 5, THUNDERSHOCK
	learnset 7, THUNDER_WAVE
	learnset 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	learnset 13, LIGHT_SCREEN
	learnset 17, SONIC_BOOM
	learnset 19, SPARK
	learnset 23, SWIFT ; Mirror Shot → TM move
	learnset 25, SCREECH ; Metal Sound → Screech
	learnset 29, THUNDERBOLT ; Electro Ball → TM move
	learnset 31, FLASH_CANNON
	learnset 35, EXPLOSION ; Screech → TM move
	learnset 37, HIDDEN_POWER ; Discharge → TM move
	learnset 41, AGILITY ; Lock-On → event move
	learnset 43, GYRO_BALL ; Magnet Rise → Gyro Ball
	learnset 47, THUNDER ; Gyro Ball → TM move
	learnset 49, ZAP_CANNON

	evos_attacks Magneton
	evo_data EVOLVE_ITEM, THUNDERSTONE, MAGNEZONE
	learnset 1, TRI_ATTACK ; evolution move
	learnset 1, SUPERSONIC
	learnset 1, TACKLE
	learnset 5, THUNDERSHOCK
	learnset 7, THUNDER_WAVE
	learnset 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	learnset 13, LIGHT_SCREEN
	learnset 17, SONIC_BOOM
	learnset 19, SPARK
	learnset 23, SWIFT ; Mirror Shot → TM move
	learnset 25, SCREECH ; Metal Sound → Screech
	learnset 29, THUNDERBOLT ; Electro Ball → TM move
	learnset 33, FLASH_CANNON
	learnset 39, EXPLOSION ; Screech → TM move
	learnset 43, HIDDEN_POWER ; Discharge → TM move
	learnset 49, AGILITY ; Lock-On → event move
	learnset 53, GYRO_BALL ; Magnet Rise → Gyro Ball
	learnset 59, THUNDER ; Gyro Ball → TM move
	learnset 63, ZAP_CANNON

	evos_attacks Seel
	evo_data EVOLVE_LEVEL, 34, DEWGONG
	learnset 1, HEADBUTT
	learnset 3, GROWL
	learnset 7, WATER_GUN ; Water Sport → RBY TM move
	learnset 11, ICY_WIND
	learnset 13, ENCORE
	learnset 17, ICE_SHARD
	learnset 21, REST
	learnset 23, SLEEP_TALK ; Aqua Ring → TM move
	learnset 27, AURORA_BEAM
	learnset 31, AQUA_JET
	learnset 33, BUBBLE_BEAM ; Brine → RBY TM move
	learnset 37, TAKE_DOWN
	learnset 41, PERISH_SONG ; Dive →  new move
	learnset 43, AQUA_TAIL
	learnset 47, ICE_BEAM
	learnset 51, SAFEGUARD
	learnset 53, HAIL

	evos_attacks Dewgong
	learnset 1, ICICLE_SPEAR ; Sheer Cold → egg move ; evolution move
	learnset 1, HEADBUTT
	learnset 3, GROWL
	learnset 7, WATER_GUN ; Signal Beam → RBY TM move
	learnset 11, ICY_WIND
	learnset 13, ENCORE
	learnset 17, ICE_SHARD
	learnset 21, REST
	learnset 23, SLEEP_TALK ; Aqua Ring → TM move
	learnset 27, AURORA_BEAM
	learnset 31, AQUA_JET
	learnset 33, BUBBLE_BEAM ; Brine → RBY TM move
	learnset 39, TAKE_DOWN
	learnset 45, PERISH_SONG ; Dive → new move
	learnset 49, AQUA_TAIL
	learnset 55, ICE_BEAM
	learnset 61, SAFEGUARD
	learnset 65, HAIL
	learnset 69, MEGAHORN ; LGPE move

	evos_attacks GrimerPlain
	evo_data EVOLVE_LEVEL, 38, MUK, PLAIN_FORM
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, ACID ; Poison Gas → new move
	learnset 4, DEFENSE_CURL ; Harden → similar move
	learnset 7, MUD_SLAP
	learnset 12, DISABLE
	learnset 15, VENOSHOCK ; Sludge → tutor move
	learnset 18, HAZE ; Mud Bomb → egg move
	learnset 26, FEINT_ATTACK ; Fling → new move
	learnset 29, SLUDGE_BOMB
	learnset 32, SCARY_FACE ; Sludge Wave → egg move
	learnset 37, SCREECH
	learnset 40, GUNK_SHOT
	learnset 43, PAIN_SPLIT ; Acid Armor → HGSS tutor move
	learnset 46, TOXIC_SPIKES ; Belch → SV TM move

	evos_attacks MukPlain
	learnset 1, MOONBLAST ; LGPE move
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, ACID ; Poison Gas → new move
	learnset 4, DEFENSE_CURL ; Harden → similar move
	learnset 7, MUD_SLAP
	learnset 12, DISABLE
	learnset 15, VENOSHOCK ; Sludge → tutor move
	learnset 18, HAZE ; Mud Bomb → egg move
	learnset 26, FEINT_ATTACK ; Fling → new move
	learnset 29, SLUDGE_BOMB
	learnset 32, SCARY_FACE ; Sludge Wave → egg move
	learnset 37, SCREECH
	learnset 40, GUNK_SHOT
	learnset 46, PAIN_SPLIT ; Acid Armor → HGSS tutor move
	learnset 52, TOXIC_SPIKES ; Belch → SV TM move

	evos_attacks Gastly
	evo_data EVOLVE_LEVEL, 25, HAUNTER
	learnset 1, HYPNOSIS
	learnset 1, LICK
	learnset 5, DISABLE ; Spite → egg move
	learnset 8, MEAN_LOOK
	learnset 12, CURSE
	learnset 15, NIGHT_SHADE
	learnset 19, CONFUSE_RAY
	learnset 22, SUCKER_PUNCH
	learnset 26, PAIN_SPLIT ; Payback → HGSS tutor move
	learnset 29, SHADOW_BALL
	learnset 33, DREAM_EATER
	learnset 36, DARK_PULSE
	learnset 40, DESTINY_BOND
	learnset 43, HEX
	learnset 47, PERISH_SONG ; Nightmare → new move

	evos_attacks Haunter
	evo_data EVOLVE_TRADE, LINKING_CORD, GENGAR
	learnset 1, SHADOW_CLAW ; Shadow Punch → TM move ; evolution move
	learnset 1, HYPNOSIS
	learnset 1, LICK
	learnset 5, DISABLE ; Spite → egg move
	learnset 8, MEAN_LOOK
	learnset 12, CURSE
	learnset 15, NIGHT_SHADE
	learnset 19, CONFUSE_RAY
	learnset 22, SUCKER_PUNCH
	learnset 28, PAIN_SPLIT ; Payback → HGSS tutor move
	learnset 33, SHADOW_BALL
	learnset 39, DREAM_EATER
	learnset 44, DARK_PULSE
	learnset 50, DESTINY_BOND
	learnset 55, HEX
	learnset 61, PERISH_SONG ; Nightmare → new move

	evos_attacks Gengar
	learnset 1, SHADOW_CLAW ; Shadow Punch → TM move ; evolution move
	learnset 1, HYPNOSIS
	learnset 1, LICK
	learnset 5, DISABLE ; Spite → egg move
	learnset 8, MEAN_LOOK
	learnset 12, CURSE
	learnset 15, NIGHT_SHADE
	learnset 19, CONFUSE_RAY
	learnset 22, SUCKER_PUNCH
	learnset 28, PAIN_SPLIT ; Payback → HGSS tutor move
	learnset 33, SHADOW_BALL
	learnset 39, DREAM_EATER
	learnset 44, DARK_PULSE
	learnset 50, DESTINY_BOND
	learnset 55, HEX
	learnset 61, PERISH_SONG ; Nightmare → new move

	evos_attacks Onix
	evo_data EVOLVE_TRADE, METAL_COAT, STEELIX
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 1, WRAP ; Bind → similar move
	learnset 4, CURSE
	learnset 7, ROCK_THROW
	learnset 13, ROCK_BLAST ; Rock Tomb → egg move
	learnset 16, BODY_SLAM ; Stealth Rock → TM move
	learnset 19, SANDSTORM ; Rock Polish → Sandstorm
	learnset 22, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnset 25, DRAGONBREATH
	learnset 28, HEADBUTT ; Slam → tutor move
	learnset 31, SCREECH
	learnset 34, ROCK_SLIDE
	learnset 37, CRUNCH ; Sand Tomb → Steelix move
	learnset 40, IRON_TAIL
	learnset 43, DIG
	learnset 46, STONE_EDGE
	learnset 49, DOUBLE_EDGE
	learnset 52, EARTHQUAKE ; Sandstorm → TM move

	evos_attacks Exeggcute
	evo_data EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR, PLAIN_FORM
	evo_data EVOLVE_ITEM, ODD_SOUVENIR, EXEGGUTOR, ALOLAN_FORM
	learnset 1, TACKLE ; Barrage → new move
	learnset 1, HYPNOSIS
	learnset 7, REFLECT
	learnset 11, LEECH_SEED
	learnset 14, CONFUSION
	learnset 19, STUN_SPORE
	learnset 21, POISONPOWDER
	learnset 23, SLEEP_POWDER
	learnset 27, PSYBEAM ; Confusion → LGPE move
	learnset 33, ANCIENTPOWER ; Worry Seed → HGSS tutor move
	learnset 37, HEALINGLIGHT ; Natural Gift → new move
	learnset 43, SOLAR_BEAM
	learnset 47, EXTRASENSORY
	learnset 50, PSYCHIC_M ; Bestow → TM move

	evos_attacks ExeggutorPlain
	learnset 1, TACKLE ; Barrage → new move
	learnset 1, HYPNOSIS
	learnset 1, CONFUSION
	learnset 1, STOMP ; evolution move
	learnset 17, LOW_KICK ; Psyshock → HGSS tutor move
	learnset 27, ZEN_HEADBUTT ; Egg Bomb → tutor move
	learnset 37, POWER_WHIP ; Wood Hammer → new move
	learnset 47, PETAL_DANCE ; Leaf Storm → new move

	evos_attacks Lickitung
	evo_data EVOLVE_MOVE, ROLLOUT, LICKILICKY
	learnset 1, LICK
	learnset 5, SUPERSONIC
	learnset 9, DEFENSE_CURL
	learnset 13, KNOCK_OFF
	learnset 17, WRAP
	learnset 21, STOMP
	learnset 25, DISABLE
	learnset 29, HEADBUTT ; Slam → TM move
	learnset 33, ROLLOUT
	learnset 37, SCREECH ; Chip Away → Screech
	learnset 41, AMNESIA ; Me First → egg move
	learnset 45, BODY_SLAM ; Refresh → egg move
	learnset 49, CURSE ; Screech → egg move
	learnset 53, POWER_WHIP
	learnset 57, BELLY_DRUM ; Wring Out → egg move

	evos_attacks Koffing
	evo_data EVOLVE_TRADE, CHARCOAL, WEEZING, GALARIAN_FORM
	evo_data EVOLVE_LEVEL, 35, WEEZING, PLAIN_FORM
	learnset 1, TACKLE
	learnset 4, ACID ; Smog → new move
	learnset 12, ENDURE ; Assurance → TM move
	learnset 15, WILL_O_WISP ; Clear Smog → TM move
	learnset 18, VENOSHOCK ; Sludge → tutor move
	learnset 26, HAZE
	learnset 29, GYRO_BALL
	learnset 34, SLUDGE_BOMB
	learnset 37, EXPLOSION
	learnset 40, DESTINY_BOND
	learnset 42, PAIN_SPLIT ; Belch → HGSS tutor move
	learnset 45, FIRE_BLAST ; Memento → TM move

	evos_attacks WeezingPlain
	learnset 1, TACKLE
	learnset 4, ACID ; Smog → new move
	learnset 12, ENDURE ; Assurance → TM move
	learnset 15, WILL_O_WISP ; Clear Smog → TM move
	learnset 18, VENOSHOCK ; Sludge → tutor move
	learnset 26, HAZE
	learnset 29, GYRO_BALL
	learnset 34, SLUDGE_BOMB
	learnset 40, EXPLOSION
	learnset 46, DESTINY_BOND
	learnset 51, PAIN_SPLIT ; Belch → HGSS tutor move
	learnset 57, FIRE_BLAST ; Memento → TM move

	evos_attacks Tangela
	evo_data EVOLVE_MOVE, ANCIENTPOWER, TANGROWTH
	learnset 1, WRAP ; Constrict → similar move
	learnset 4, SLEEP_POWDER
	learnset 7, VINE_WHIP
	learnset 10, ABSORB
	learnset 14, POISONPOWDER
	learnset 17, PROTECT ; Bind → TM move
	learnset 20, GROWTH
	learnset 23, MEGA_DRAIN
	learnset 27, KNOCK_OFF
	learnset 30, STUN_SPORE
	learnset 33, HEALINGLIGHT ; Natural Gift → new move
	learnset 36, GIGA_DRAIN
	learnset 38, ANCIENTPOWER
	learnset 41, BODY_SLAM ; Slam → similar move
	learnset 44, PAIN_SPLIT ; Tickle → HGSS tutor move
	learnset 46, SWORDS_DANCE ; Wring Out → TM move
	learnset 48, BATON_PASS ; Grassy Terrain → new move
	learnset 50, POWER_WHIP

	evos_attacks Kangaskhan
	learnset 1, DIZZY_PUNCH ; Comet Punch → Dizzy Punch
	learnset 1, LEER
	learnset 7, LOW_KICK ; Fake Out → HGSS tutor move
	learnset 10, BITE ; Tail Whip → Bite
	learnset 13, HEADBUTT ; Bite → tutor move
	learnset 19, DOUBLE_KICK ; Double Hit → new move
	learnset 25, TAKE_DOWN ; Mega Punch → RBY TM move
	learnset 31, STOMP ; Chip Away → egg move
	learnset 34, MACH_PUNCH ; Dizzy Punch → new move
	learnset 37, CRUNCH
	learnset 43, ENDURE
	learnset 46, OUTRAGE
	learnset 49, SUCKER_PUNCH
	learnset 50, REVERSAL

	evos_attacks Horsea
	evo_data EVOLVE_LEVEL, 32, SEADRA
	learnset 1, WATER_GUN ; Bubble → similar move
	learnset 9, LEER
	learnset 13, BUBBLE_BEAM ; Water Gun → Bubble Beam
	learnset 17, AQUA_JET ; Twister → new move
	learnset 21, WATER_PULSE ; Bubble Beam → TM move
	learnset 26, FOCUS_ENERGY
	learnset 31, OUTRAGE ; Brine → HGSS tutor move
	learnset 36, AGILITY
	learnset 41, DRAGON_PULSE
	learnset 46, DRAGON_DANCE
	learnset 52, HYDRO_PUMP

	evos_attacks Seadra
	evo_data EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	learnset 1, WATER_GUN ; Bubble → similar move
	learnset 9, LEER
	learnset 13, BUBBLE_BEAM ; Water Gun → Bubble Beam
	learnset 17, AQUA_JET ; Twister → new move
	learnset 21, WATER_PULSE ; Bubble Beam → TM move
	learnset 26, FOCUS_ENERGY
	learnset 31, OUTRAGE ; Brine → HGSS tutor move
	learnset 38, AGILITY
	learnset 45, DRAGON_PULSE
	learnset 52, DRAGON_DANCE
	learnset 60, HYDRO_PUMP

	evos_attacks Staryu
	evo_data EVOLVE_ITEM, WATER_STONE, STARMIE
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 4, WATER_GUN
	learnset 7, RAPID_SPIN
	learnset 10, RECOVER
	learnset 13, HYPNOSIS ; Psywave → new move
	learnset 16, SWIFT
	learnset 18, BUBBLE_BEAM
	learnset 22, AGILITY ; Camouflage → new move
	learnset 24, GYRO_BALL
	learnset 28, PAIN_SPLIT ; Brine → HGSS tutor move
	learnset 35, REFLECT ; Reflect Type → new move
	learnset 37, POWER_GEM
	learnset 40, CONFUSE_RAY
	learnset 42, PSYCHIC_M
	learnset 46, LIGHT_SCREEN
	learnset 49, HYDRO_PUMP ; Cosmic Power → Hydro Pump

	evos_attacks Starmie
	learnset 1, HYDRO_PUMP
	learnset 1, WATER_GUN
	learnset 1, RAPID_SPIN
	learnset 1, RECOVER
	learnset 1, SWIFT
	learnset 40, CONFUSE_RAY
	learnset 60, TRI_ATTACK ; RBY TM move

	evos_attacks MrMimePlain
	learnset 1, BARRIER
	learnset 1, CONFUSION
	learnset 4, HYPNOSIS ; Copycat → egg move
	learnset 8, CALM_MIND ; Meditate → TM move
	learnset 13, PROTECT ; Mimic → event move
	learnset 18, ENCORE
	learnset 22, LIGHT_SCREEN
	learnset 22, REFLECT
	learnset 25, PSYBEAM
	learnset 29, SUBSTITUTE
	learnset 32, CONFUSE_RAY ; Recycle → egg move
	learnset 36, TRICK
	learnset 39, PSYCHIC_M
	learnset 43, FUTURE_SIGHT ; Role Play → egg move
	learnset 46, BATON_PASS
	learnset 50, SAFEGUARD

	evos_attacks Scyther
	evo_data EVOLVE_TRADE, METAL_COAT, SCIZOR
	evo_data EVOLVE_HOLDING, HARD_STONE, TR_ANYTIME, KLEAVOR
	learnset 1, QUICK_ATTACK
	learnset 1, LEER
	learnset 5, FOCUS_ENERGY
	learnset 9, PURSUIT
	learnset 13, FALSE_SWIPE
	learnset 17, AGILITY
	learnset 21, WING_ATTACK
	learnset 25, BUG_BITE ; Fury Cutter → similar move
	learnset 29, SLASH
	learnset 33, GLARE ; Razor Wind → new move
	learnset 37, DOUBLE_TEAM
	learnset 41, X_SCISSOR
	learnset 45, NIGHT_SLASH
	learnset 49, CLOSE_COMBAT ; Double Hit → SV TM move
	learnset 50, AIR_SLASH
	learnset 57, SWORDS_DANCE

	evos_attacks Electabuzz
	evo_data EVOLVE_TRADE, ELECTIRIZER, ELECTIVIRE
	learnset 1, QUICK_ATTACK
	learnset 1, LEER
	learnset 5, THUNDERSHOCK
	learnset 8, LOW_KICK
	learnset 12, SWIFT
	learnset 15, BULK_UP ; Shock Wave → TM move
	learnset 19, THUNDER_WAVE
	learnset 26, LIGHT_SCREEN
	learnset 29, THUNDERPUNCH
	learnset 36, SCREECH ; Discharge → Screech
	learnset 49, THUNDERBOLT
	learnset 55, THUNDER

	evos_attacks Magmar
	evo_data EVOLVE_TRADE, MAGMARIZER, MAGMORTAR
	learnset 1, HAZE ; Smog → new move
	learnset 1, LEER
	learnset 5, EMBER
	learnset 12, FEINT_ATTACK
	learnset 15, FIRE_SPIN
	learnset 19, LOW_KICK ; Clear Smog → HGSS tutor move
	learnset 22, FLAME_CHARGE ; Flame Burst → TM move
	learnset 26, CONFUSE_RAY
	learnset 29, FIRE_PUNCH
	learnset 36, SUNNY_DAY ; Lava Plume → Sunny Day
	learnset 42, FOCUS_BLAST ; Sunny Day → TM move
	learnset 49, FLAMETHROWER
	learnset 55, FIRE_BLAST

	evos_attacks Pinsir
	learnset 1, FURY_STRIKES ; Vice Grip → new move
	learnset 1, FOCUS_ENERGY
	learnset 4, WRAP ; Bind → similar move
	learnset 8, SEISMIC_TOSS
	learnset 12, DEFENSE_CURL ; Harden → similar move
	learnset 20, ROCK_THROW ; Brick Break → event move
	learnset 26, BRICK_BREAK ; Vital Throw → TM move
	learnset 29, X_SCISSOR
	learnset 33, FEINT_ATTACK ; Submission → egg moves
	learnset 36, OUTRAGE ; Storm Throw → LGPE move
	learnset 40, SWORDS_DANCE
	learnset 43, THRASH
	learnset 47, CLOSE_COMBAT ; Superpower → similar move
	learnset 50, MEGAHORN ; Guillotine → new move

	evos_attacks Lapras
	learnset 1, ANCIENTPOWER ; HGSS tutor move
	learnset 1, DRAGON_RAGE ; RBY TM move
	learnset 1, DRAGONBREATH ; GSC TM move
	learnset 1, SING
	learnset 1, GROWL
	learnset 1, WATER_GUN
	learnset 4, BITE ; Mist → event move
	learnset 7, CONFUSE_RAY
	learnset 10, ICE_SHARD
	learnset 14, WATER_PULSE
	learnset 18, BODY_SLAM
	learnset 22, RAIN_DANCE
	learnset 27, PERISH_SONG
	learnset 32, ICE_BEAM
	learnset 37, FUTURE_SIGHT ; Brine → event move
	learnset 43, SAFEGUARD
	learnset 47, HYDRO_PUMP
	learnset 50, OUTRAGE ; Sheer Cold → HGSS tutor move
	learnset 54, MEGAHORN ; LGPE TM move

	evos_attacks Ditto
	learnset 1, TRANSFORM

	evos_attacks Eevee
	evo_data EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	evo_data EVOLVE_ITEM, WATER_STONE, VAPOREON
	evo_data EVOLVE_ITEM, FIRE_STONE, FLAREON
	evo_data EVOLVE_ITEM, SUN_STONE, ESPEON
	evo_data EVOLVE_ITEM, MOON_STONE, UMBREON
	evo_data EVOLVE_ITEM, LEAF_STONE, LEAFEON
	evo_data EVOLVE_ITEM, ICE_STONE, GLACEON
	evo_data EVOLVE_ITEM, SHINY_STONE, SYLVEON
	evo_data EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	evo_data EVOLVE_HAPPINESS, TR_EVENITE, UMBREON
	learnset 1, GROWL
	learnset 1, TACKLE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	learnset 10, SWIFT
	learnset 13, QUICK_ATTACK
	learnset 17, BITE
	learnset 20, HEAL_BELL ; Refresh → HGSS tutor move
	learnset 23, THIEF ; Covet → TM move
	learnset 25, TAKE_DOWN
	learnset 29, CHARM
	learnset 33, BATON_PASS
	learnset 37, DOUBLE_EDGE
	learnset 41, GROWTH ; Last Resort → event move
	learnset 45, REVERSAL ; Trump Card → new move

	evos_attacks Vaporeon
	learnset 1, GROWL
	learnset 1, TACKLE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, WATER_GUN ; evolution move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	learnset 13, QUICK_ATTACK
	learnset 17, WATER_PULSE
	learnset 20, AURORA_BEAM
	learnset 25, RECOVER ; Aqua Ring → similar move
	learnset 29, BARRIER ; Acid Armor → similar move
	learnset 33, HAZE
	learnset 37, SCALD ; Muddy Water → TM move
	learnset 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnset 45, HYDRO_PUMP

	evos_attacks Jolteon
	learnset 1, GROWL
	learnset 1, TACKLE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, THUNDERSHOCK ; evolution move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	learnset 13, QUICK_ATTACK
	learnset 17, SPARK ; Double Kick → new move
	learnset 20, LIGHT_SCREEN ; Thunder Fang → TM move
	learnset 25, PIN_MISSILE
	learnset 29, AGILITY
	learnset 33, THUNDER_WAVE
	learnset 37, THUNDERBOLT ; Discharge → TM move
	learnset 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnset 45, THUNDER

	evos_attacks Flareon
	learnset 1, GROWL
	learnset 1, TACKLE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, EMBER ; evolution move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	learnset 13, QUICK_ATTACK
	learnset 17, BITE
	learnset 20, FIRE_SPIN ; Fire Fang → Fire Spin
	learnset 25, FLAME_CHARGE ; Fire Spin → TM move
	learnset 29, SCARY_FACE
	learnset 37, FLAMETHROWER ; Lava Plume → new move
	learnset 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnset 45, FLARE_BLITZ

	evos_attacks Snorlax
	learnset 1, TACKLE
	learnset 4, DEFENSE_CURL
	learnset 9, AMNESIA
	learnset 12, LICK
	learnset 20, TAKE_DOWN ; Yawn → RBY TM move
	learnset 25, BODY_SLAM
	learnset 28, REST
	learnset 33, SLEEP_TALK
	learnset 36, ROLLOUT
	learnset 41, OUTRAGE ; Block → HGSS tutor move
	learnset 44, BELLY_DRUM
	learnset 49, CRUNCH
	learnset 50, CLOSE_COMBAT ; Heavy Slam → new move
	learnset 57, GIGA_IMPACT

	evos_attacks Dratini
	evo_data EVOLVE_LEVEL, 30, DRAGONAIR
	learnset 1, WRAP
	learnset 1, LEER
	learnset 5, THUNDER_WAVE
	learnset 11, AQUA_JET ; Twister → egg move
	learnset 15, DRAGON_RAGE
	learnset 21, HEADBUTT ; Slam → tutor move
	learnset 25, AGILITY
	learnset 31, DRAGONBREATH ; Dragon Tail → GSC TM move
	learnset 35, AQUA_TAIL
	learnset 41, BARRIER ; Dragon Rush → event move
	learnset 45, SAFEGUARD
	learnset 51, DRAGON_DANCE
	learnset 55, OUTRAGE
	learnset 61, HYPER_BEAM

	evos_attacks Dragonair
	evo_data EVOLVE_LEVEL, 55, DRAGONITE
	learnset 1, WRAP
	learnset 1, LEER
	learnset 5, THUNDER_WAVE
	learnset 11, AQUA_JET ; Twister → egg move
	learnset 15, DRAGON_RAGE
	learnset 21, HEADBUTT ; Slam → tutor move
	learnset 25, AGILITY
	learnset 33, DRAGONBREATH ; Dragon Tail → GSC TM move
	learnset 39, AQUA_TAIL
	learnset 47, BARRIER ; Dragon Rush → event move
	learnset 53, SAFEGUARD
	learnset 61, DRAGON_DANCE
	learnset 67, OUTRAGE
	learnset 75, HYPER_BEAM

	evos_attacks Dragonite
	learnset 1, HURRICANE
	learnset 1, CLOSE_COMBAT
	learnset 1, FIRE_PUNCH
	learnset 1, THUNDERPUNCH
	learnset 1, ROOST
	learnset 1, WRAP
	learnset 1, LEER
	learnset 1, THUNDER_WAVE
	learnset 1, WING_ATTACK ; evolution move
	learnset 5, THUNDER_WAVE
	learnset 11, AQUA_JET ; Twister → egg move
	learnset 15, DRAGON_RAGE
	learnset 21, HEADBUTT ; Slam → tutor move
	learnset 25, AGILITY
	learnset 33, DRAGONBREATH ; Dragon Tail → GSC TM move
	learnset 39, AQUA_TAIL
	learnset 47, BARRIER ; Dragon Rush → event move
	learnset 53, SAFEGUARD
	learnset 61, DRAGON_DANCE
	learnset 67, OUTRAGE
	learnset 75, HYPER_BEAM
	learnset 81, HURRICANE
	
	end_evos_attacks
