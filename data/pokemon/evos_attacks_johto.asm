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
	learnset 1, POISON_JAB ; Cross Poison → TM move
	learnset 1, TOXIC
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

	evos_attacks Chinchou
	evo_data EVOLVE_LEVEL, 27, LANTURN
	learnset 1, WATER_GUN
	learnset 1, SUPERSONIC
	learnset 4, THUNDERSHOCK ; Electro Ball → new move
	learnset 8, THUNDER_WAVE
	learnset 12, BUBBLE_BEAM
	learnset 16, CONFUSE_RAY
	learnset 20, SPARK
	learnset 24, VOLT_SWITCH ; Charge → TM move
	learnset 28, SIGNAL_BEAM ; Discharge → pre Gen8 move
	learnset 32, THUNDERBOLT ; Aqua Ring → TM move
	learnset 36, REVERSAL ; Flail → similar move
	learnset 40, TAKE_DOWN
	learnset 44, HYDRO_PUMP

	evos_attacks Lanturn
	learnset 1, ZAP_CANNON ; Eerie Impulse → GSC TM move
	learnset 1, WATER_GUN
	learnset 1, SUPERSONIC
	learnset 1, THUNDERSHOCK ; Electro Ball → new move
	learnset 1, THUNDER_WAVE
	learnset 12, BUBBLE_BEAM
	learnset 16, CONFUSE_RAY
	learnset 20, SPARK
	learnset 24, VOLT_SWITCH ; Charge → TM move
	learnset 26, PSYBEAM ; evolution move (Stockpile/Swallow/Spit Up → egg move)
	learnset 30, SIGNAL_BEAM ; Discharge → pre Gen8 move
	learnset 36, THUNDERBOLT ; Aqua Ring → TM move
	learnset 42, REVERSAL ; Flail → similar move
	learnset 48, TAKE_DOWN
	learnset 54, HYDRO_PUMP

	evos_attacks Pichu
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	learnset 1, THUNDERSHOCK
	learnset 1, LEER ; Tail Whip → similar move
	learnset 4, GROWL ; Play Nice → similar move
	learnset 8, SWEET_KISS
	learnset 12, THUNDER_WAVE ; Nuzzle → pre Gen8 move
	learnset 16, NASTY_PLOT
	learnset 20, CHARM

	evos_attacks Cleffa
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, ENCORE ; Copycat → moved Encore from Lv16
	learnset 4, SING
	learnset 8, SWEET_KISS
	learnset 12, DISARM_VOICE
	learnset 16, SWIFT ; Encore → LA tutor move
	learnset 20, CHARM

	evos_attacks Igglybuff
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	learnset 1, SING
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, DEFENSE_CURL ; Copycat → moved Defense Curl from Lv4
	learnset 4, DISABLE ; Defense Curl → moved Disable from Lv16
	learnset 8, SWEET_KISS
	learnset 12, DISARM_VOICE
	learnset 16, SWIFT ; Disable → SV TM move
	learnset 20, CHARM

	evos_attacks Togepi
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	learnset 1, GROWL
	learnset 1, TACKLE ; Pound → similar move
	learnset 4, SWEET_KISS
	learnset 8, PECK ; Life Dew → egg move
	learnset 12, CHARM
	learnset 16, ANCIENTPOWER
	learnset 20, DRAINING_KISS ; Yawn → LA move
	learnset 24, ENCORE ; Metronome → pre Gen8 move
	learnset 28, EXTRASENSORY ; After You → LA move
	learnset 32, DOUBLE_EDGE
	learnset 36, SAFEGUARD
	learnset 40, HEALINGLIGHT ; Follow Me → egg move (Morning Sun)
	learnset 44, BATON_PASS
	learnset 48, CALM_MIND ; Last Resort → LA move
	learnset 52, MOONBLAST ; Wish → LA move

	evos_attacks Togetic
	evo_data EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	learnset 1, AERIAL_ACE ; evolution move (Fairy Wind → TM move)
	learnset 1, GROWL
	learnset 1, TACKLE ; Pound → similar move
	learnset 1, SWEET_KISS
	learnset 1, PECK ; Life Dew → egg move
	learnset 12, CHARM
	learnset 16, ANCIENTPOWER
	learnset 20, DRAINING_KISS ; Yawn → LA move
	learnset 24, ENCORE ; Metronome → pre Gen8 move
	learnset 28, EXTRASENSORY ; After You → LA move
	learnset 32, DOUBLE_EDGE
	learnset 36, SAFEGUARD
	learnset 40, HEALINGLIGHT ; Follow Me → egg move (Morning Sun)
	learnset 44, BATON_PASS
	learnset 48, CALM_MIND ; Last Resort → LA move
	learnset 52, MOONBLAST ; Wish → LA move

	evos_attacks Mareep
	evo_data EVOLVE_LEVEL, 15, FLAAFFY
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 4, THUNDER_WAVE
	learnset 8, THUNDERSHOCK
	learnset 11, CURSE ; Cotton Spore → GSC TM move
	learnset 15, SHOCK_WAVE ; Charge → BDSP TM move
	learnset 18, TAKE_DOWN
	learnset 22, VOLT_SWITCH ; Electro Ball → TM Down
	learnset 25, CONFUSE_RAY
	learnset 29, POWER_GEM
	learnset 32, THUNDERBOLT ; Discharge → TM move
	learnset 36, SIGNAL_BEAM ; Cotton Guard → pre Gen8 move
	learnset 39, DAZZLINGLEAM 
	learnset 43, LIGHT_SCREEN
	learnset 46, THUNDER

	evos_attacks Flaaffy
	evo_data EVOLVE_LEVEL, 30, AMPHAROS
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 6, THUNDER_WAVE
	learnset 9, THUNDERSHOCK
	learnset 11, CURSE ; Cotton Spore → GSC TM move
	learnset 16, SHOCK_WAVE ; Charge → BDSP TM move
	learnset 20, TAKE_DOWN
	learnset 25, VOLT_SWITCH ; Electro Ball → TM Down
	learnset 29, CONFUSE_RAY
	learnset 34, POWER_GEM
	learnset 38, THUNDERBOLT ; Discharge → TM move
	learnset 43, SIGNAL_BEAM ; Cotton Guard → pre Gen8 move
	learnset 47, DAZZLINGLEAM 
	learnset 52, LIGHT_SCREEN
	learnset 56, THUNDER

	evos_attacks Ampharos
	learnset 1, ZAP_CANNON
	learnset 1, DRAGON_PULSE
	learnset 1, FIRE_PUNCH
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 1, THUNDER_WAVE
	learnset 1, THUNDERSHOCK
	learnset 11, CURSE ; Cotton Spore → GSC TM move
	learnset 16, SHOCK_WAVE ; Charge → BDSP TM move
	learnset 20, TAKE_DOWN
	learnset 25, VOLT_SWITCH ; Electro Ball → TM Down
	learnset 29, CONFUSE_RAY
	learnset 29, THUNDERPUNCH ; evolution move
	learnset 35, POWER_GEM
	learnset 40, THUNDERBOLT ; Discharge → TM move
	learnset 46, SIGNAL_BEAM ; Cotton Guard → pre Gen8 move
	learnset 51, DAZZLINGLEAM 
	learnset 57, LIGHT_SCREEN
	learnset 62, THUNDER
	learnset 65, DRAGON_PULSE ; added pre Gen8 move

	evos_attacks Marill
	evo_data EVOLVE_LEVEL, 18, AZUMARILL
	learnset 1, ROLLOUT
	learnset 1, DEFENSE_CURL
	learnset 1, SING ; added Azurill move
	learnset 1, TACKLE
	learnset 1, WATER_GUN
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, ENCORE ; Helping Hand → egg move
	learnset 6, BUBBLE_BEAM
	learnset 9, CHARM
	learnset 12, DRAINING_KISS ; Slam → SV TM move
	learnset 15, BODY_SLAM ; Bounce → egg move
	learnset 19, AQUA_TAIL
	learnset 21, PLAY_ROUGH
	learnset 24, AQUA_JET ; Aqua Ring → egg move
	learnset 27, RAIN_DANCE
	learnset 30, HYDRO_PUMP
	learnset 33, DOUBLE_EDGE
	learnset 36, CLOSE_COMBAT ; Superpower → similar move

	evos_attacks Azumarill
	learnset 1, ROLLOUT
	learnset 1, DEFENSE_CURL
	learnset 1, SING ; added Azurill move
	learnset 1, TACKLE
	learnset 1, WATER_GUN
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, ENCORE ; Helping Hand → egg move
	learnset 6, BUBBLE_BEAM
	learnset 9, CHARM
	learnset 12, DRAINING_KISS ; Slam → SV TM move
	learnset 15, BODY_SLAM ; Bounce → egg move
	learnset 21, AQUA_TAIL
	learnset 25, PLAY_ROUGH
	learnset 30, AQUA_JET ; Aqua Ring → egg move
	learnset 35, RAIN_DANCE
	learnset 40, HYDRO_PUMP
	learnset 45, DOUBLE_EDGE
	learnset 50, CLOSE_COMBAT ; Superpower → similar move

	evos_attacks Sudowoodo
	learnset 1, BODY_SLAM ; evolution move (Slam → similar move)
	learnset 1, STONE_EDGE
	learnset 1, HAMMER_ARM
	learnset 1, TACKLE ; Fake Tears → LA move
	learnset 1, ENDURE ; Copycat → egg move
	learnset 1, REVERSAL ; Flail → similar move
	learnset 1, ROCK_THROW
	learnset 12, FEINT_ATTACK ; Block → pre Gen8 move
	learnset 16, SUBSTITUTE ; Mimic → TM move
	learnset 20, ROCK_BLAST ; Rock Tomb → SV TM move
	learnset 24, BARRIER ; Tearful Look → LA move (Iron Defense)
	learnset 28, SUCKER_PUNCH
	learnset 32, ROCK_SLIDE
	learnset 36, LOW_KICK
	learnset 40, COUNTER
	learnset 44, DOUBLE_EDGE
	learnset 48, HEAD_SMASH
	learnset 54, HAMMER_ARM ; added pre Gen8 move

	evos_attacks Politoed
	learnset 1, BODY_SLAM
	learnset 1, DOUBLE_EDGE
	learnset 1, WATER_GUN
	learnset 1, BUBBLE_BEAM
	learnset 1, HYPNOSIS
	learnset 1, PERISH_SONG
	learnset 1, SWAGGER
	learnset 1, HYPER_VOICE
	learnset 1, MUD_SHOT
	learnset 1, EARTH_POWER
	learnset 1, RAIN_DANCE
	learnset 1, HYDRO_PUMP
	learnset 1, BELLY_DRUM
	learnset 1, TACKLE ; Pound → similar move

	evos_attacks Sunkern
	evo_data EVOLVE_ITEM, SUN_STONE, SUNFLORA
	learnset 1, TACKLE
	learnset 1, GROWTH
	learnset 7, ABSORB
	learnset 10, MEGA_DRAIN
	learnset 13, LEECH_SEED ; added Sunflora move
	learnset 16, RAZOR_LEAF
	learnset 19, SLEEP_POWDER ; Worry Seed → new move
	learnset 22, GIGA_DRAIN
	learnset 25, SEED_BOMB ; Endeavor → moved Seed Bomb from Lv39
	learnset 28, HEALINGLIGHT ; Synthesis → similar move
	learnset 31, SOLAR_BEAM
	learnset 34, DOUBLE_EDGE
	learnset 36, SUNNY_DAY
	learnset 39, LEAF_STORM ; Seed Bomb → Sunflora move

	evos_attacks Sunflora
	learnset 1, TACKLE
	learnset 1, GROWTH
	learnset 4, EMBER ; Ingrain → evolution move (new)
	learnset 7, ABSORB
	learnset 10, MEGA_DRAIN
	learnset 13, LEECH_SEED
	learnset 16, RAZOR_LEAF
	learnset 19, SLEEP_POWDER ; Worry Seed → new move
	learnset 22, GIGA_DRAIN
	learnset 25, SEED_BOMB ; Bullet Seed → Sunkern move
	learnset 28, PETAL_DANCE
	learnset 31, SOLAR_BEAM
	learnset 34, DOUBLE_EDGE
	learnset 39, SUNNY_DAY
	learnset 43, LEAF_STORM
	learnset 50, FIRE_BLAST ; Petal Blizzard → new move

	evos_attacks Yanma
	evo_data EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	learnset 1, TACKLE
	learnset 6, QUICK_ATTACK
	learnset 11, DOUBLE_TEAM
	learnset 14, SONIC_BOOM ; Air Cutter → pre Gen8 move
	learnset 17, PROTECT ; Detect → similar move
	learnset 22, SUPERSONIC
	learnset 27, WING_ATTACK ; Uproar → Moved Wing Attack from Lv43
	learnset 30, BUG_BITE
	learnset 33, ANCIENTPOWER
	learnset 38, HYPNOSIS
	learnset 43, FEINT_ATTACK ; Wing Attack → egg move
	learnset 46, SCREECH
	learnset 49, U_TURN
	learnset 54, AIR_SLASH
	learnset 57, BUG_BUZZ

	evos_attacks Espeon
	learnset 1, THIEF ; Covet → similar move
	learnset 1, BITE
	learnset 1, HEAL_BELL ; Copycat → Gen7 tutor move
	learnset 1, BATON_PASS
	learnset 1, TAKE_DOWN
	learnset 1, CHARM
	learnset 1, HYPER_VOICE ; Double-Edge → SV TM move
	learnset 1, WEATHER_BALL ; Helping Hand → SV TM move
	learnset 1, CONFUSION ; evolution move
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 1, LEER ; Tail Whip → similar move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 10, QUICK_ATTACK
	learnset 15, DOUBLE_KICK ; Baby-Doll Eyes → pre Gen8 move
	learnset 20, SWIFT
	learnset 25, PSYBEAM
	learnset 30, HEALINGLIGHT ; Morning Sun → similar move
	learnset 35, SKILL_SWAP ; Power Swap → SwSh TR move
	learnset 40, PSYCHIC_M
	learnset 45, CALM_MIND ; Psych Up → LA move
	learnset 50, FUTURE_SIGHT
	learnset 55, DOUBLE_EDGE ; Last Resort → Eevee move

	evos_attacks Umbreon
	learnset 1, THIEF ; Covet → similar move
	learnset 1, SWIFT
	learnset 1, BITE
	learnset 1, HEAL_BELL ; Copycat → Gen7 tutor move
	learnset 1, BATON_PASS
	learnset 1, TAKE_DOWN
	learnset 1, CHARM
	learnset 1, HYPER_VOICE ; Double-Edge → SV TM move
	learnset 1, WEATHER_BALL ; Helping Hand → SV TM move
	learnset 1, PURSUIT ; evolution move (Snarl → pre Gen8 move)
	learnset 1, TACKLE
	learnset 1, GROWL
	learnset 1, LEER ; Tail Whip → similar move
	learnset 5, MUD_SLAP ; Sand Attack → similar move
	learnset 10, QUICK_ATTACK
	learnset 15, DOUBLE_KICK ; Baby-Doll Eyes → pre Gen8 move
	learnset 20, CONFUSE_RAY
	learnset 25, FEINT_ATTACK ; Assurance → pre Gen8 move
	learnset 30, HEALINGLIGHT ; Moonlight → similar move
	learnset 35, SUCKER_PUNCH ; Guard Swap → HGSS tutor move
	learnset 40, DARK_PULSE
	learnset 45, SCREECH
	learnset 50, MEAN_LOOK
	learnset 55, DOUBLE_EDGE ; Last Resort → Eevee move

	evos_attacks Murkrow
	evo_data EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	learnset 1, PECK
	learnset 1, PURSUIT ; Astonish → pre Gen8 move
	learnset 5, GUST
	learnset 11, HAZE
	learnset 15, WING_ATTACK
	learnset 21, NIGHT_SHADE
	learnset 25, FEINT_ATTACK ; Assurance → pre Gen8 move
	learnset 31, AERIAL_ACE ; Taunt → LA move
	learnset 35, MEAN_LOOK
	learnset 40, DRILL_PECK ; Foul Play → egg move
	learnset 50, SUCKER_PUNCH
	learnset 55, ROOST ; Torment → LA move
	learnset 60, BRAVE_BIRD ; Quash → LA move

	evos_attacks SlowkingPlain
	learnset 1, BELLY_DRUM ; added Slowpoke move
	learnset 1, POWER_GEM
	learnset 1, NASTY_PLOT
	learnset 1, SWAGGER
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
	learnset 24, ZEN_HEADBUTT ; added Slowpoke move
	learnset 27, AMNESIA
	learnset 30, SCALD ; Surf → SwSh TR move
	learnset 33, RECOVER ; Slack Off → similar move
	learnset 36, PSYCHIC_M
	learnset 39, RAZOR_SHELL ; Psych Up → SwSh TM move
	learnset 42, RAIN_DANCE
	learnset 45, FUTURE_SIGHT ; Heal Pulse → egg move

	evos_attacks Misdreavus
	evo_data EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	learnset 1, GROWL
	learnset 1, CONFUSION
	learnset 10, SHADOW_SNEAK ; Astonish → LA move
	learnset 14, CONFUSE_RAY
	learnset 19, MEAN_LOOK
	learnset 23, HEX
	learnset 28, PSYBEAM
	learnset 32, PAIN_SPLIT
	learnset 37, PAYBACK
	learnset 41, SHADOW_BALL
	learnset 46, PERISH_SONG
	learnset 50, POWER_GEM

	evos_attacks Dunsparce
	evo_data EVOLVE_LEVEL, 32, DUDUNSPARCE, NO_FORM ; preserve pre-evo form
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

	evos_attacks Gligar
	evo_data EVOLVE_HOLDING, RAZOR_FANG, TR_EVENITE, GLISCOR
	learnset 1, POISON_STING
	learnset 4, MUD_SLAP ; Sand Attack → similar move
	learnset 7, DEFENSE_CURL ; Harden → similar move
	learnset 10, KNOCK_OFF
	learnset 13, QUICK_ATTACK
	learnset 16, FURY_CUTTER
	learnset 19, FEINT_ATTACK ; Poison Tail → pre Gen8 move
	learnset 22, ACROBATICS
	learnset 27, SLASH
	learnset 30, U_TURN
	learnset 35, SCREECH
	learnset 40, X_SCISSOR
	learnset 45, EARTHQUAKE ; Crabhammer → TM move
	learnset 50, SWORDS_DANCE

	evos_attacks Steelix
	learnset 1, CRUNCH ; evolution move
	learnset 1, THUNDER_FANG
	learnset 1, ICE_FANG
	learnset 1, FIRE_FANG
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 1, WRAP ; Bind → similar move
	learnset 1, ROCK_THROW
	learnset 4, ROLLOUT ; Smack Down → LA move
	learnset 8, AGILITY ; Autotomize → similar move
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
	learnset 60, DRAGON_DANCE ; Magnet Rise → SwSh TR move

	evos_attacks Snubbull
	evo_data EVOLVE_LEVEL, 23, GRANBULL
	learnset 1, ICE_FANG
	learnset 1, FIRE_FANG
	learnset 1, THUNDER_FANG
	learnset 1, TACKLE
	learnset 1, SCARY_FACE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, CHARM
	learnset 7, BITE
	learnset 13, LICK
	learnset 19, HEADBUTT
	learnset 25, ROAR
	learnset 31, DOUBLE_EDGE ; Last Resort → egg move
	learnset 37, PLAY_ROUGH
	learnset 43, PAYBACK
	learnset 49, CRUNCH

	evos_attacks Granbull
	learnset 1, OUTRAGE
	learnset 1, ICE_FANG
	learnset 1, FIRE_FANG
	learnset 1, THUNDER_FANG
	learnset 1, TACKLE
	learnset 1, SCARY_FACE
	learnset 1, LEER ; Tail Whip → similar move
	learnset 1, CHARM
	learnset 7, BITE
	learnset 13, LICK
	learnset 19, HEADBUTT
	learnset 27, ROAR
	learnset 35, DOUBLE_EDGE ; Last Resort → egg move
	learnset 43, PLAY_ROUGH
	learnset 51, PAYBACK
	learnset 59, CRUNCH
	learnset 67, OUTRAGE ; added pre Gen8 move

	evos_attacks Scizor
	learnset 1, WING_ATTACK
	learnset 1, AGILITY
	learnset 1, AIR_SLASH
	learnset 1, BULLET_PUNCH ; evolution move
	learnset 1, QUICK_ATTACK
	learnset 1, LEER
	learnset 1, FURY_CUTTER
	learnset 1, FALSE_SWIPE
	learnset 12, METAL_CLAW
	learnset 16, DOUBLE_TEAM
	learnset 20, STEEL_WING ; Double Hit → egg move
	learnset 24, SLASH
	learnset 28, FOCUS_ENERGY
	learnset 32, BARRIER ; Iron Defense → similar move
	learnset 36, IRON_HEAD
	learnset 40, X_SCISSOR
	learnset 44, SWORDS_DANCE

	evos_attacks Shuckle
	learnset 1, DEFENSE_CURL ; Withdraw → similar move
	learnset 1, WRAP
	learnset 5, ROLLOUT
	learnset 10, ACID ; Struggle Bug → egg move
	learnset 15, ROCK_THROW
	learnset 20, SAFEGUARD
	learnset 25, REST
	learnset 30, BUG_BITE
	learnset 35, ROCK_BLAST ; Power Split/Guard Split → egg move
	learnset 40, ROCK_SLIDE
	learnset 45, SIGNAL_BEAM ; Gastro Acid → new move
	learnset 50, ANCIENTPOWER ; Sticky Web → HGSS tutor move
	learnset 55, ENCORE ; Power Trick → pre Gen8 move
	learnset 60, STONE_EDGE
	learnset 65, SHELL_SMASH

	evos_attacks Heracross
	learnset 1, REVERSAL ; Arm Thrust → pre Gen8 move
	learnset 1, TACKLE
	learnset 1, LEER
	learnset 5, FURY_STRIKES ; Fury Attack → similar move
	learnset 10, ENDURE
	learnset 15, AERIAL_ACE
	learnset 20, HORN_ATTACK
	learnset 25, COUNTER
	learnset 30, BRICK_BREAK
	learnset 35, PIN_MISSILE
	learnset 40, ROCK_BLAST ; Throat Chop → LZA move
	learnset 45, THRASH
	learnset 50, SWORDS_DANCE
	learnset 55, MEGAHORN
	learnset 60, CLOSE_COMBAT

	evos_attacks SneaselPlain
	evo_data EVOLVE_HOLDING, RAZOR_CLAW, TR_EVENITE, WEAVILE
	learnset 1, TACKLE ; Scratch → similar move
	learnset 1, LEER
	learnset 6, QUICK_ATTACK ; Taunt → moved Quick Attack from Lv12
	learnset 12, FEINT_ATTACK ; Quick Attack → pre Gen8 move
	learnset 18, METAL_CLAW
	learnset 24, ICY_WIND
	learnset 30, SLASH ; Fury Swipes → moved Slash from Lv60
	learnset 36, HONE_CLAWS
	learnset 42, ICE_PUNCH ; Beat Up → egg move
	learnset 48, AGILITY
	learnset 54, SCREECH
	learnset 60, ICICLE_CRASH ; Slash → egg move

	evos_attacks Swinub
	evo_data EVOLVE_LEVEL, 33, PILOSWINE
	learnset 1, TACKLE
	learnset 1, MUD_SLAP
	learnset 5, ICICLE_SPEAR ; Powder Snow → egg move
	learnset 10, REVERSAL ; Flail → similar move
	learnset 15, ICE_SHARD
	learnset 20, BULLDOZE ; Mist → LA move
	learnset 25, ENDURE
	learnset 30, ICY_WIND
	learnset 35, AMNESIA
	learnset 40, TAKE_DOWN
	learnset 45, EARTHQUAKE
	learnset 50, BLIZZARD

	evos_attacks Piloswine
	evo_data EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	learnset 1, ANCIENTPOWER
	learnset 1, TACKLE
	learnset 1, MUD_SLAP
	learnset 1, ICICLE_SPEAR ; Powder Snow → egg move
	learnset 1, REVERSAL ; Flail → similar move
	learnset 15, ICE_SHARD
	learnset 20, BULLDOZE ; Mist → LA move
	learnset 25, ENDURE
	learnset 30, ICY_WIND
	learnset 32, ICE_FANG ; evolution move
	learnset 37, AMNESIA
	learnset 44, TAKE_DOWN
	learnset 51, EARTHQUAKE
	learnset 58, BLIZZARD
	learnset 65, THRASH

	evos_attacks CorsolaPlain
	learnset 1, TACKLE
	learnset 1, DEFENSE_CURL ; Harden → similar move
	learnset 5, WATER_GUN
	learnset 10, CONFUSE_RAY ; Aqua Ring → egg move
	learnset 15, ENDURE
	learnset 20, ANCIENTPOWER
	learnset 25, BUBBLE_BEAM
	learnset 30, REVERSAL ; Flail → similar move
	learnset 35, BARRIER ; Life Dew → pre Gen8 move (Iron Defense)
	learnset 40, POWER_GEM
	learnset 45, EARTH_POWER
	learnset 50, RECOVER
	learnset 55, MIRROR_COAT

	evos_attacks Remoraid
	evo_data EVOLVE_LEVEL, 25, OCTILLERY
	learnset 1, WATER_GUN
	learnset 4, WATER_PULSE
	learnset 8, FOCUS_ENERGY
	learnset 12, PSYBEAM
	learnset 16, AURORA_BEAM
	learnset 20, BUBBLE_BEAM
	learnset 24, MUD_SHOT ; Lock-On → egg move
	learnset 28, SIGNAL_BEAM ; Bullet Seed → pre Gen8 move
	learnset 32, ICE_BEAM
	learnset 36, HYDRO_PUMP
	learnset 40, GUNK_SHOT ; Soak → Octillery move
	learnset 44, HYPER_BEAM

	evos_attacks Octillery
	learnset 1, GUNK_SHOT
	learnset 1, ROCK_BLAST
	learnset 1, WATER_GUN
	learnset 1, WRAP
	learnset 1, WATER_PULSE
	learnset 1, FOCUS_ENERGY
	learnset 12, PSYBEAM
	learnset 16, AURORA_BEAM
	learnset 20, BUBBLE_BEAM
	learnset 24, MUD_SHOT ; Lock-On → egg move
	learnset 24, SCALD ; evolution move (Octazooka → TM move)
	learnset 30, SIGNAL_BEAM ; Bullet Seed → pre Gen8 move
	learnset 36, ICE_BEAM
	learnset 42, HYDRO_PUMP
	learnset 48, GUNK_SHOT ; Soak → Octillery move
	learnset 54, HYPER_BEAM

	evos_attacks Delibird
