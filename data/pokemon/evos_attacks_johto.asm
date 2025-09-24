SECTION "Evolutions and Attacks Johto", ROMX

EvosAttacksPointersJohto::
	dw CrobatEvosAttacks
	dw ChinchouEvosAttacks
	dw LanturnEvosAttacks
	dw PichuEvosAttacks
	dw CleffaEvosAttacks
	dw IgglybuffEvosAttacks
	dw TogepiEvosAttacks
	dw TogeticEvosAttacks
	dw MareepEvosAttacks
	dw FlaaffyEvosAttacks
	dw AmpharosEvosAttacks
	dw MarillEvosAttacks
	dw AzumarillEvosAttacks
	dw SudowoodoEvosAttacks
	dw PolitoedEvosAttacks
	dw SunkernEvosAttacks
	dw SunfloraEvosAttacks
	dw YanmaEvosAttacks
	dw EspeonEvosAttacks
	dw UmbreonEvosAttacks
	dw MurkrowEvosAttacks
	dw SlowkingPlainEvosAttacks
	dw MisdreavusEvosAttacks
	dw DunsparceEvosAttacks
	dw GligarEvosAttacks
	dw SteelixEvosAttacks
	dw SnubbullEvosAttacks
	dw GranbullEvosAttacks
	dw ScizorEvosAttacks
	dw ShuckleEvosAttacks
	dw HeracrossEvosAttacks
	dw SneaselPlainEvosAttacks
	dw SwinubEvosAttacks
	dw PiloswineEvosAttacks
	dw CorsolaPlainEvosAttacks
	dw RemoraidEvosAttacks
	dw OctilleryEvosAttacks
	dw DelibirdEvosAttacks
	dw MantineEvosAttacks
	dw SkarmoryEvosAttacks
	dw HoundourEvosAttacks
	dw HoundoomEvosAttacks
	dw KingdraEvosAttacks
	dw ElekidEvosAttacks
	dw MagbyEvosAttacks
	dw LarvitarEvosAttacks
	dw PupitarEvosAttacks
	dw TyranitarEvosAttacks
