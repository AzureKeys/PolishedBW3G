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
	learnset 13, PURSUIT ; Laser Focus → pre Gen8 move
	learnset 16, TAKE_DOWN
	learnset 19, PAYBACK ; Assurance → similar move
	learnset 22, CRUNCH
	learnset 25, SUCKER_PUNCH
	learnset 28, SUPER_FANG
	learnset 31, DOUBLE_EDGE
	learnset 34, COUNTER ; Endeavor → egg move

	evos_attacks RaticatePlain
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

	evos_attacks Pikachu
	evo_data EVOLVE_ITEM, THUNDERSTONE, RAICHU, PLAIN_FORM
	evo_data EVOLVE_ITEM, ODD_SOUVENIR, RAICHU, ALOLAN_FORM
	learnset 1, SWEET_KISS
	learnset 1, NASTY_PLOT
	learnset 1, CHARM
	learnset 1, THUNDERSHOCK
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, GROWL
	learnset 1, QUICK_ATTACK
	learnset 4, THUNDER_WAVE
	learnset 8, DOUBLE_TEAM
	learnset 12, SHOCK_WAVE ; Electro Ball → Gen3/4 TM move
	learnset 16, DOUBLE_KICK ; Feint → LGPE move
	learnset 20, SPARK
	learnset 24, AGILITY
	learnset 28, IRON_TAIL
	learnset 32, VOLT_SWITCH ; Discharge → TM move
	learnset 36, THUNDERBOLT
	learnset 40, LIGHT_SCREEN
	learnset 44, THUNDER
	learnset 50, WILD_CHARGE ; added pre Gen8 move

	evos_attacks RaichuPlain
	learnset 1, THUNDERPUNCH ; evolution move
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

	evos_attacks SandshrewPlain
	evo_data EVOLVE_LEVEL, 22, SANDSLASH, PLAIN_FORM
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, DEFENSE_CURL
	learnset 3, POISON_STING
	learnset 6, MUD_SLAP ; Sand Attack → similar move
	learnset 9, ROLLOUT
	learnset 12, FURY_CUTTER
	learnset 15, RAPID_SPIN
	learnset 18, BULLDOZE
	learnset 21, SWIFT
	learnset 24, FURY_STRIKES ; Fury Swipes → similar move
	learnset 27, AGILITY
	learnset 30, SLASH
	learnset 33, DIG
	learnset 36, GYRO_BALL
	learnset 39, SWORDS_DANCE
	learnset 42, SANDSTORM
	learnset 45, EARTHQUAKE

	evos_attacks SandslashPlain
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, DEFENSE_CURL
	learnset 3, POISON_STING
	learnset 6, MUD_SLAP ; Sand Attack → similar move
	learnset 9, ROLLOUT
	learnset 12, FURY_CUTTER
	learnset 15, RAPID_SPIN
	learnset 18, BULLDOZE
	learnset 21, SWIFT
	learnset 21, METAL_CLAW ; evolution move
	learnset 26, FURY_STRIKES ; Fury Swipes → similar move
	learnset 31, MAGNITUDE ; Sand Tomb → pre Gen8 move
	learnset 36, SLASH
	learnset 41, DIG
	learnset 46, GYRO_BALL
	learnset 51, SWORDS_DANCE
	learnset 56, SANDSTORM
	learnset 61, EARTHQUAKE

	evos_attacks NidoranF
	evo_data EVOLVE_LEVEL, 16, NIDORINA
	learnset 1, GROWL
	learnset 1, POISON_STING
	learnset 5, TACKLE ; Scratch → similar move
	learnset 10, LEER ; Tail Whip → similar move
	learnset 15, FURY_STRIKES ; Fury Swipes → similar move
	learnset 20, TOXIC_SPIKES
	learnset 25, DOUBLE_KICK
	learnset 30, BITE
	learnset 35, POISON_FANG ; Helping Hand → egg move
	learnset 40, TOXIC
	learnset 45, CHARM ; Flatter → egg move
	learnset 50, CRUNCH
	learnset 55, EARTH_POWER

	evos_attacks Nidorina
	evo_data EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	learnset 1, GROWL
	learnset 1, POISON_STING
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, LEER ; Tail Whip → similar move
	learnset 15, FURY_STRIKES ; Fury Swipes → similar move
	learnset 22, TOXIC_SPIKES
	learnset 29, DOUBLE_KICK
	learnset 36, BITE
	learnset 43, POISON_FANG ; Helping Hand → egg move
	learnset 50, TOXIC
	learnset 57, CHARM ; Flatter → egg move
	learnset 64, CRUNCH
	learnset 71, EARTH_POWER

	evos_attacks Nidoqueen
	learnset 1, CLOSE_COMBAT ; Superpower → similar move
	learnset 1, SLUDGE_BOMB ; Sludge Wave → similar move
	learnset 1, FURY_STRIKES ; Fury Swipes → similar move
	learnset 1, TOXIC_SPIKES
	learnset 1, DOUBLE_KICK
	learnset 1, BITE
	learnset 1, POISON_FANG ; Helping Hand → egg move
	learnset 1, TOXIC
	learnset 1, CHARM ; Flatter → egg move
	learnset 1, CRUNCH
	learnset 1, EARTH_POWER
	learnset 1, BODY_SLAM ; pre Gen8 move
	learnset 1, GROWL
	learnset 1, POISON_STING
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, LEER ; Tail Whip → similar move

	evos_attacks NidoranM
	evo_data EVOLVE_LEVEL, 16, NIDORINO
	learnset 1, LEER
	learnset 1, POISON_STING
	learnset 5, PECK
	learnset 10, FOCUS_ENERGY
	learnset 15, FURY_STRIKES ; Fury Attack → similar move
	learnset 20, TOXIC_SPIKES
	learnset 25, DOUBLE_KICK
	learnset 30, HORN_ATTACK
	learnset 35, POISON_FANG ; Helping Hand → egg move
	learnset 40, TOXIC
	learnset 45, CHARM ; Flatter → NidoranF move
	learnset 50, POISON_JAB
	learnset 55, EARTH_POWER

	evos_attacks Nidorino
	evo_data EVOLVE_ITEM, MOON_STONE, NIDOKING
	learnset 1, LEER
	learnset 1, POISON_STING
	learnset 1, PECK
	learnset 1, FOCUS_ENERGY
	learnset 15, FURY_STRIKES ; Fury Attack → similar move
	learnset 22, TOXIC_SPIKES
	learnset 29, DOUBLE_KICK
	learnset 36, HORN_ATTACK
	learnset 43, POISON_FANG ; Helping Hand → egg move
	learnset 50, TOXIC
	learnset 57, CHARM ; Flatter → Nidorina move
	learnset 64, POISON_JAB
	learnset 71, EARTH_POWER

	evos_attacks Nidoking
	learnset 1, MEGAHORN
	learnset 1, SLUDGE_BOMB ; Sludge Wave → similar move
	learnset 1, FURY_STRIKES ; Fury Attack → similar move
	learnset 1, TOXIC_SPIKES
	learnset 1, DOUBLE_KICK
	learnset 1, HORN_ATTACK
	learnset 1, POISON_FANG ; Helping Hand → egg move
	learnset 1, TOXIC
	learnset 1, CHARM ; Flatter → Nidoqueen move
	learnset 1, POISON_JAB
	learnset 1, EARTH_POWER
	learnset 1, THRASH ; pre Gen8 move
	learnset 1, LEER
	learnset 1, POISON_STING
	learnset 1, PECK
	learnset 1, FOCUS_ENERGY

	evos_attacks Clefairy
	evo_data EVOLVE_ITEM, MOON_STONE, CLEFABLE
	learnset 1, SWEET_KISS
	learnset 1, CHARM
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, ENCORE ; Copycat → moved Encore from Lv8
	learnset 1, GROWL
	learnset 1, DEFENSE_CURL
	learnset 4, SING ; Stored Power → Cleffa move
	learnset 8, FURY_STRIKES ; Encore → pre Gen8 move (Double Slap)
	learnset 12, DISARM_VOICE ; After You → Cleffa move
	learnset 16, SWIFT ; Life Dew → LA tutor move
	learnset 20, DRAINING_KISS ; Metronome → LA move
	learnset 24, HEALINGLIGHT ; Moonlight → similar move
	learnset 28, PLAY_ROUGH ; Gravity → LA tutor move
	learnset 32, PSYCHIC_M ; Meteor Mash → LA move
	learnset 36, HEAL_BELL ; Follow Me → Gen7 tutor move
	learnset 40, CALM_MIND ; Cosmic Power → LA move
	learnset 44, MOONBLAST
	learnset 48, DOUBLE_EDGE ; Healing Wish → LA move

	evos_attacks Clefable
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, GROWL
	learnset 1, SING
	learnset 1, DEFENSE_CURL
	learnset 1, SWEET_KISS
	learnset 1, CHARM
	learnset 1, ENCORE
	learnset 1, HEALINGLIGHT ; Moonlight → similar move
	learnset 1, HEAL_BELL ; Follow Me → Gen7 tutor move
	learnset 1, CALM_MIND ; Cosmic Power → LA move
	learnset 1, PLAY_ROUGH ; Gravity → LA tutor move
	learnset 1, DOUBLE_EDGE ; Healing Wish → LA move
	learnset 1, FURY_STRIKES ; Copycat → pre Gen8 move (Double Slap)
	learnset 1, SWIFT ; After You → LA tutor move
	learnset 1, DRAINING_KISS ; Stored Power → LA move
	learnset 1, DISARM_VOICE
	learnset 1, AIR_SLASH ; added LZA move
	learnset 1, AMNESIA ; Metronome → LA move
	learnset 1, PSYCHIC_M ; Meteor Mash → LA move
	learnset 1, MOONBLAST
	learnset 1, BUBBLE_BEAM ; Life Dew → LZA move

	evos_attacks VulpixPlain
	evo_data EVOLVE_ITEM, FIRE_STONE, NINETALES, PLAIN_FORM
	learnset 1, EMBER
	learnset 1, LEER ; Tail Whip → similar move
	learnset 4, DISABLE
	learnset 8, QUICK_ATTACK
	learnset 12, CONFUSE_RAY ; Spite → moved Confuse Ray from Lv20
	learnset 16, WILL_O_WISP ; Incinerate → moved Will-O-Wisp from Lv24
	learnset 20, PAYBACK ; Confuse Ray → pre Gen8 move
	learnset 24, FLAME_BURST ; Will-O-Wisp → pre Gen8 move
	learnset 28, EXTRASENSORY
	learnset 32, FLAMETHROWER
	learnset 36, HYPNOSIS ; Imprison → egg move
	learnset 40, FIRE_SPIN
	learnset 44, SAFEGUARD
	learnset 48, OVERHEAT ; Inferno → TM move
	learnset 52, FIRE_BLAST

	evos_attacks NinetalesPlain
	learnset 1, DISABLE
	learnset 1, EMBER
	learnset 1, FIRE_SPIN
	learnset 1, FIRE_BLAST
	learnset 1, PAYBACK ; Spite → pre Gen8 move
	learnset 1, SAFEGUARD
	learnset 1, WILL_O_WISP
	learnset 1, HYPNOSIS ; Imprison → egg move
	learnset 1, EXTRASENSORY
	learnset 1, NASTY_PLOT
	learnset 1, FLAME_BURST ; Incinerate → pre Gen8 move
	learnset 1, OVERHEAT ; Inferno → TM move
	learnset 1, CONFUSE_RAY
	learnset 1, FLAMETHROWER
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, QUICK_ATTACK

	evos_attacks Jigglypuff
	evo_data EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	learnset 1, SWEET_KISS
	learnset 1, CHARM
	learnset 1, SING
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, DISABLE ; Copycat → Igglybuff move
	learnset 1, DEFENSE_CURL
	learnset 4, FURY_STRIKES ; Echoed Voice → pre Gen8 move (Double Slap)
	learnset 8, DISARM_VOICE ; Covet → Igglybuff move
	learnset 12, HEAL_BELL ; Stockpile/Swallow/Spit Up → Gen7 tutor move
	learnset 16, ROLLOUT ; Round → pre Gen8 move
	learnset 20, REST
	learnset 24, BODY_SLAM
	learnset 28, PLAY_ROUGH ; Mimic → SwSh move
	learnset 32, GYRO_BALL
	learnset 36, HYPER_VOICE
	learnset 44, DOUBLE_EDGE

	evos_attacks Wigglytuff
	learnset 1, SWEET_KISS
	learnset 1, DISARM_VOICE
	learnset 1, CHARM
	learnset 1, FURY_STRIKES ; Echoed Voice → pre Gen8 move (Double Slap)
	learnset 1, HEAL_BELL ; Stockpile/Swallow/Spit Up → Gen7 tutor move
	learnset 1, ROLLOUT ; Round → pre Gen8 move
	learnset 1, REST
	learnset 1, BODY_SLAM
	learnset 1, GYRO_BALL
	learnset 1, HYPER_VOICE
	learnset 1, DOUBLE_EDGE
	learnset 1, SING
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, DISABLE ; Copycat → Igglybuff move
	learnset 1, DEFENSE_CURL
	learnset 5, PLAY_ROUGH

	evos_attacks Zubat
	evo_data EVOLVE_LEVEL, 22, GOLBAT
	learnset 1, ABSORB
	learnset 1, SUPERSONIC
	learnset 5, POISON_STING ; Astonish → new move
	learnset 10, MEAN_LOOK
	learnset 15, POISON_FANG
	learnset 20, HYPNOSIS ; Quick Guard → LA move
	learnset 25, WING_ATTACK ; Air Cutter → pre Gen8 move
	learnset 30, BITE
	learnset 35, HAZE
	learnset 40, VENOSHOCK
	learnset 45, CONFUSE_RAY
	learnset 50, AIR_SLASH
	learnset 55, X_SCISSOR ; Leech Life → TM move

	evos_attacks Golbat
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	learnset 1, SCREECH
	learnset 1, ABSORB
	learnset 1, SUPERSONIC
	learnset 1, POISON_STING ; Astonish → new move
	learnset 1, MEAN_LOOK
	learnset 15, POISON_FANG
	learnset 20, HYPNOSIS ; Quick Guard → LA move
	learnset 27, WING_ATTACK ; Air Cutter → pre Gen8 move
	learnset 34, BITE
	learnset 41, HAZE
	learnset 48, VENOSHOCK
	learnset 55, CONFUSE_RAY
	learnset 62, AIR_SLASH
	learnset 69, X_SCISSOR ; Leech Life → TM move

	evos_attacks Paras
	evo_data EVOLVE_LEVEL, 24, PARASECT
	learnset 1, TACKLE ; Scratch → similar move
	learnset 6, STUN_SPORE
	learnset 6, POISONPOWDER
	learnset 11, ABSORB
	learnset 17, FURY_CUTTER
	learnset 22, SPORE
	learnset 27, SLASH
	learnset 33, GROWTH
	learnset 38, GIGA_DRAIN
	learnset 43, HEAL_BELL ; Aromatherapy → similar move
	learnset 49, LEECH_SEED ; Rage Powder → egg move
	learnset 54, X_SCISSOR

	evos_attacks Parasect
	learnset 1, POISON_JAB ; Cross Poison → TM move
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, STUN_SPORE
	learnset 1, POISONPOWDER
	learnset 1, ABSORB
	learnset 6, STUN_SPORE
	learnset 6, POISONPOWDER
	learnset 11, ABSORB
	learnset 17, FURY_CUTTER
	learnset 22, SPORE
	learnset 29, SLASH
	learnset 37, GROWTH
	learnset 44, GIGA_DRAIN
	learnset 51, HEAL_BELL ; Aromatherapy → similar move
	learnset 59, LEECH_SEED ; Rage Powder → egg move
	learnset 66, X_SCISSOR

	evos_attacks MeowthPlain
	evo_data EVOLVE_LEVEL, 28, PERSIAN, PLAIN_FORM
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
	learnset 36, SLASH
	learnset 40, NASTY_PLOT
	learnset 44, PLAY_ROUGH

	evos_attacks PersianPlain
	learnset 1, TRICK ; Switcheroo → new move
	learnset 1, TACKLE ; Fake Out → new move
	learnset 1, GROWL
	learnset 1, CHARM ; Feint → egg move
	learnset 1, QUICK_ATTACK ; Scratch → new move
	learnset 12, SWIFT ; Pay Day → TM move
	learnset 16, BITE
	learnset 20, HYPNOSIS ; Taunt → egg move
	learnset 24, FEINT_ATTACK ; Assurance → pre Gen8 move
	learnset 27, POWER_GEM ; evolution move
	learnset 31, FURY_STRIKES ; Fury Swipes → similar move
	learnset 36, SCREECH
	learnset 42, SLASH
	learnset 48, NASTY_PLOT
	learnset 54, PLAY_ROUGH

	evos_attacks Psyduck
	evo_data EVOLVE_LEVEL, 33, GOLDUCK
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, LEER ; Tail Whip → similar move
	learnset 3, WATER_GUN
	learnset 6, CONFUSION
	learnset 9, FURY_STRIKES ; Fury Swipes → similar move
	learnset 12, WATER_PULSE
	learnset 15, DISABLE
	learnset 18, ZEN_HEADBUTT
	learnset 21, SCREECH
	learnset 24, AQUA_TAIL
	learnset 27, HYPNOSIS ; Soak → LA move
	learnset 30, CONFUSE_RAY ; Psych Up → egg move
	learnset 34, AMNESIA
	learnset 39, TRICK_ROOM ; Wonder Room → similar move

	evos_attacks Golduck
	learnset 1, AQUA_JET
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, WATER_GUN
	learnset 1, CONFUSION
	learnset 9, FURY_STRIKES ; Fury Swipes → similar move
	learnset 12, WATER_PULSE
	learnset 15, DISABLE
	learnset 18, ZEN_HEADBUTT
	learnset 21, SCREECH
	learnset 24, AQUA_TAIL
	learnset 27, HYPNOSIS ; Soak → LA move
	learnset 30, CONFUSE_RAY ; Psych Up → egg move
	learnset 36, AMNESIA
	learnset 40, HYDRO_PUMP ; added pre Gen9 move
	learnset 45, TRICK_ROOM ; Wonder Room → similar move

	evos_attacks Mankey
	evo_data EVOLVE_LEVEL, 28, PRIMEAPE
	learnset 1, THIEF ; Covet → similar move
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, LEER
	learnset 1, FOCUS_ENERGY
	learnset 5, FURY_STRIKES ; Fury Swipes → similar move
	learnset 8, LOW_KICK
	learnset 12, SEISMIC_TOSS
	learnset 17, SWAGGER
	learnset 22, DRAIN_PUNCH ; Cross Chop → SV TM move
	learnset 26, PAYBACK ; Assurance → pre Gen9 TM move
	learnset 29, THRASH
	learnset 33, CLOSE_COMBAT
	learnset 36, SCREECH
	learnset 40, DYNAMICPUNCH ; Stomping Tantrum → GSC TM move
	learnset 44, OUTRAGE
	learnset 48, COUNTER ; Final Gambit → LGPE move

	evos_attacks Primeape
	evo_data EVOLVE_MOVE, OUTRAGE, ANNIHILAPE
	learnset 1, THIEF ; Fling → Mankey move
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, LEER
	learnset 1, FOCUS_ENERGY
	learnset 5, FURY_STRIKES ; Fury Swipes → similar move
	learnset 8, LOW_KICK
	learnset 15, SEISMIC_TOSS
	learnset 17, SWAGGER
	learnset 22, DRAIN_PUNCH ; Cross Chop → SV TM move
	learnset 26, PAYBACK ; Assurance → pre Gen9 TM move
	learnset 27, REVENGE ; evolution move (Rage → pre Gen9 egg move)
	learnset 30, U_TURN ; Thrash → LGPE move
	learnset 35, THRASH ; Rage Fist → moved Thrash from Lv30
	learnset 39, CLOSE_COMBAT
	learnset 44, SCREECH
	learnset 48, DYNAMICPUNCH ; Stomping Tantrum → GSC TM move
	learnset 53, OUTRAGE
	learnset 57, COUNTER ; Final Gambit → LGPE move

	evos_attacks GrowlithePlain
	evo_data EVOLVE_ITEM, FIRE_STONE, ARCANINE
	learnset 1, EMBER
	learnset 1, LEER
	learnset 4, FORESIGHT ; Howl → pre Gen8 move (Odor Sleuth)
	learnset 8, BITE
	learnset 12, FLAME_CHARGE ; Flame Wheel → TM move
	learnset 16, HEALINGLIGHT ; Helping Hand → egg move (Morning Sun)
	learnset 20, AGILITY
	learnset 24, FIRE_FANG
	learnset 28, FLAME_BURST ; Retaliate → pre Gen8 move
	learnset 32, CRUNCH
	learnset 36, TAKE_DOWN
	learnset 40, FLAMETHROWER
	learnset 44, ROAR
	learnset 48, PLAY_ROUGH
	learnset 52, REVERSAL
	learnset 56, FLARE_BLITZ
	learnset 60, OUTRAGE ; added pre Gen8 move

	evos_attacks ArcaninePlain
	learnset 1, FLAME_CHARGE ; Flame Wheel → TM move
	learnset 1, HEALINGLIGHT ; Helping Hand → egg move (Morning Sun)
	learnset 1, AGILITY
	learnset 1, FIRE_FANG
	learnset 1, FLAME_BURST ; Retaliate → pre Gen8 move
	learnset 1, CRUNCH
	learnset 1, TAKE_DOWN
	learnset 1, ROAR
	learnset 1, PLAY_ROUGH
	learnset 1, REVERSAL
	learnset 1, FLARE_BLITZ
	learnset 1, OUTRAGE ; added pre Gen8 move
	learnset 1, EXTREMESPEED ; evolution move
	learnset 1, EMBER
	learnset 1, LEER
	learnset 1, FORESIGHT ; Howl → pre Gen8 move (Odor Sleuth)
	learnset 1, BITE
	learnset 5, FLAMETHROWER
	learnset 64, OUTRAGE ; added pre Gen8 move

	evos_attacks Poliwag
	evo_data EVOLVE_LEVEL, 25, POLIWHIRL
	learnset 1, WATER_GUN
	learnset 1, HYPNOSIS
	learnset 6, TACKLE ; Pound → similar move
	learnset 12, MUD_SHOT
	learnset 18, BUBBLE_BEAM
	learnset 24, RAIN_DANCE
	learnset 30, BODY_SLAM
	learnset 36, EARTH_POWER
	learnset 42, HYDRO_PUMP
	learnset 48, BELLY_DRUM
	learnset 54, DOUBLE_EDGE

	evos_attacks Poliwhirl
	evo_data EVOLVE_TRADE, KINGS_ROCK, POLITOED
	evo_data EVOLVE_ITEM, WATER_STONE, POLIWRATH
	learnset 1, WATER_GUN
	learnset 1, HYPNOSIS
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, MUD_SHOT
	learnset 18, BUBBLE_BEAM
	learnset 24, RAIN_DANCE
	learnset 32, BODY_SLAM
	learnset 40, EARTH_POWER
	learnset 48, HYDRO_PUMP
	learnset 56, BELLY_DRUM
	learnset 66, DOUBLE_EDGE

	evos_attacks Poliwrath
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, DOUBLE_EDGE
	learnset 1, WATER_GUN
	learnset 1, HYDRO_PUMP
	learnset 1, BELLY_DRUM
	learnset 1, RAIN_DANCE
	learnset 1, MUD_SHOT
	learnset 1, EARTH_POWER
	learnset 1, CLOSE_COMBAT ; Circle Throw → SV TM move
	learnset 1, DYNAMICPUNCH
	learnset 1, BUBBLE_BEAM
	learnset 1, BODY_SLAM
	learnset 1, HYPNOSIS

	evos_attacks GeodudePlain
	evo_data EVOLVE_LEVEL, 25, GRAVELER, PLAIN_FORM
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 6, MUD_SLAP ; Rock Polish → LA move
	learnset 10, ROLLOUT
	learnset 12, MAGNITUDE ; Bulldoze → pre Gen8 move
	learnset 16, ROCK_THROW
	learnset 18, BULLDOZE ; Smack Down → moved Bulldoze from Lv12
	learnset 24, ROCK_BLAST ; Self-Destruct → moved Rock Blast from Lv30
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
	learnset 1, MUD_SLAP ; Rock Polish → LA move
	learnset 10, ROLLOUT
	learnset 12, MAGNITUDE ; Bulldoze → pre Gen8 move
	learnset 16, ROCK_THROW
	learnset 18, BULLDOZE ; Smack Down → moved Bulldoze from Lv12
	learnset 24, ROCK_BLAST ; Self-Destruct → moved Rock Blast from Lv30
	learnset 30, SANDSTORM ; Stealth Rock → TM move
	learnset 34, ROCK_SLIDE ; Rock Blast → TM move
	learnset 40, EARTHQUAKE
	learnset 44, EXPLOSION
	learnset 50, DOUBLE_EDGE
	learnset 54, STONE_EDGE

	evos_attacks GolemPlain
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 1, MUD_SLAP ; Rock Polish → LA move
	learnset 1, ROLLOUT ; Heavy Slam → Graveler move
	learnset 16, ROCK_THROW
	learnset 18, MAGNITUDE ; Smack Down → pre Gen8 move
	learnset 22, BULLDOZE
	learnset 24, ROCK_BLAST ; Self-Destruct → moved Rock Blast from Lv30
	learnset 30, SANDSTORM ; Stealth Rock → TM move
	learnset 34, ROCK_SLIDE ; Rock Blast → TM move
	learnset 40, EARTHQUAKE
	learnset 44, EXPLOSION
	learnset 50, DOUBLE_EDGE
	learnset 54, STONE_EDGE
	learnset 60, HAMMER_ARM ; Heavy Slam → egg move (added from Gen8)

	evos_attacks PonytaPlain
	evo_data EVOLVE_LEVEL, 40, RAPIDASH, PLAIN_FORM
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 5, LEER ; Tail Whip → similar move
	learnset 10, EMBER
	learnset 15, FLAME_CHARGE
	learnset 20, AGILITY
	learnset 25, DOUBLE_KICK ; Flame Wheel → LGPE move
	learnset 30, STOMP
	learnset 35, FIRE_SPIN
	learnset 41, TAKE_DOWN
	learnset 45, OVERHEAT ; Inferno → TM move
	learnset 50, FIRE_BLAST
	learnset 55, FLARE_BLITZ

	evos_attacks RapidashPlain
	learnset 1, MEGAHORN
	learnset 1, POISON_JAB
	learnset 1, TACKLE
	learnset 1, QUICK_ATTACK
	learnset 1, GROWL
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, EMBER
	learnset 15, FLAME_CHARGE
	learnset 20, AGILITY
	learnset 25, DOUBLE_KICK ; Flame Wheel → LGPE move
	learnset 30, STOMP
	learnset 35, FIRE_SPIN
	learnset 39, MEGAHORN ; evolution move (Smart Strike → reminder move)
	learnset 43, TAKE_DOWN
	learnset 49, OVERHEAT ; Inferno → TM move
	learnset 56, FIRE_BLAST
	learnset 63, FLARE_BLITZ

	evos_attacks SlowpokePlain
	evo_data EVOLVE_TRADE, KINGS_ROCK, SLOWKING, PLAIN_FORM
	evo_data EVOLVE_LEVEL, 37, SLOWBRO, PLAIN_FORM
	learnset 1, TACKLE
	learnset 1, CURSE
	learnset 3, GROWL
	learnset 6, WATER_GUN
	learnset 9, SAFEGUARD ; Yawn → TM move
	learnset 12, CONFUSION
	learnset 15, DISABLE
	learnset 18, WATER_PULSE
	learnset 21, HEADBUTT
	learnset 24, ZEN_HEADBUTT
	learnset 27, AMNESIA
	learnset 30, SCALD ; Surf → SwSh TR move
	learnset 33, RECOVER ; Slack Off → similar move
	learnset 36, PSYCHIC_M
	learnset 39, BELLY_DRUM ; Psych Up → egg move
	learnset 42, RAIN_DANCE
	learnset 45, FUTURE_SIGHT ; Heal Pulse → egg move

	evos_attacks SlowbroPlain
	learnset 1, BELLY_DRUM ; added Slowpoke move
	learnset 1, FUTURE_SIGHT
	learnset 1, TACKLE
	learnset 1, CURSE
	learnset 1, GROWL
	learnset 1, WATER_GUN
	learnset 9, SAFEGUARD ; Yawn → TM move
	learnset 12, CONFUSION
	learnset 15, DISABLE
	learnset 18, WATER_PULSE
	learnset 21, HEADBUTT
	learnset 24, ZEN_HEADBUTT
	learnset 27, AMNESIA
	learnset 30, SCALD ; Surf → SwSh TR move
	learnset 33, RECOVER ; Slack Off → similar move
	learnset 36, PSYCHIC_M
	learnset 36, DEFENSE_CURL ; evolution move (Withdraw → similar move)
	learnset 41, RAZOR_SHELL ; Psych Up → SwSh TM move
	learnset 46, RAIN_DANCE
	learnset 51, FUTURE_SIGHT ; Heal Pulse → egg move

	evos_attacks Magnemite
	evo_data EVOLVE_LEVEL, 30, MAGNETON
	learnset 1, THUNDERSHOCK
	learnset 1, TACKLE
	learnset 4, SUPERSONIC
	learnset 8, THUNDER_WAVE
	learnset 12, SONIC_BOOM ; Electro Ball → pre Gen8 move
	learnset 16, GYRO_BALL
	learnset 20, SPARK
	learnset 24, SCREECH
	learnset 28, SHOCK_WAVE ; Magnet Rise → Gen3/4 TM move
	learnset 32, FLASH_CANNON
	learnset 36, THUNDERBOLT ; Discharge → TM move
	learnset 40, BARRIER ; Metal Sound → SV TM move (Iron Defense)
	learnset 44, LIGHT_SCREEN
	learnset 48, THUNDER ; Lock-On → LGPE move
	learnset 52, ZAP_CANNON

	evos_attacks Magneton
	evo_data EVOLVE_ITEM, THUNDERSTONE, MAGNEZONE
	learnset 1, EXPLOSION ; Electric Terrain → TM move
	learnset 1, THUNDERSHOCK
	learnset 1, TACKLE
	learnset 1, SUPERSONIC
	learnset 1, THUNDER_WAVE
	learnset 12, SONIC_BOOM ; Electro Ball → pre Gen8 move
	learnset 16, GYRO_BALL
	learnset 20, SPARK
	learnset 24, SCREECH
	learnset 28, SHOCK_WAVE ; Magnet Rise → Gen3/4 TM move
	learnset 29, TRI_ATTACK ; evolution move
	learnset 34, FLASH_CANNON
	learnset 40, THUNDERBOLT ; Discharge → TM move
	learnset 46, BARRIER ; Metal Sound → SV TM move (Iron Defense)
	learnset 52, LIGHT_SCREEN
	learnset 58, THUNDER ; Lock-On → LGPE move
	learnset 64, ZAP_CANNON

	evos_attacks Seel
	evo_data EVOLVE_LEVEL, 34, DEWGONG
	learnset 1, HEADBUTT
	learnset 3, GROWL
	learnset 7, CHARM
	learnset 11, ICY_WIND
	learnset 13, ENCORE
	learnset 17, ICE_SHARD
	learnset 21, REST
	learnset 23, ICICLE_SPEAR ; Aqua Ring → egg move
	learnset 27, AURORA_BEAM
	learnset 31, AQUA_JET
	learnset 33, BRINE
	learnset 37, TAKE_DOWN
	learnset 41, DOUBLE_EDGE ; Dive → LGPE move
	learnset 43, AQUA_TAIL
	learnset 47, ICE_BEAM
	learnset 51, SAFEGUARD
	learnset 53, HAIL ; Snowscape → similar move

	evos_attacks Dewgong
	learnset 1, HEADBUTT
	learnset 1, GROWL
	learnset 1, ICY_WIND
	learnset 13, ENCORE
	learnset 17, ICE_SHARD
	learnset 21, REST
	learnset 23, ICICLE_SPEAR ; Aqua Ring → egg move
	learnset 27, AURORA_BEAM
	learnset 31, AQUA_JET
	learnset 33, BRINE
	learnset 33, SIGNAL_BEAM ; evolution move (Sheer Cold → pre Gen8 move)
	learnset 39, TAKE_DOWN
	learnset 45, DOUBLE_EDGE ; Dive → LGPE move
	learnset 49, AQUA_TAIL
	learnset 55, ICE_BEAM
	learnset 61, SAFEGUARD
	learnset 65, HAIL ; Snowscape → similar move

	evos_attacks GrimerPlain
	evo_data EVOLVE_LEVEL, 38, MUK, PLAIN_FORM
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, HAZE ; Poison Gas → LGPE move
	learnset 4, DEFENSE_CURL ; Harden → similar move
	learnset 7, MUD_SLAP
	learnset 12, DISABLE
	learnset 15, ACID ; Sludge → new move
	learnset 18, MUD_SHOT
	learnset 21, SHADOW_SNEAK ; Minimize → egg move
	learnset 26, TOXIC
	learnset 29, SLUDGE_BOMB
	learnset 32, GIGA_DRAIN ; Sludge Wave → TM move
	learnset 37, SCREECH
	learnset 40, GUNK_SHOT
	learnset 43, BARRIER ; Acid Armor → similar move
	learnset 46, CURSE ; Belch → egg move
	learnset 48, EXPLOSION ; Memento → TM move

	evos_attacks MukPlain
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, HAZE ; Poison Gas → LGPE move
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 1, MUD_SLAP
	learnset 12, DISABLE
	learnset 15, ACID ; Sludge → new move
	learnset 18, MUD_SHOT
	learnset 21, SHADOW_SNEAK ; Minimize → egg move
	learnset 26, TOXIC
	learnset 29, SLUDGE_BOMB
	learnset 32, GIGA_DRAIN ; Sludge Wave → TM move
	learnset 37, SCREECH
	learnset 37, TOXIC_SPIKES ; evolution move (Venom Drench → SV TM move)
	learnset 40, GUNK_SHOT
	learnset 46, BARRIER ; Acid Armor → similar move
	learnset 52, CURSE ; Belch → egg move
	learnset 57, EXPLOSION ; Memento → TM move

	evos_attacks Gastly
	evo_data EVOLVE_LEVEL, 25, HAUNTER
	learnset 1, LICK
	learnset 1, CONFUSE_RAY
	learnset 4, HYPNOSIS
	learnset 8, MEAN_LOOK
	learnset 12, PAYBACK
	learnset 16, SHADOW_SNEAK ; Spite → LZA move
	learnset 20, CURSE
	learnset 24, HEX
	learnset 28, NIGHT_SHADE
	learnset 32, SUCKER_PUNCH
	learnset 36, DARK_PULSE
	learnset 40, SHADOW_BALL
	learnset 44, DESTINY_BOND
	learnset 48, DREAM_EATER

	evos_attacks Haunter
	evo_data EVOLVE_TRADE, LINKING_CORD, GENGAR
	learnset 1, LICK
	learnset 1, CONFUSE_RAY
	learnset 1, HYPNOSIS
	learnset 1, MEAN_LOOK
	learnset 12, PAYBACK
	learnset 16, SHADOW_SNEAK ; Spite → LZA move
	learnset 20, CURSE
	learnset 24, HEX
	learnset 24, SHADOW_CLAW ; evolution move (Shadow Punch → TM move)
	learnset 30, NIGHT_SHADE
	learnset 36, SUCKER_PUNCH
	learnset 42, DARK_PULSE
	learnset 48, SHADOW_BALL
	learnset 54, DESTINY_BOND
	learnset 60, DREAM_EATER

	evos_attacks Gengar
	learnset 1, SHADOW_CLAW ; Shadow Punch → TM move
	learnset 1, PERISH_SONG
	learnset 1, LICK
	learnset 1, CONFUSE_RAY
	learnset 1, HYPNOSIS
	learnset 1, MEAN_LOOK
	learnset 12, PAYBACK
	learnset 16, SHADOW_SNEAK ; Spite → LZA move
	learnset 20, CURSE
	learnset 24, HEX
	learnset 30, NIGHT_SHADE
	learnset 36, SUCKER_PUNCH
	learnset 42, DARK_PULSE
	learnset 48, SHADOW_BALL
	learnset 54, DESTINY_BOND
	learnset 60, DREAM_EATER

	evos_attacks Onix
	evo_data EVOLVE_TRADE, METAL_COAT, STEELIX
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 1, WRAP ; Bind → similar move
	learnset 1, ROCK_THROW
	learnset 4, ROLLOUT ; Smack Down → LA move
	learnset 8, AGILITY ; Rock Polish → similar move
	learnset 12, DRAGONBREATH
	learnset 16, CURSE
	learnset 20, ROCK_SLIDE
	learnset 24, SCREECH
	learnset 28, BULLDOZE ; Sand Tomb → LA move
	learnset 32, GYRO_BALL ; Stealth Rock → pre Gen8 move
	learnset 36, DOUBLE_EDGE ; Slam → moved Double-Edge from Lv56
	learnset 40, SANDSTORM
	learnset 44, DIG
	learnset 48, IRON_TAIL
	learnset 52, STONE_EDGE
	learnset 56, HEAD_SMASH ; Double-Edge → LZA move

	evos_attacks Exeggcute
	evo_data EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR, PLAIN_FORM
	evo_data EVOLVE_ITEM, ODD_SOUVENIR, EXEGGUTOR, ALOLAN_FORM
	learnset 1, ABSORB
	learnset 1, HYPNOSIS
	learnset 5, REFLECT
	learnset 10, LEECH_SEED
	learnset 15, MEGA_DRAIN
	learnset 20, CONFUSION
	learnset 25, HEALINGLIGHT ; Synthesis → similar move
	learnset 30, PSYBEAM ; Bullet Seed → SV TM move
	learnset 35, GIGA_DRAIN
	learnset 40, EXTRASENSORY
	learnset 45, ANCIENTPOWER ; Uproar → egg move
	learnset 50, SLEEP_POWDER ; Worry Seed → pre Gen8 move
	learnset 55, SOLAR_BEAM

	evos_attacks ExeggutorPlain
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
	learnset 1, STOMP ; evolution move
	learnset 1, ABSORB
	learnset 1, HYPNOSIS
	learnset 1, REFLECT
	learnset 1, LEECH_SEED

	evos_attacks Lickitung
	evo_data EVOLVE_MOVE, ROLLOUT, LICKILICKY
	learnset 1, LICK
	learnset 1, DEFENSE_CURL
	learnset 6, ROLLOUT
	learnset 12, SUPERSONIC
	learnset 18, WRAP
	learnset 24, DISABLE
	learnset 30, STOMP
	learnset 36, KNOCK_OFF
	learnset 42, SCREECH
	learnset 48, DOUBLE_EDGE ; Slam → LA move
	learnset 54, POWER_WHIP
	learnset 60, BELLY_DRUM

	evos_attacks Koffing
	evo_data EVOLVE_TRADE, CHARCOAL, WEEZING, GALARIAN_FORM
	evo_data EVOLVE_LEVEL, 35, WEEZING, PLAIN_FORM
	learnset 1, HAZE ; Poison Gas → moved Haze from Lv24
	learnset 1, TACKLE
	learnset 4, ACID ; Smog → new move
	learnset 8, MUD_SLAP ; Smokescreen → new move
	learnset 12, TOXIC_SPIKES ; Clear Smog → egg move
	learnset 16, PAYBACK ; Assurance → Gen7 TM move
	learnset 20, VENOSHOCK ; Sludge → TM move
	learnset 24, SCREECH ; Haze → LGPE move
	learnset 28, PSYBEAM ; Self-Destruct → egg move
	learnset 32, SLUDGE_BOMB
	learnset 36, TOXIC
	learnset 40, GUNK_SHOT ; Belch → SV TM move
	learnset 44, EXPLOSION
	learnset 48, PAIN_SPLIT ; Memento → Gen7 tutor move
	learnset 52, DESTINY_BOND

	evos_attacks WeezingPlain
	learnset 1, HAZE ; Poison Gas → moved Haze from Lv24
	learnset 1, TACKLE
	learnset 1, ACID ; Smog → new move
	learnset 1, MUD_SLAP ; Smokescreen → new move
	learnset 12, TOXIC_SPIKES ; Clear Smog → egg move
	learnset 16, PAYBACK ; Assurance → Gen7 TM move
	learnset 20, VENOSHOCK ; Sludge → TM move
	learnset 24, SCREECH ; Haze → LGPE move
	learnset 28, PSYBEAM ; Self-Destruct → egg move
	learnset 32, SLUDGE_BOMB
	learnset 34, GYRO_BALL ; evolution move (Double Hit → pre Gen8 move)
	learnset 38, TOXIC
	learnset 44, GUNK_SHOT ; Belch → SV TM move
	learnset 50, EXPLOSION
	learnset 56, PAIN_SPLIT ; Memento → Gen7 tutor move
	learnset 62, DESTINY_BOND

	evos_attacks Tangela
	evo_data EVOLVE_MOVE, ANCIENTPOWER, TANGROWTH
	learnset 1, ABSORB
	learnset 1, WRAP ; Bind → similar move
	learnset 4, STUN_SPORE
	learnset 8, GROWTH
	learnset 12, MEGA_DRAIN
	learnset 16, VINE_WHIP
	learnset 20, POISONPOWDER
	learnset 24, ANCIENTPOWER
	learnset 28, KNOCK_OFF
	learnset 32, GIGA_DRAIN
	learnset 36, SLEEP_POWDER
	learnset 40, BODY_SLAM ; Slam → similar move
	learnset 44, AMNESIA ; Tickle → LGPE move
	learnset 48, POWER_WHIP
	learnset 52, LEECH_SEED ; Ingrain → LGPE move
	learnset 56, HEALINGLIGHT ; Grassy Terrain → Gen7 tutor move (Synthesis)

	evos_attacks Kangaskhan
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, LEER ; Tail Whip → similar move
	learnset 4, GROWL
	learnset 8, DISABLE ; Fake Out → egg move
	learnset 12, BITE
	learnset 16, STOMP
	learnset 20, FOCUS_ENERGY
	learnset 24, HEADBUTT
	learnset 28, SUCKER_PUNCH
	learnset 32, DIZZY_PUNCH ; Double Hit → pre Gen8 move
	learnset 36, CRUNCH
	learnset 40, ENDURE
	learnset 44, REVERSAL
	learnset 48, OUTRAGE
	learnset 52, DYNAMICPUNCH ; Last Resort → LZA move

	evos_attacks Horsea
	evo_data EVOLVE_LEVEL, 32, SEADRA
	learnset 1, WATER_GUN ; Bubble → similar move
	learnset 1, LEER
	learnset 5, MUD_SLAP ; Smokescreen → similar move
	learnset 10, DRAGON_RAGE ; Twister → egg move
	learnset 15, FOCUS_ENERGY
	learnset 20, DRAGONBREATH
	learnset 25, BUBBLE_BEAM
	learnset 30, AGILITY
	learnset 35, WATER_PULSE
	learnset 40, DRAGON_PULSE
	learnset 45, HYDRO_PUMP
	learnset 50, DRAGON_DANCE
	learnset 55, RAIN_DANCE

	evos_attacks Seadra
	evo_data EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	learnset 1, WATER_GUN ; Bubble → similar move
	learnset 1, LEER
	learnset 1, MUD_SLAP ; Smokescreen → similar move
	learnset 1, DRAGON_RAGE ; Twister → egg move
	learnset 15, FOCUS_ENERGY
	learnset 20, DRAGONBREATH
	learnset 25, BUBBLE_BEAM
	learnset 30, AGILITY
	learnset 37, WATER_PULSE
	learnset 44, DRAGON_PULSE
	learnset 51, HYDRO_PUMP
	learnset 58, DRAGON_DANCE
	learnset 65, RAIN_DANCE

	evos_attacks Staryu
	evo_data EVOLVE_ITEM, WATER_STONE, STARMIE
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 4, WATER_GUN
	learnset 8, CONFUSE_RAY
	learnset 12, RAPID_SPIN
	learnset 16, AQUA_JET ; Minimize → LZA move
	learnset 20, SWIFT
	learnset 24, PSYBEAM
	learnset 28, BRINE
	learnset 32, LIGHT_SCREEN
	learnset 36, POWER_GEM
	learnset 40, PSYCHIC_M
	learnset 44, SCALD ; Surf → TM move
	learnset 48, RECOVER
	learnset 52, SIGNAL_BEAM ; Cosmic Power → Gen7 tutor move
	learnset 56, HYDRO_PUMP

	evos_attacks Starmie
	learnset 1, RAPID_SPIN
	learnset 1, AQUA_JET ; Minimize → LZA move
	learnset 1, SWIFT
	learnset 1, PSYBEAM
	learnset 1, BRINE
	learnset 1, LIGHT_SCREEN
	learnset 1, POWER_GEM
	learnset 1, PSYCHIC_M
	learnset 1, SCALD ; Surf → TM move
	learnset 1, RECOVER
	learnset 1, SIGNAL_BEAM ; Cosmic Power → Gen7 tutor move
	learnset 1, HYDRO_PUMP
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 1, WATER_GUN
	learnset 1, CONFUSE_RAY

	evos_attacks MrMimePlain
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, CHARM ; Copycat → egg move
	learnset 1, BATON_PASS
	learnset 1, ENCORE
	learnset 12, CONFUSION
	learnset 16, HYPNOSIS ; Role Play → LA move
	learnset 20, PROTECT
	learnset 24, TRICK ; Recycle → pre Gen8 move
	learnset 28, PSYBEAM
	learnset 32, SUBSTITUTE ; Mimic → pre Gen8 move
	learnset 36, LIGHT_SCREEN
	learnset 36, REFLECT
	learnset 36, SAFEGUARD
	learnset 40, SUCKER_PUNCH
	learnset 44, DAZZLINGLEAM
	learnset 48, PSYCHIC_M
	learnset 52, CALM_MIND ; Teeter Dance → LA move

	evos_attacks Scyther
	evo_data EVOLVE_TRADE, METAL_COAT, SCIZOR
	evo_data EVOLVE_HOLDING, HARD_STONE, TR_ANYTIME, KLEAVOR
	learnset 1, QUICK_ATTACK
	learnset 1, LEER
	learnset 4, FURY_CUTTER
	learnset 8, FALSE_SWIPE
	learnset 12, WING_ATTACK
	learnset 16, DOUBLE_TEAM
	learnset 20, STEEL_WING ; Double Hit → egg move
	learnset 24, SLASH
	learnset 28, FOCUS_ENERGY
	learnset 32, AGILITY
	learnset 36, AIR_SLASH
	learnset 40, X_SCISSOR
	learnset 44, SWORDS_DANCE

	evos_attacks Electabuzz
	evo_data EVOLVE_TRADE, ELECTIRIZER, ELECTIVIRE
	learnset 1, QUICK_ATTACK
	learnset 1, LEER
	learnset 1, THUNDERSHOCK
	learnset 1, THUNDER_WAVE ; Charge → moved Thunder Wave from Lv20
	learnset 12, SWIFT
	learnset 16, SHOCK_WAVE
	learnset 20, SPARK ; Thunder Wave → LA move
	learnset 24, SCREECH
	learnset 28, THUNDERPUNCH
	learnset 34, VOLT_SWITCH ; Discharge → TM move
	learnset 40, LOW_KICK
	learnset 46, THUNDERBOLT
	learnset 52, LIGHT_SCREEN
	learnset 58, THUNDER
	learnset 64, GIGA_IMPACT

	evos_attacks Magmar
	evo_data EVOLVE_TRADE, MAGMARIZER, MAGMORTAR
	learnset 1, TACKLE ; Smog → LA move
	learnset 1, LEER
	learnset 1, EMBER
	learnset 1, MACH_PUNCH ; Smokescreen → egg move
	learnset 12, FEINT_ATTACK ; Clear Smog → pre Gen8 move
	learnset 16, FIRE_SPIN ; Flame Wheel → pre Gen8 move
	learnset 20, CONFUSE_RAY
	learnset 24, SCARY_FACE
	learnset 28, FIRE_PUNCH
	learnset 34, FLAME_BURST ; Lava Plume → pre Gen8 move
	learnset 40, LOW_KICK
	learnset 46, FLAMETHROWER
	learnset 52, SUNNY_DAY
	learnset 58, FIRE_BLAST
	learnset 64, HYPER_BEAM

	evos_attacks Pinsir
	learnset 1, TACKLE ; Vice Grip → LZA move
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 4, FOCUS_ENERGY
	learnset 8, WRAP ; Bind → similar move
	learnset 12, SEISMIC_TOSS
	learnset 16, BUG_BITE
	learnset 20, REVENGE ; Storm Throw → pre Gen8 move
	learnset 24, SLASH ; Double Hit → RBY move
	learnset 28, BRICK_BREAK ; Vital throw → pre Gen8 move
	learnset 32, X_SCISSOR
	learnset 36, THRASH ; Strength → pre Gen8 move
	learnset 40, SWORDS_DANCE
	learnset 44, OUTRAGE ; Submission → LZA TM move
	learnset 48, MEGAHORN ; Guillotine → new move
	learnset 52, CLOSE_COMBAT ; Superpower → LZA move

	evos_attacks Lapras
	learnset 1, GROWL
	learnset 1, WATER_GUN
	learnset 5, SING
	learnset 10, FORESIGHT ; Mist → egg move
	learnset 15, SAFEGUARD ; Life Dew → pre Gen8 move
	learnset 20, ICE_SHARD
	learnset 25, CONFUSE_RAY
	learnset 30, WATER_PULSE
	learnset 35, BRINE
	learnset 40, BODY_SLAM
	learnset 45, ICE_BEAM
	learnset 50, RAIN_DANCE
	learnset 55, HYDRO_PUMP
	learnset 60, PERISH_SONG
	learnset 65, DRAGON_PULSE ; Sheer Cold → LGPE move

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
	learnset 1, WEATHER_BALL ; Helping Hand → SV TM move
	learnset 1, THIEF ; Covet → similar move
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 1, LEER ; Tail Whip → similar move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 10, QUICK_ATTACK
	learnset 15, DOUBLE_KICK ; Baby-Doll Eyes → pre Gen8 move
	learnset 20, SWIFT
	learnset 25, BITE
	learnset 30, HEAL_BELL ; Copycat → Gen7 tutor move
	learnset 35, BATON_PASS
	learnset 40, TAKE_DOWN
	learnset 45, CHARM
	learnset 50, HYPER_VOICE ; Double-Edge → SV TM move
	learnset 55, DOUBLE_EDGE ; Last Resort → moved Double-Edge from Lv50

	evos_attacks Vaporeon
	learnset 1, THIEF ; Covet → similar move
	learnset 1, SWIFT
	learnset 1, BITE
	learnset 1, HEAL_BELL ; Copycat → Gen7 tutor move
	learnset 1, BATON_PASS
	learnset 1, TAKE_DOWN
	learnset 1, CHARM
	learnset 1, HYPER_VOICE ; Double-Edge → SV TM move
	learnset 1, WEATHER_BALL ; Helping Hand → SV TM move
	learnset 1, WATER_GUN ; evolution move
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 1, LEER ; Tail Whip → similar move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 10, QUICK_ATTACK
	learnset 15, DOUBLE_KICK ; Baby-Doll Eyes → pre Gen8 move
	learnset 20, HAZE
	learnset 25, WATER_PULSE
	learnset 30, AURORA_BEAM
	learnset 35, RECOVER ; Aqua Ring → similar move
	learnset 40, AQUA_TAIL ; Muddy Water → LA move
	learnset 45, BARRIER ; Acid Armor → similar move
	learnset 50, HYDRO_PUMP
	learnset 55, DOUBLE_EDGE ; Last Resort → Eevee move

	evos_attacks Jolteon
	learnset 1, THIEF ; Covet → similar move
	learnset 1, SWIFT
	learnset 1, BITE
	learnset 1, HEAL_BELL ; Copycat → Gen7 tutor move
	learnset 1, BATON_PASS
	learnset 1, TAKE_DOWN
	learnset 1, CHARM
	learnset 1, HYPER_VOICE ; Double-Edge → SV TM move
	learnset 1, WEATHER_BALL ; Helping Hand → SV TM move
	learnset 1, THUNDERSHOCK ; evolution move
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 1, LEER ; Tail Whip → similar move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 10, QUICK_ATTACK
	learnset 15, DOUBLE_KICK ; Baby-Doll Eyes → moved Double Kick from Lv25
	learnset 20, THUNDER_WAVE
	learnset 25, HEADBUTT ; Double Kick → LZA move
	learnset 30, THUNDER_FANG
	learnset 35, PIN_MISSILE
	learnset 40, THUNDERBOLT ; Discharge → LA move
	learnset 45, AGILITY
	learnset 50, THUNDER
	learnset 55, DOUBLE_EDGE ; Last Resort → Eevee move

	evos_attacks Flareon
	learnset 1, THIEF ; Covet → similar move
	learnset 1, SWIFT
	learnset 1, HEAL_BELL ; Copycat → Gen7 tutor move
	learnset 1, BATON_PASS
	learnset 1, TAKE_DOWN
	learnset 1, CHARM
	learnset 1, HYPER_VOICE ; Double-Edge → SV TM move
	learnset 1, WEATHER_BALL ; Helping Hand → SV TM move
	learnset 1, EMBER ; evolution move
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 1, LEER ; Tail Whip → similar move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 10, QUICK_ATTACK
	learnset 15, DOUBLE_KICK ; Baby-Doll Eyes → pre Gen8 move
	learnset 20, WILL_O_WISP ; Smog → TM move
	learnset 25, BITE
	learnset 30, FIRE_FANG
	learnset 35, FIRE_SPIN
	learnset 40, FLAMETHROWER ; Lava Plume → LA move
	learnset 45, SCARY_FACE
	learnset 50, FLARE_BLITZ
	learnset 55, DOUBLE_EDGE ; Last Resort → Eevee move

	evos_attacks Snorlax
	learnset 1, FORESIGHT ; Recycle → pre Gen8 move (Odor Sleuth)
	learnset 1, THIEF ; Covet → similar move
	learnset 1, BULLDOZE ; Stockpile/Swallow → LA move
	learnset 1, SCREECH
	learnset 1, REVERSAL ; Flail → similar move
	learnset 1, DOUBLE_EDGE ; Last Resort → LA move
	learnset 1, LICK
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL
	learnset 1, MEAN_LOOK ; Block → similar move
	learnset 12, HEADBUTT ; Yawn → LGPE move
	learnset 16, BITE
	learnset 20, REST
	learnset 20, SLEEP_TALK
	learnset 24, CRUNCH
	learnset 28, BODY_SLAM
	learnset 32, ROLLOUT ; Heavy Slam → pre Gen8 move
	learnset 36, AMNESIA
	learnset 40, ZEN_HEADBUTT ; High Horsepower → LA move
	learnset 44, HAMMER_ARM
	learnset 48, BELLY_DRUM
	learnset 52, HYPER_VOICE ; Belch → SV TM move
	learnset 56, GIGA_IMPACT

	evos_attacks Dratini
	evo_data EVOLVE_LEVEL, 30, DRAGONAIR
	learnset 1, WRAP
	learnset 1, LEER
	learnset 5, AQUA_JET ; Twister → egg move
	learnset 10, THUNDER_WAVE
	learnset 15, DRAGON_RAGE ; Dragon Tail → pre Gen8 move
	learnset 20, AGILITY
	learnset 25, DRAGONBREATH ; Slam → egg move
	learnset 31, AQUA_TAIL
	learnset 35, DRAGON_RUSH
	learnset 40, SAFEGUARD
	learnset 45, RAIN_DANCE
	learnset 50, DRAGON_DANCE
	learnset 55, OUTRAGE
	learnset 60, HYPER_BEAM

	evos_attacks Dragonair
	evo_data EVOLVE_LEVEL, 55, DRAGONITE
	learnset 1, WRAP
	learnset 1, LEER
	learnset 1, AQUA_JET ; Twister → egg move
	learnset 1, THUNDER_WAVE
	learnset 15, DRAGON_RAGE ; Dragon Tail → pre Gen8 move
	learnset 20, AGILITY
	learnset 25, DRAGONBREATH ; Slam → egg move
	learnset 33, AQUA_TAIL
	learnset 39, DRAGON_RUSH
	learnset 46, SAFEGUARD
	learnset 53, RAIN_DANCE
	learnset 60, DRAGON_DANCE
	learnset 67, OUTRAGE
	learnset 74, HYPER_BEAM

	evos_attacks Dragonite
	learnset 1, EXTREMESPEED
	learnset 1, ROOST
	learnset 1, FIRE_PUNCH
	learnset 1, THUNDERPUNCH
	learnset 1, WRAP
	learnset 1, WING_ATTACK
	learnset 1, LEER
	learnset 1, AQUA_JET ; Twister → egg move
	learnset 1, THUNDER_WAVE
	learnset 15, DRAGON_RAGE ; Dragon Tail → pre Gen8 move
	learnset 20, AGILITY
	learnset 25, DRAGONBREATH ; Slam → egg move
	learnset 33, AQUA_TAIL
	learnset 39, DRAGON_RUSH
	learnset 46, SAFEGUARD
	learnset 53, RAIN_DANCE
	learnset 54, HURRICANE ; evolution move
	learnset 62, DRAGON_DANCE
	learnset 71, OUTRAGE
	learnset 80, HYPER_BEAM
	
	end_evos_attacks