; Delibird's learnset is based on Iron Bundle, with adjustments to levels
	learnset 1, PECK ; Present → new move
	learnset 6, ICE_SHARD ; Powder Snow → egg move
	learnset 9, RAPID_SPIN ; Whirlpool → egg move
	learnset 12, TAKE_DOWN
	learnset 17, ICICLE_SPEAR ; Drill Peck → SV TM move
	learnset 20, DRILL_PECK ; Helping Hand → moved Drill Peck from Lv17
	learnset 23, AURORA_BEAM ; Freeze-Dry → egg move
	learnset 28, AIR_SLASH ; Flip Turn → SV TM move
	learnset 31, ICE_BEAM
	learnset 34, AGILITY
	learnset 39, HAIL ; Snowscape → similar move
	learnset 42, HYDRO_PUMP
	learnset 45, FUTURE_SIGHT ; Aurora Veil → egg move
	learnset 50, BLIZZARD

	evos_attacks Mantine
	learnset 1, PSYBEAM ; evolution move
	learnset 1, SIGNAL_BEAM ; Bullet Seed → pre Gen8 move
	learnset 1, ROOST
	learnset 1, TACKLE
	learnset 1, WATER_GUN
	learnset 1, SUPERSONIC
	learnset 1, WING_ATTACK
	learnset 12, WATER_PULSE
	learnset 16, CONFUSE_RAY ; Wide Guard → pre Gen8 move
	learnset 20, AGILITY
	learnset 24, BUBBLE_BEAM
	learnset 28, HEADBUTT
	learnset 32, AIR_SLASH
	learnset 36, MIRROR_COAT ; Aqua Ring → egg move
	learnset 40, AQUA_TAIL ; Bounce → LA tutor move
	learnset 44, TAKE_DOWN
	learnset 48, HYDRO_PUMP

	evos_attacks Skarmory
	learnset 1, PECK
	learnset 1, LEER
	learnset 4, MUD_SLAP ; Sand Attack → similar move
	learnset 8, FURY_STRIKES ; Fury Attack → similar move
	learnset 12, METAL_CLAW
	learnset 16, AGILITY
	learnset 20, WING_ATTACK
	learnset 24, SLASH
	learnset 28, STEEL_WING
	learnset 32, PAYBACK
	learnset 36, DRILL_PECK
	learnset 40, NIGHT_SLASH ; Metal Sound → LZA move
	learnset 44, SPIKES
	learnset 48, BARRIER ; Iron Defense → similar move
	learnset 52, BRAVE_BIRD

	evos_attacks Houndour
	evo_data EVOLVE_LEVEL, 24, HOUNDOOM
	learnset 1, LEER
	learnset 1, EMBER
	learnset 4, HONE_CLAWS ; Howl → new move
	learnset 8, MUD_SLAP ; Smog → GSC TM move
	learnset 13, ROAR
	learnset 16, BITE
	learnset 20, FLAME_CHARGE ; Incinerate → SV TM move
	learnset 25, FEINT_ATTACK ; Beat Up → pre Gen8 move
	learnset 28, FIRE_FANG
	learnset 32, FIRE_SPIN ; Torment → SV TM move
	learnset 37, SUCKER_PUNCH ; Comeuppance → egg move
	learnset 40, CRUNCH ; Foul Play → moved Crunch from Lv49
	learnset 44, FLAMETHROWER
	learnset 49, DARK_PULSE ; Crunch → TM move
	learnset 52, NASTY_PLOT
	learnset 56, OVERHEAT ; Inferno → TM move

	evos_attacks Houndoom
	learnset 1, NASTY_PLOT
	learnset 1, THUNDER_FANG
	learnset 1, LEER
	learnset 1, EMBER
	learnset 1, HONE_CLAWS ; Howl → new move
	learnset 1, MUD_SLAP ; Smog → GSC TM move
	learnset 13, ROAR
	learnset 16, BITE
	learnset 20, FLAME_CHARGE ; Incinerate → SV TM move
	learnset 26, FEINT_ATTACK ; Beat Up → pre Gen8 move
	learnset 30, FIRE_FANG
	learnset 35, FIRE_SPIN ; Torment → SV TM move
	learnset 41, SUCKER_PUNCH ; Comeuppance → egg move
	learnset 45, CRUNCH ; Foul Play → moved Crunch from Lv49
	learnset 50, FLAMETHROWER
	learnset 56, DARK_PULSE ; Crunch → TM move
	learnset 62, NASTY_PLOT
	learnset 65, OVERHEAT ; Inferno → TM move

	evos_attacks Kingdra
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
	learnset 72, OUTRAGE ; Wave Crash → SV TM

	evos_attacks Elekid
	evo_data EVOLVE_LEVEL, 30, ELECTABUZZ
	learnset 1, QUICK_ATTACK
	learnset 1, LEER
	learnset 4, THUNDERSHOCK
	learnset 8, THUNDER_WAVE ; Charge → moved Thunder Wave from Lv20
	learnset 12, SWIFT
	learnset 16, SHOCK_WAVE
	learnset 20, SPARK ; Thunder Wave → LA move
	learnset 24, SCREECH
	learnset 28, THUNDERPUNCH
	learnset 32, VOLT_SWITCH ; Discharge → TM move
	learnset 40, THUNDERBOLT
	learnset 44, LIGHT_SCREEN
	learnset 48, THUNDER

	evos_attacks Magby
	evo_data EVOLVE_LEVEL, 30, MAGMAR
	learnset 1, TACKLE ; Smog → LA move
	learnset 1, LEER
	learnset 4, EMBER
	learnset 8, MACH_PUNCH ; Smokescreen → egg move
	learnset 12, FEINT_ATTACK ; Clear Smog → pre Gen8 move
	learnset 16, FIRE_SPIN ; Flame Wheel → pre Gen8 move
	learnset 20, CONFUSE_RAY
	learnset 24, SCARY_FACE
	learnset 28, FIRE_PUNCH
	;learnset 32, FLAME_BURST ; Lava Plume → pre Gen8 move
	learnset 36, LOW_KICK
	learnset 40, FLAMETHROWER
	learnset 44, SUNNY_DAY
	learnset 48, FIRE_BLAST

	evos_attacks Larvitar
	evo_data EVOLVE_LEVEL, 30, PUPITAR
	learnset 1, TACKLE
	learnset 1, LEER
	learnset 3, ROCK_THROW
	learnset 6, PAYBACK
	learnset 9, BITE
	learnset 12, SCARY_FACE
	learnset 15, STOMP ; Rock Slide → egg move
	learnset 18, ROCK_SLIDE ; Stomping Tantrum → moved Rock Slide from Lv15
	learnset 21, SCREECH
	learnset 24, ROCK_BLAST ; Smack Down → LZA move
	learnset 27, CRUNCH
	learnset 31, EARTHQUAKE
	learnset 33, STONE_EDGE
	learnset 36, THRASH
	learnset 39, SANDSTORM
	learnset 42, HYPER_BEAM

	evos_attacks Pupitar
	evo_data EVOLVE_LEVEL, 55, TYRANITAR
	learnset 1, TACKLE
	learnset 1, LEER
	learnset 1, ROCK_THROW
	learnset 1, PAYBACK
	learnset 9, BITE
	learnset 12, SCARY_FACE
	learnset 15, STOMP ; Rock Slide → egg move
	learnset 18, ROCK_SLIDE ; Stomping Tantrum → moved Rock Slide from Lv15
	learnset 21, SCREECH
	learnset 24, ROCK_BLAST ; Smack Down → LZA move
	learnset 27, CRUNCH
	learnset 29, BARRIER ; evolution move (Iron Defense → similar move)
	learnset 33, EARTHQUAKE
	learnset 37, STONE_EDGE
	learnset 42, THRASH
	learnset 47, SANDSTORM
	learnset 52, HYPER_BEAM

	evos_attacks Tyranitar
	learnset 1, BARRIER ; Iron Defense → similar move
	learnset 1, THUNDER_FANG
	learnset 1, ICE_FANG
	learnset 1, FIRE_FANG
	learnset 1, TACKLE
	learnset 1, LEER
	learnset 1, ROCK_THROW
	learnset 1, PAYBACK
	learnset 9, BITE
	learnset 12, SCARY_FACE
	learnset 15, STOMP ; Rock Slide → egg move
	learnset 18, ROCK_SLIDE ; Stomping Tantrum → moved Rock Slide from Lv15
	learnset 21, SCREECH
	learnset 24, ROCK_BLAST ; Smack Down → LZA move
	learnset 27, CRUNCH
	learnset 33, EARTHQUAKE
	learnset 37, STONE_EDGE
	learnset 42, THRASH
	learnset 47, SANDSTORM
	learnset 52, HYPER_BEAM
	learnset 54, DARK_PULSE ; evolution move (pre Gen8 move)
	learnset 59, GIGA_IMPACT

	end_evos_attacks