.IndirectEnd::

	evos_attacks Crobat
	learnset 1, X_SCISSOR ; evolution move
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
	learnset 51, CRUNCH ; Quick Guard → new move

	evos_attacks Chinchou
	evo_data EVOLVE_LEVEL, 27, LANTURN
	learnset 1, WATER_GUN ; Bubble → Water Gun
	learnset 1, SUPERSONIC
	learnset 6, THUNDER_WAVE
	learnset 9, THUNDERSHOCK ; Electro Ball → new move
	learnset 12, BUBBLE_BEAM ; Water Gun → Bubble Beam
	learnset 17, CONFUSE_RAY
	learnset 20, WATER_PULSE ; Bubble Beam → TM move
	learnset 23, SPARK
	learnset 28, PSYBEAM ; Signal Beam → egg move
	learnset 31, REVERSAL ; Flail → similar move
	learnset 34, THUNDERBOLT ; Discharge → TM move
	learnset 39, TAKE_DOWN
	learnset 42, RECOVER ; Aqua Ring → similar move
	learnset 45, ICE_BEAM ; Hydro Pump → TM move
	learnset 47, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	learnset 50, LIGHT_SCREEN ; Charge → event move

	evos_attacks Lanturn
	learnset 1, WATER_GUN ; Bubble → Water Gun
	learnset 1, SUPERSONIC
	learnset 6, THUNDER_WAVE
	learnset 9, THUNDERSHOCK ; Electro Ball → new move
	learnset 12, BUBBLE_BEAM ; Water Gun → Bubble Beam
	learnset 17, CONFUSE_RAY
	learnset 20, WATER_PULSE ; Bubble Beam → TM move
	learnset 23, SPARK
	learnset 29, PSYBEAM ; Signal Beam → egg move
	learnset 33, REVERSAL ; Flail → similar move
	learnset 37, THUNDERBOLT ; Discharge → TM move
	learnset 43, TAKE_DOWN
	learnset 47, RECOVER ; Aqua Ring → similar move
	learnset 51, ICE_BEAM ; Hydro Pump → TM move
	learnset 54, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	learnset 58, LIGHT_SCREEN ; Charge → event move

	evos_attacks Pichu
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	learnset 1, THUNDERSHOCK
	learnset 1, CHARM
	learnset 5, LEER ; Tail Whip → similar move
	learnset 10, SWEET_KISS
	learnset 13, NASTY_PLOT
	learnset 18, THUNDER_WAVE
	learnset 23, SCARY_FACE ; event move
	learnset 28, SING ; event move
	learnset 38, PETAL_DANCE ; event move

	evos_attacks Cleffa
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	learnset 1, TACKLE ; Pound → similar move
	learnset 4, SING
	learnset 8, SWEET_KISS
	learnset 12, DISARM_VOICE
	learnset 16, ENCORE
	learnset 20, CHARM

	evos_attacks Igglybuff
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	learnset 1, SING
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, DEFENSE_CURL ; Copycat → Defense Curl
	learnset 4, ROLLOUT ; Defense Curl → tutor move
	learnset 8, SWEET_KISS
	learnset 12, DISARM_VOICE
	learnset 16, DISABLE
	learnset 20, CHARM

	evos_attacks Togepi
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	learnset 1, GROWL
	learnset 1, CHARM
	learnset 9, SWEET_KISS
	learnset 13, SING ; Yawn → similar move
	learnset 17, ENCORE
	learnset 21, DIZZY_PUNCH ; Follow Me → new move
	learnset 25, HEAL_BELL ; Bestow → HGSS tutor move
	learnset 33, ANCIENTPOWER
	learnset 37, SAFEGUARD
	learnset 41, BATON_PASS
	learnset 45, DOUBLE_EDGE
	learnset 49, EXTRASENSORY ; Last Resort → egg move
	learnset 53, PLAY_ROUGH ; After You → Sw/Sh move

	evos_attacks Togetic
	evo_data EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	learnset 1, GROWL
	learnset 1, CHARM
	learnset 1, DISARM_VOICE ; evolution move
	learnset 9, SWEET_KISS
	learnset 13, SING ; Yawn → similar move
	learnset 17, ENCORE
	learnset 21, DIZZY_PUNCH ; Follow Me → new move
	learnset 25, HEAL_BELL ; Bestow → HGSS tutor move
	learnset 33, ANCIENTPOWER
	learnset 37, SAFEGUARD
	learnset 41, BATON_PASS
	learnset 45, DOUBLE_EDGE
	learnset 49, EXTRASENSORY ; Last Resort → egg move
	learnset 53, PLAY_ROUGH ; After You → Sw/Sh move

	evos_attacks Mareep
	evo_data EVOLVE_LEVEL, 15, FLAAFFY
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 4, THUNDER_WAVE
	learnset 8, THUNDERSHOCK
	learnset 11, MUD_SLAP ; Cotton Spore → GSC TM move
	learnset 15, SPARK ; Charge → new move
	learnset 18, HEAL_BELL ; Take Down → HGSS tutor move
	learnset 22, TAKE_DOWN ; Electro Ball → Take Down
	learnset 25, CONFUSE_RAY
	learnset 29, POWER_GEM
	learnset 32, THUNDERBOLT ; Discharge → TM move
	learnset 36, SAFEGUARD ; Cotton Guard → egg move
	learnset 39, DAZZLINGLEAM ; Signal Beam → new move
	learnset 43, LIGHT_SCREEN
	learnset 46, THUNDER

	evos_attacks Flaaffy
if DEF(FAITHFUL)
	evo_data EVOLVE_LEVEL, 30, AMPHAROS
else
	evo_data EVOLVE_LEVEL, 36, AMPHAROS
endc
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 4, THUNDER_WAVE
	learnset 8, THUNDERSHOCK
	learnset 11, MUD_SLAP ; Cotton Spore → GSC TM move
	learnset 16, SPARK ; Charge → new move
	learnset 20, HEAL_BELL ; Take Down → HGSS tutor move
	learnset 25, TAKE_DOWN ; Electro Ball → Take Down
	learnset 29, CONFUSE_RAY
	learnset 34, POWER_GEM
	learnset 38, THUNDERBOLT ; Discharge → TM move
	learnset 43, SAFEGUARD ; Cotton Guard → egg move
	learnset 47, DAZZLINGLEAM ; Signal Beam → new move
	learnset 52, LIGHT_SCREEN
	learnset 56, THUNDER

	evos_attacks Ampharos
	learnset 1, THUNDERPUNCH ; evolution move
	learnset 1, FIRE_PUNCH
	learnset 1, DRAGON_PULSE
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 4, THUNDER_WAVE
	learnset 8, THUNDERSHOCK
	learnset 11, MUD_SLAP ; Cotton Spore → GSC TM move
	learnset 16, SPARK ; Charge → new move
	learnset 20, HEAL_BELL ; Take Down → HGSS tutor move
	learnset 25, TAKE_DOWN ; Electro Ball → Take Down
	learnset 29, CONFUSE_RAY
	learnset 35, POWER_GEM
	learnset 40, THUNDERBOLT ; Discharge → TM move
	learnset 46, SAFEGUARD ; Cotton Guard → egg move
	learnset 51, DAZZLINGLEAM ; Signal Beam → new move
	learnset 57, LIGHT_SCREEN
	learnset 62, THUNDER
	learnset 65, DRAGON_PULSE
	learnset 71, OUTRAGE ; HGSS tutor move

	evos_attacks Marill
	evo_data EVOLVE_LEVEL, 18, AZUMARILL
	learnset 1, TACKLE
	learnset 2, GROWL ; Tail Whip → new move
	learnset 5, FORESIGHT ; Water Sport → egg move
	learnset 7, AQUA_JET ; Bubble → egg move
	learnset 10, DEFENSE_CURL
	learnset 10, ROLLOUT
	learnset 13, BUBBLE_BEAM
	learnset 16, DIZZY_PUNCH ; Helping Hand → event move
	learnset 20, AQUA_TAIL
	learnset 23, PLAY_ROUGH
	learnset 28, SCARY_FACE ; Aqua Ring → event move
	learnset 31, RAIN_DANCE
	learnset 37, DOUBLE_EDGE
	learnset 40, CLOSE_COMBAT ; Superpower → similar move
	learnset 47, HYDRO_PUMP

	evos_attacks Azumarill
	learnset 1, TACKLE
	learnset 2, GROWL ; Tail Whip → new move
	learnset 5, FORESIGHT ; Water Sport → egg move
	learnset 7, AQUA_JET ; Bubble → egg move
	learnset 10, DEFENSE_CURL
	learnset 10, ROLLOUT
	learnset 13, BUBBLE_BEAM
	learnset 16, DIZZY_PUNCH ; Helping Hand → event move
	learnset 21, AQUA_TAIL
	learnset 25, PLAY_ROUGH
	learnset 31, SCARY_FACE ; Aqua Ring → event move
	learnset 35, RAIN_DANCE
	learnset 42, DOUBLE_EDGE
	learnset 46, CLOSE_COMBAT ; Superpower → similar move
	learnset 55, HYDRO_PUMP

	evos_attacks Sudowoodo
	learnset 1, SUBSTITUTE ; Copycat → event move
	learnset 5, REVERSAL ; Flail → similar move
	learnset 8, LOW_KICK
	learnset 12, LEER ; Rock Throw → new move
	learnset 15, ROCK_THROW ; Mimic → Rock Throw
	learnset 19, FEINT_ATTACK
	learnset 22, ANCIENTPOWER ; Rock Tomb → new move
	learnset 26, SPIKES ; Block → SV TM move
	learnset 29, ROCK_SLIDE
	learnset 33, COUNTER
	learnset 36, SUCKER_PUNCH
	learnset 40, DOUBLE_EDGE
	learnset 43, STONE_EDGE ; evolution move
	learnset 47, CLOSE_COMBAT ; Hammer Arm → similar move
	learnset 50, IRON_HEAD ; Head Smash → tutor move

	evos_attacks Politoed
	learnset 1, GIGA_DRAIN ; Bounce → TM move ; evolution move
	learnset 1, BUBBLE_BEAM
	learnset 1, HYPNOSIS
	learnset 1, PERISH_SONG
	learnset 27, SWAGGER
	learnset 48, HYPER_VOICE

	evos_attacks Sunkern
	evo_data EVOLVE_ITEM, SUN_STONE, SUNFLORA
	learnset 1, ABSORB
	learnset 4, GROWTH ; Ingrain → Growth
	learnset 7, DEFENSE_CURL ; Grass Whistle → TM move
	learnset 10, MEGA_DRAIN
	learnset 13, LEECH_SEED
	learnset 16, RAZOR_LEAF
	learnset 19, PROTECT ; Worry Seed → TM move
	learnset 22, GIGA_DRAIN
	learnset 25, AGILITY ; Endeavor → new move
	learnset 28, HEALINGLIGHT ; Synthesis → similar move
	learnset 31, EARTH_POWER ; Natural Gift → tutor move
	learnset 34, SOLAR_BEAM
	learnset 37, DOUBLE_EDGE
	learnset 40, SUNNY_DAY
	learnset 43, SEED_BOMB

	evos_attacks Sunflora
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, ABSORB
if !DEF(FAITHFUL)
	learnset 1, EMBER ; evolution move
endc
	learnset 4, GROWTH ; Ingrain → Growth
	learnset 7, DEFENSE_CURL ; Grass Whistle → TM move
	learnset 10, MEGA_DRAIN
	learnset 13, LEECH_SEED
	learnset 16, RAZOR_LEAF
	learnset 19, PROTECT ; Worry Seed → TM move
	learnset 22, GIGA_DRAIN
	learnset 25, AGILITY ; Bullet Seed → TM move
	learnset 28, PETAL_DANCE
if DEF(FAITHFUL)
	learnset 31, EARTH_POWER ; Natural Gift → tutor move
else
	learnset 31, FLAMETHROWER ; Natural Gift → TM move
endc
	learnset 34, SOLAR_BEAM
	learnset 37, DOUBLE_EDGE
	learnset 40, SUNNY_DAY
	learnset 43, SEED_BOMB ; Leaf Storm → Sunkern move
if !DEF(FAITHFUL)
	learnset 50, FIRE_BLAST ; Petal Blizzard → TM move
endc

	evos_attacks Yanma
	evo_data EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	learnset 1, TACKLE
	learnset 1, FORESIGHT
	learnset 1, BUG_BITE
	learnset 6, QUICK_ATTACK
	learnset 11, DOUBLE_TEAM
	learnset 14, SONIC_BOOM
	learnset 17, PROTECT ; Detect → similar move
	learnset 22, DRAGON_RAGE ; Supersonic → new move
	learnset 27, SUPERSONIC ; Uproar → Supersonic
	learnset 30, PURSUIT
if DEF(FAITHFUL)
	learnset 33, ANCIENTPOWER
else
	learnset 35, ANCIENTPOWER
endc
	learnset 38, HYPNOSIS
	learnset 43, WING_ATTACK
	learnset 46, SCREECH
	learnset 49, U_TURN
	learnset 54, AIR_SLASH
	learnset 57, BUG_BUZZ
	learnset 62, DREAM_EATER ; event move

	evos_attacks Espeon
	learnset 1, GROWL
	learnset 1, TACKLE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, CONFUSION ; evolution move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	learnset 13, QUICK_ATTACK
	learnset 17, SWIFT
	learnset 20, PSYBEAM
	learnset 25, FUTURE_SIGHT
	learnset 29, REFLECT ; Psych Up → event move
	learnset 33, HEALINGLIGHT ; Morning Sun → similar move
	learnset 37, PSYCHIC_M
	learnset 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnset 45, POWER_GEM ; Power Swap → SV TM move

	evos_attacks Umbreon
	learnset 1, GROWL
	learnset 1, TACKLE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, PURSUIT ; evolution move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	learnset 13, QUICK_ATTACK
	learnset 17, CONFUSE_RAY
	learnset 20, FEINT_ATTACK
	learnset 25, TOXIC ; Assurance → TM move
	learnset 29, SCREECH
	learnset 33, HEALINGLIGHT ; Moonlight → similar move
	learnset 37, SUCKER_PUNCH ; Mean Look → tutor move
	learnset 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnset 45, MEAN_LOOK ; Guard Swap → Mean Look

	evos_attacks Murkrow
	evo_data EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	learnset 1, PECK
	learnset 5, PURSUIT
	learnset 11, HAZE
	learnset 15, WING_ATTACK
	learnset 21, NIGHT_SHADE
	learnset 25, THIEF ; Assurance → TM move
	learnset 31, SWAGGER ; Taunt → TM move
	learnset 35, FEINT_ATTACK
	learnset 41, MEAN_LOOK
	learnset 45, BATON_PASS ; Foul Play → XD move
	learnset 50, DRILL_PECK ; Tailwind → egg move
	learnset 55, SUCKER_PUNCH
	learnset 61, PERISH_SONG ; Torment → egg move
	learnset 65, BRAVE_BIRD ; Quash → egg move

	evos_attacks SlowkingPlain
	learnset 1, POWER_GEM
	learnset 1, HIDDEN_POWER
	learnset 1, CURSE
	learnset 1, TACKLE
	learnset 5, GROWL
	learnset 9, WATER_GUN
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

	evos_attacks Misdreavus
	evo_data EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	learnset 1, GROWL
	learnset 1, DISARM_VOICE ; new move
	learnset 5, CONFUSION ; Spite → new move
	learnset 14, CONFUSE_RAY
	learnset 19, MEAN_LOOK
	learnset 23, HEX
	learnset 28, PSYBEAM
	learnset 32, PAIN_SPLIT
	learnset 37, DESTINY_BOND ; Payback → egg move
	learnset 41, SHADOW_BALL
	learnset 46, PERISH_SONG
	learnset 50, DAZZLINGLEAM ; Grudge → TM move
	learnset 55, POWER_GEM
	learnset 62, NASTY_PLOT ; egg move

	evos_attacks Dunsparce
	evo_data EVOLVE_LEVEL, 32, DUDUNSPARCE, NO_FORM ; preserve pre-evo form
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
	learnset 53, OUTRAGE ; new move

	evos_attacks Gligar
	evo_data EVOLVE_HOLDING, RAZOR_FANG, TR_EVENITE, GLISCOR
	learnset 1, POISON_STING
	learnset 4, MUD_SLAP ; Sand Attack → similar move
	learnset 7, DEFENSE_CURL ; Harden → similar move
	learnset 10, QUICK_ATTACK ; Knock Off → Quick Attack
	learnset 13, WING_ATTACK ; Quick Attack → egg move
	learnset 16, BUG_BITE ; Fury Cutter → similar move
	learnset 19, FEINT_ATTACK
	learnset 22, ACROBATICS
	learnset 27, SLASH
	learnset 30, U_TURN
	learnset 35, SCREECH
	learnset 40, X_SCISSOR
	learnset 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	learnset 50, SWORDS_DANCE
	learnset 55, NIGHT_SLASH ; Guillotine → egg move

	evos_attacks Gliscor
	learnset 1, POISON_JAB
	learnset 4, MUD_SLAP ; Sand Attack → similar move
	learnset 7, DEFENSE_CURL ; Harden → similar move
	learnset 10, QUICK_ATTACK ; Knock Off → Quick Attack
	learnset 13, WING_ATTACK ; Quick Attack → egg move
	learnset 16, BUG_BITE ; Fury Cutter → similar move
	learnset 19, FEINT_ATTACK
	learnset 22, ACROBATICS
	learnset 27, SLASH ; Night Slash → Gligar move
	learnset 30, U_TURN
	learnset 35, SCREECH
	learnset 40, X_SCISSOR
	learnset 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	learnset 50, SWORDS_DANCE
	learnset 55, NIGHT_SLASH ; Guillotine → Night Slash

	evos_attacks Steelix
	learnset 1, IRON_TAIL ; evolution move
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 1, WRAP ; Bind → similar move
	learnset 4, CURSE
	learnset 7, ROCK_THROW
	learnset 13, ROCK_BLAST ; Rock Tomb → egg move
	learnset 16, BODY_SLAM ; Stealth Rock → TM move
	learnset 19, SANDSTORM ; Autotomize → Sandstorm
	learnset 22, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnset 25, DRAGONBREATH
	learnset 28, HEADBUTT ; Slam → tutor move
	learnset 31, SCREECH
	learnset 34, ROCK_SLIDE
	learnset 37, CRUNCH
	learnset 40, IRON_HEAD
	learnset 43, DIG
	learnset 46, STONE_EDGE
	learnset 49, DOUBLE_EDGE
	learnset 52, EARTHQUAKE ; Sandstorm → TM move

	evos_attacks Snubbull
	evo_data EVOLVE_LEVEL, 23, GRANBULL
	learnset 1, TACKLE
	learnset 1, SCARY_FACE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, CHARM
	learnset 7, BITE
	learnset 13, LICK
	learnset 19, HEADBUTT
	learnset 25, ROAR
	learnset 37, PLAY_ROUGH
	learnset 43, DOUBLE_EDGE ; Payback → event move
	learnset 49, CRUNCH

	evos_attacks Granbull
	learnset 1, TACKLE
	learnset 1, SCARY_FACE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, CHARM
	learnset 7, BITE
	learnset 13, LICK
	learnset 19, HEADBUTT
	learnset 27, ROAR
	learnset 43, PLAY_ROUGH
	learnset 51, DOUBLE_EDGE ; Payback → event move
	learnset 59, CRUNCH
	learnset 67, OUTRAGE

	evos_attacks Scizor
	learnset 1, METAL_CLAW ; evolution move
	learnset 1, BULLET_PUNCH
	learnset 1, QUICK_ATTACK
	learnset 1, LEER
	learnset 5, FOCUS_ENERGY
	learnset 9, PURSUIT
	learnset 13, FALSE_SWIPE
	learnset 17, AGILITY
	learnset 21, WING_ATTACK
	learnset 25, BUG_BITE ; Fury Cutter → similar move
	learnset 29, SLASH
	learnset 33, BUG_BUZZ ; Razor Wind → egg move
	learnset 37, DEFENSE_CURL ; Iron Defense → similar move
	learnset 41, X_SCISSOR
	learnset 45, CRUNCH ; Night Slash → Prism tutor move
	learnset 49, CLOSE_COMBAT ; Double Hit → SV TM move
	learnset 50, IRON_HEAD
	learnset 57, SWORDS_DANCE

	evos_attacks Shuckle
	learnset 1, MUD_SLAP ; Constrict → GSC TM move
	learnset 1, DEFENSE_CURL ; Withdraw → similar move
	learnset 1, ROLLOUT
	learnset 5, ENCORE
	learnset 9, WRAP
	learnset 12, STRING_SHOT ; Struggle Bug → HGSS tutor move
	learnset 16, SAFEGUARD
	learnset 20, REST
	learnset 23, ROCK_THROW
	learnset 27, ACID ; Gastro Acid → egg move
	learnset 31, DISABLE ; Power Trick → new move
	learnset 34, SHELL_SMASH
	learnset 38, ROCK_BLAST ; Rock Slide → Sw/Sh move
	learnset 42, BUG_BITE
	learnset 45, ROCK_SLIDE ; Power Split + Guard Split → Rock Slide
	learnset 49, REVERSAL ; Stone Edge → Sw/Sh move
	learnset 53, STONE_EDGE ; Sticky Web → Stone Edge

	evos_attacks Heracross
	learnset 1, NIGHT_SLASH
	learnset 1, TACKLE
	learnset 1, LEER
	learnset 1, HORN_ATTACK
	learnset 1, ENDURE
	learnset 7, BUG_BITE ; Feint → HGSS tutor move
	learnset 10, FURY_STRIKES ; Aerial Ace → Fury Strikes
	learnset 16, LOW_KICK ; Chip Away → HGSS tutor move
	learnset 19, COUNTER
	learnset 25, AERIAL_ACE ; Fury Attack → Aerial Ace
	learnset 28, SEISMIC_TOSS ; Brick Break → tutor move
	learnset 31, PIN_MISSILE
	learnset 34, TAKE_DOWN
	learnset 37, MEGAHORN
	learnset 43, CLOSE_COMBAT
	learnset 46, REVERSAL

	evos_attacks SneaselPlain
	evo_data EVOLVE_HOLDING, RAZOR_CLAW, TR_EVENITE, WEAVILE
	learnset 1, LEER
	learnset 1, BITE ; Taunt → egg move
	learnset 8, QUICK_ATTACK
	learnset 10, FEINT_ATTACK
	learnset 14, ICE_SHARD ; Icy Wind → Ice Shard
	learnset 16, FURY_STRIKES ; Fury Swipes → similar move
	learnset 20, AGILITY
	learnset 22, METAL_CLAW
	learnset 25, HONE_CLAWS
	learnset 28, ICICLE_CRASH ; Beat Up → egg move
	learnset 32, SCREECH
	learnset 35, SLASH
	learnset 40, HEALINGLIGHT ; Snatch → event move (Moonlight)
	learnset 44, X_SCISSOR ; Punishment → TM move
	learnset 47, CRUNCH ; Ice Shard → new move

	evos_attacks Swinub
	evo_data EVOLVE_LEVEL, 33, PILOSWINE
	learnset 1, TACKLE
	learnset 1, FORESIGHT ; Odor Sleuth → similar move
	learnset 5, BITE ; Mud Sport → egg move
	learnset 8, ICE_SHARD ; Powder Snow → Ice Shard
	learnset 11, MUD_SLAP
	learnset 14, ENDURE
	learnset 18, MAGNITUDE ; Mud Bomb → new move
	learnset 21, ICY_WIND
	learnset 24, ICICLE_CRASH ; Ice Shard → egg move
	learnset 28, TAKE_DOWN
	learnset 35, BULLDOZE ; Mist → TM move
	learnset 37, REVERSAL ; Earthquake → similar move
	learnset 40, EARTHQUAKE ; Flail → Earthquake
	learnset 44, BLIZZARD
	learnset 48, AMNESIA

	evos_attacks Piloswine
	evo_data EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	learnset 1, ANCIENTPOWER
	learnset 1, FURY_STRIKES ; evolution move (Fury Attack)
	learnset 1, PECK
	learnset 1, FORESIGHT ; Odor Sleuth → similar move
	learnset 5, BITE ; Mud Sport → egg move
	learnset 8, ICE_SHARD ; Powder Snow → Ice Shard
	learnset 11, MUD_SLAP
	learnset 14, ENDURE
	learnset 18, MAGNITUDE ; Mud Bomb → new move
	learnset 21, ICY_WIND
	learnset 24, ICICLE_CRASH ; Ice Fang → egg move
	learnset 28, TAKE_DOWN
	learnset 37, BULLDOZE ; Mist → TM move
	learnset 41, THRASH
	learnset 46, EARTHQUAKE
	learnset 52, BLIZZARD
	learnset 58, AMNESIA

	evos_attacks CorsolaPlain
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 4, WATER_GUN ; Bubble → similar move
	learnset 8, ROLLOUT ; Recover → TM move
	learnset 10, BUBBLE_BEAM
	learnset 13, SAFEGUARD ; Refresh → egg move
	learnset 17, ANCIENTPOWER
	learnset 20, ICICLE_SPEAR ; Spike Cannon → egg move
	learnset 23, CONFUSE_RAY ; Lucky Chant → egg move
	learnset 27, ENDURE ; Brine → Endure
	learnset 29, BARRIER ; Iron Defense → similar move
	learnset 31, ROCK_BLAST
	learnset 35, RECOVER ; Endure → Recover
	learnset 38, HYDRO_PUMP ; Aqua Ring → Sw/Sh move
	learnset 41, POWER_GEM
	learnset 45, MIRROR_COAT
	learnset 47, EARTH_POWER
	learnset 50, REVERSAL ; Flail → similar move

	evos_attacks Remoraid
	evo_data EVOLVE_LEVEL, 25, OCTILLERY
	learnset 1, WRAP ; Sw/Sh move
	learnset 1, WATER_GUN
	learnset 6, FORESIGHT ; Lock-On → new move
	learnset 10, PSYBEAM
	learnset 14, AURORA_BEAM
	learnset 18, BUBBLE_BEAM
	learnset 22, FOCUS_ENERGY
	learnset 26, WATER_PULSE
	learnset 30, FLAMETHROWER ; Signal Beam → TM move
	learnset 34, ICE_BEAM
	learnset 38, SEED_BOMB ; Bullet Seed → tutor move
	learnset 42, GUNK_SHOT ; Hydro Pump → new move
	learnset 46, HYDRO_PUMP ; Hyper Beam → Hydro Pump
	learnset 50, AURA_SPHERE ; Soak → new move
	learnset 54, HYPER_BEAM

	evos_attacks Octillery
	learnset 1, ROCK_BLAST
	learnset 1, POWER_WHIP ; new move
	learnset 1, WATER_GUN
	learnset 6, FORESIGHT ; Constrict → new move
	learnset 10, PSYBEAM
	learnset 14, AURORA_BEAM
	learnset 18, BUBBLE_BEAM
	learnset 22, FOCUS_ENERGY
	learnset 26, WRAP ; Wring Out → new move
	learnset 28, WATER_PULSE
	learnset 34, FLAMETHROWER ; Signal Beam → TM move
	learnset 40, ICE_BEAM
	learnset 46, SEED_BOMB ; Bullet Seed → tutor move
	learnset 52, GUNK_SHOT ; Hydro Pump → new move
	learnset 58, HYDRO_PUMP ; Hyper Beam → Hydro Pump
if !DEF(FAITHFUL)
	learnset 58, FIRE_BLAST ; new move
endc
	learnset 64, AURA_SPHERE ; Soak → new move
	learnset 70, HYPER_BEAM

	evos_attacks Delibird
; based on Gen V Chatot
	learnset 1, PECK
	learnset 5, GROWL
	learnset 13, SING
	learnset 17, ICY_WIND
	learnset 21, WING_ATTACK
	learnset 25, HAIL
	learnset 29, DRILL_PECK
	learnset 33, AURORA_BEAM
	learnset 37, BODY_SLAM
	learnset 41, ROOST
	learnset 45, FLY
	learnset 49, BELLY_DRUM
	learnset 53, HURRICANE
	learnset 57, BLIZZARD

	evos_attacks Mantine
	learnset 1, GUST ; event move
	learnset 1, TACKLE
	learnset 1, WATER_GUN ; Bubble → similar move
	learnset 3, SUPERSONIC
	learnset 7, BUBBLE_BEAM
	learnset 11, CONFUSE_RAY
	learnset 14, WING_ATTACK
	learnset 16, HEADBUTT
	learnset 19, WATER_PULSE
	learnset 23, AQUA_JET ; Wide Guard → new move
	learnset 27, TAKE_DOWN
	learnset 32, AGILITY
	learnset 36, AIR_SLASH
	learnset 39, ROOST ; Aqua Ring → similar move
	learnset 46, MIRROR_COAT ; Bounce → Dream World move
	learnset 49, HYDRO_PUMP

	evos_attacks Skarmory
	learnset 1, LEER
	learnset 1, PECK
	learnset 6, MUD_SLAP ; Sand Attack → similar move
	learnset 9, BITE ; Metal Claw → new move
	learnset 12, METAL_CLAW ; Air Cutter → Metal Claw
	learnset 17, FURY_STRIKES ; Fury Attack → similar move
	learnset 20, PURSUIT ; Feint → egg move
	learnset 23, SWIFT
	learnset 28, SPIKES
	learnset 31, AGILITY
	learnset 34, STEEL_WING
	learnset 39, SLASH
	learnset 42, SCREECH ; Metal Sound → similar move
	learnset 45, AIR_SLASH
	learnset 50, DRILL_PECK ; Autotomize → egg move
	learnset 53, NIGHT_SLASH

	evos_attacks Houndour
	evo_data EVOLVE_LEVEL, 24, HOUNDOOM
	learnset 1, LEER
	learnset 1, EMBER
	learnset 4, PURSUIT ; Howl → egg move
	learnset 13, ROAR
	learnset 16, BITE
	learnset 20, FORESIGHT ; Odor Sleuth → similar move
	learnset 25, SUPER_FANG ; Beat Up → HGSS tutor move
	learnset 28, FIRE_SPIN ; Fire Fang → egg move
	learnset 32, FEINT_ATTACK
	learnset 37, DESTINY_BOND ; Embargo → egg move
	learnset 40, WILL_O_WISP ; Foul Play → egg move
	learnset 44, FLAMETHROWER
	learnset 49, CRUNCH
	learnset 52, NASTY_PLOT
	learnset 56, DARK_PULSE ; Inferno → TM move

	evos_attacks Houndoom
	learnset 1, LEER
	learnset 1, EMBER
	learnset 4, PURSUIT ; Howl → egg move
	learnset 13, ROAR
	learnset 16, BITE
	learnset 20, FORESIGHT ; Odor Sleuth → similar move
	learnset 26, SUPER_FANG ; Beat Up → HGSS tutor move
	learnset 30, FIRE_SPIN ; Fire Fang → egg move
	learnset 35, FEINT_ATTACK
	learnset 41, DESTINY_BOND ; Embargo → egg move
	learnset 45, WILL_O_WISP ; Foul Play → egg move
	learnset 50, FLAMETHROWER
	learnset 56, CRUNCH
	learnset 60, NASTY_PLOT
	learnset 65, DARK_PULSE ; Inferno → TM move

	evos_attacks Kingdra
	learnset 1, DRAGONBREATH ; evolution move
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

	evos_attacks Elekid
	evo_data EVOLVE_LEVEL, 30, ELECTABUZZ
	learnset 1, QUICK_ATTACK
	learnset 1, LEER
	learnset 5, THUNDERSHOCK
	learnset 8, LOW_KICK
	learnset 12, SWIFT
	learnset 15, BULK_UP ; Shock Wave → TM move
	learnset 19, THUNDER_WAVE
	learnset 26, LIGHT_SCREEN
	learnset 29, THUNDERPUNCH
	learnset 33, SCREECH ; Discharge → Screech
	learnset 40, THUNDERBOLT
	learnset 43, THUNDER

	evos_attacks Magby
	evo_data EVOLVE_LEVEL, 30, MAGMAR
	learnset 1, HAZE ; Smog → new move
	learnset 1, LEER
	learnset 5, EMBER
	learnset 12, FEINT_ATTACK
	learnset 15, FIRE_SPIN
	learnset 19, LOW_KICK ; Clear Smog → HGSS tutor move
	learnset 22, FLAME_CHARGE ; Flame Burst → TM move
	learnset 26, CONFUSE_RAY
	learnset 29, FIRE_PUNCH
	learnset 33, SUNNY_DAY ; Lava Plume → Sunny Day
	learnset 36, FOCUS_BLAST ; Sunny Day → TM move
	learnset 40, FLAMETHROWER
	learnset 43, FIRE_BLAST

	evos_attacks Larvitar
	evo_data EVOLVE_LEVEL, 30, PUPITAR
	learnset 1, TACKLE ; Sw/Sh move
	learnset 1, BITE
	learnset 1, LEER
	learnset 5, SANDSTORM
	learnset 10, SCREECH
	learnset 19, ROCK_SLIDE
	learnset 23, SCARY_FACE
	learnset 28, THRASH
	learnset 32, DARK_PULSE
	learnset 37, ANCIENTPOWER ; Payback → HGSS tutor move
	learnset 41, CRUNCH
	learnset 46, EARTHQUAKE
	learnset 50, STONE_EDGE
	learnset 55, OUTRAGE ; Hyper Beam → HGSS tutor move
	learnset 61, HYPER_BEAM
	learnset 68, CLOSE_COMBAT ; new move

	evos_attacks Pupitar
	evo_data EVOLVE_LEVEL, 55, TYRANITAR
	learnset 1, DEFENSE_CURL ; evolution move
	learnset 1, TACKLE ; Sw/Sh move
	learnset 1, BITE
	learnset 1, LEER
	learnset 5, SANDSTORM
	learnset 10, SCREECH
	learnset 19, ROCK_SLIDE
	learnset 23, SCARY_FACE
	learnset 28, THRASH
	learnset 34, DARK_PULSE
	learnset 41, ANCIENTPOWER ; Payback → HGSS tutor move
	learnset 47, CRUNCH
	learnset 54, EARTHQUAKE
	learnset 60, STONE_EDGE
	learnset 67, OUTRAGE ; Hyper Beam → HGSS tutor move
	learnset 75, HYPER_BEAM
	learnset 84, CLOSE_COMBAT ; new move

	evos_attacks Tyranitar
	learnset 1, STOMP ; evolution move
	learnset 1, LOW_KICK ; HGSS tutor move
	learnset 1, DRAGONBREATH ; GSC TM move
	learnset 1, TACKLE ; Sw/Sh move
	learnset 1, BITE
	learnset 1, LEER
	learnset 5, SANDSTORM
	learnset 10, SCREECH
	learnset 19, ROCK_SLIDE
	learnset 23, SCARY_FACE
	learnset 28, THRASH
	learnset 34, DARK_PULSE
	learnset 41, ANCIENTPOWER ; Payback → HGSS tutor move
	learnset 47, CRUNCH
	learnset 54, EARTHQUAKE
	learnset 63, STONE_EDGE
	learnset 73, OUTRAGE ; Hyper Beam → HGSS tutor move
	learnset 82, HYPER_BEAM
	learnset 92, CLOSE_COMBAT ; new move

	end_evos_attacks
