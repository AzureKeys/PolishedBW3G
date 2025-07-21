SECTION "Egg Moves", ROMX

INCLUDE "data/pokemon/egg_move_pointers.asm"

EggSpeciesMoves::

BulbasaurEggSpeciesMoves:
	dp BULBASAUR, PLAIN_FORM
	db CHARM
	db PETAL_DANCE
	db LIGHT_SCREEN
	db SAFEGUARD
	db POWER_WHIP
	db $ff

CharmanderEggSpeciesMoves:
	dp CHARMANDER, PLAIN_FORM
	db ANCIENTPOWER
	db BELLY_DRUM
	db BITE
	db CRUNCH
	db DRAGON_DANCE
	db DRAGONBREATH
	db FLARE_BLITZ
	db OUTRAGE
	db $ff

SquirtleEggSpeciesMoves:
	dp SQUIRTLE, PLAIN_FORM
	db CONFUSION
	db CRUNCH
	db FORESIGHT
	db HAZE
	db MIRROR_COAT
	db AQUA_JET
	db $ff

RattataPlainEggSpeciesMoves:
	dp RATTATA, PLAIN_FORM
	db FURY_STRIKES
	db REVERSAL
	db SCREECH
	db BITE
	db COUNTER
	db $ff

RattataAlolanEggSpeciesMoves:
	dp RATTATA, ALOLAN_FORM
	db FURY_STRIKES
	db REVERSAL
	db SCREECH
	db BITE
	db COUNTER
	db $ff

EkansEggSpeciesMoves:
	dp EKANS, NO_FORM
	db CRUNCH
	db DISABLE
	db PURSUIT
	db SCARY_FACE
	db $ff

SandshrewPlainEggSpeciesMoves:
	dp SANDSHREW, PLAIN_FORM
	db METAL_CLAW
	db RAPID_SPIN
	db SAFEGUARD
	db COUNTER
	db NIGHT_SLASH
	db $ff

SandshrewAlolanEggSpeciesMoves:
	dp SANDSHREW, ALOLAN_FORM
	db AMNESIA
	db RAPID_SPIN
	db SAFEGUARD
	db REVERSAL ; Flail → similar move
	db ICICLE_CRASH
	db ICICLE_SPEAR
	db NIGHT_SLASH
	db $ff

NidoranFEggSpeciesMoves:
	dp NIDORAN_F, PLAIN_FORM
	db CHARM
	db DISABLE
	db FOCUS_ENERGY
	db PURSUIT
	db SUPERSONIC
	db TAKE_DOWN
	db $ff

NidoranMEggSpeciesMoves:
	dp NIDORAN_M, PLAIN_FORM
	db AMNESIA
	db CONFUSION
	db DISABLE
	db SUPERSONIC
	db TAKE_DOWN
	db CALM_MIND
	db COUNTER
	db $ff

VulpixPlainEggSpeciesMoves:
	dp VULPIX, PLAIN_FORM
	db FLAME_CHARGE
	db DISABLE
	db FLARE_BLITZ
	db HYPNOSIS
	db FEINT_ATTACK
	db EXTRASENSORY
	db CHARM
	db ENERGY_BALL
	db ROAR
	db $ff

VulpixAlolanEggSpeciesMoves:
	dp VULPIX, ALOLAN_FORM
	db DISABLE
	db BLIZZARD
	db HYPNOSIS
	db FEINT_ATTACK
	db EXTRASENSORY
	db CHARM
	db ICE_BEAM
	db ROAR
	db $ff

ZubatEggSpeciesMoves:
	dp ZUBAT, PLAIN_FORM
	db FEINT_ATTACK
	db GUST
	db HYPNOSIS
	db NASTY_PLOT
	db PURSUIT
	db QUICK_ATTACK
	db ZEN_HEADBUTT
	db BRAVE_BIRD
	db $ff

ParasEggSpeciesMoves:
	dp PARAS, PLAIN_FORM
	db AGILITY
	db LEECH_SEED
	db METAL_CLAW
	db PSYBEAM
	db PURSUIT
	db SCREECH
	db SHADOW_CLAW
	db $ff

DiglettPlainEggSpeciesMoves:
	dp DIGLETT, PLAIN_FORM
	db ANCIENTPOWER
	db FEINT_ATTACK
	db HEADBUTT
	db PURSUIT
	db REVERSAL
	db SCREECH
	db $ff

DiglettAlolanEggSpeciesMoves:
	dp DIGLETT, ALOLAN_FORM
	db ANCIENTPOWER
	db FEINT_ATTACK
	db HEADBUTT
	db PURSUIT
	db REVERSAL
	db SCREECH
	db $ff

MeowthPlainEggSpeciesMoves:
	dp MEOWTH, PLAIN_FORM
	db CHARM
	db HYPNOSIS
	db AMNESIA
	db LEER
	db NIGHT_SLASH
	db $ff

MeowthAlolanEggSpeciesMoves:
	dp MEOWTH, ALOLAN_FORM
	db CHARM
	db HYPNOSIS
	db AMNESIA
	db LEER
	db NIGHT_SLASH
	db $ff

MeowthGalarianEggSpeciesMoves:
	dp MEOWTH, GALARIAN_FORM
	db CHARM
	db HYPNOSIS
	db AMNESIA
	db LEER
	db NIGHT_SLASH
	db $ff

PsyduckEggSpeciesMoves:
	dp PSYDUCK, PLAIN_FORM
	db CONFUSE_RAY
	db CROSS_CHOP
	db ENCORE
	db FORESIGHT
	db FUTURE_SIGHT
	db HYPNOSIS
	db PSYBEAM
	db ICE_BEAM
	db LIGHT_SCREEN
	db PSYCHIC_M
	db $ff

MankeyEggSpeciesMoves:
	dp MANKEY, PLAIN_FORM
	db ENCORE
	db FORESIGHT
	db BULK_UP
	db REVERSAL
	db ROCK_SLIDE
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db $ff

GrowlithePlainEggSpeciesMoves:
	dp GROWLITHE, PLAIN_FORM
	db DOUBLE_KICK
	db FIRE_SPIN
	db HEALINGLIGHT
	db THRASH
	db CRUNCH
	db FLARE_BLITZ
	db BODY_SLAM
	db SAFEGUARD
	db CLOSE_COMBAT
	db $ff

GrowlitheHisuianEggSpeciesMoves:
	dp GROWLITHE, HISUIAN_FORM
	db DOUBLE_KICK
	db FIRE_SPIN
	db HEALINGLIGHT
	db THRASH
	db CRUNCH
	db FLARE_BLITZ
	db BODY_SLAM
	db SAFEGUARD
	db CLOSE_COMBAT
	db $ff

PoliwagEggSpeciesMoves:
	dp POLIWAG, PLAIN_FORM
	db ENCORE
	db HAZE
	db SPLASH
	db BUBBLE_BEAM
	db WATER_PULSE
	db $ff

GeodudePlainEggSpeciesMoves:
	dp GEODUDE, PLAIN_FORM
	db ROCK_SLIDE
	db $ff

GeodudeAlolanEggSpeciesMoves:
	dp GEODUDE, ALOLAN_FORM
	db ROCK_SLIDE
	db $ff

PonytaPlainEggSpeciesMoves:
	dp PONYTA, PLAIN_FORM
	db CHARM
	db DOUBLE_KICK
	db HYPNOSIS
	db HEALINGLIGHT
	db THRASH
	db QUICK_ATTACK
	db EXTREMESPEED
	db PLAY_ROUGH
	db $ff

PonytaGalarianEggSpeciesMoves:
	dp PONYTA, GALARIAN_FORM
	db CHARM
	db DOUBLE_KICK
	db HYPNOSIS
	db HEALINGLIGHT
	db THRASH
	db QUICK_ATTACK
	db PSYBEAM
	db PSYCHIC_M
	db EXTREMESPEED
	db PLAY_ROUGH
	db $ff

SlowpokePlainEggSpeciesMoves:
	dp SLOWPOKE, PLAIN_FORM
	dp SLOWPOKE, GALARIAN_FORM
	db BELLY_DRUM
	db FUTURE_SIGHT
	db STOMP
	db SAFEGUARD
	db ZEN_HEADBUTT
	db $ff

SlowpokeGalarianEggSpeciesMoves:
	dp SLOWPOKE, GALARIAN_FORM
	db BELLY_DRUM
	db FUTURE_SIGHT
	db STOMP
	db SAFEGUARD
	db ZEN_HEADBUTT
	db $ff

MagnemiteEggSpeciesMoves:
	dp MAGNEMITE, PLAIN_FORM
	db $ff

FarfetchDGalarianEggSpeciesMoves:
	dp FARFETCH_D, GALARIAN_FORM
	db COUNTER
	db FORESIGHT
	db GUST
	db QUICK_ATTACK
	db STEEL_WING
	db NIGHT_SLASH
	db ROOST
	db $ff

FarfetchDPlainEggSpeciesMoves:
	dp FARFETCH_D, PLAIN_FORM
	db FORESIGHT
	db GUST
	db QUICK_ATTACK
	db STEEL_WING
	db NIGHT_SLASH
	db ROOST
	db $ff

SeelEggSpeciesMoves:
	dp SEEL, PLAIN_FORM
	db DISABLE
	db LICK
	db PECK
	db PERISH_SONG
	db ENCORE
	db WATER_PULSE
	db ICICLE_SPEAR
	db $ff

GrimerPlainEggSpeciesMoves:
	dp GRIMER, PLAIN_FORM
	db HAZE
	db LICK
	db MEAN_LOOK
	db SCARY_FACE
	db SHADOW_CLAW
	db $ff

GrimerAlolanEggSpeciesMoves:
	dp GRIMER, ALOLAN_FORM
	db HAZE
	db LICK
	db MEAN_LOOK
	db SCARY_FACE
	db PURSUIT
	db $ff

GastlyEggSpeciesMoves:
	dp GASTLY, PLAIN_FORM
	db ASTONISH
	db DISABLE
	db HAZE
	db PERISH_SONG
	db SCARY_FACE
	db NASTY_PLOT
	db FEINT_ATTACK
	db $ff

OnixEggSpeciesMoves:
	dp ONIX, PLAIN_FORM
	db DEFENSE_CURL
	db ROCK_SLIDE
	db EARTHQUAKE
	db ROCK_BLAST
	db $ff

VoltorbPlainEggSpeciesMoves:
	dp VOLTORB, PLAIN_FORM
	db $ff

VoltorbHisuianEggSpeciesMoves:
	dp VOLTORB, HISUIAN_FORM
	db $ff

ExeggcuteEggSpeciesMoves:
	dp EXEGGCUTE, PLAIN_FORM
	db MEGA_DRAIN
	db HEALINGLIGHT
	db ANCIENTPOWER
	db REFLECT
	db $ff

CuboneEggSpeciesMoves:
	dp CUBONE, PLAIN_FORM
	db ANCIENTPOWER
	db BELLY_DRUM
	db DOUBLE_KICK
	db PERISH_SONG
	db SCREECH
	db ROCK_SLIDE
	db SWORDS_DANCE
	db IRON_HEAD
	db $ff

LickitungEggSpeciesMoves:
	dp LICKITUNG, PLAIN_FORM
	db THRASH
	db $ff

KoffingEggSpeciesMoves:
	dp KOFFING, PLAIN_FORM
	db PSYBEAM
	db SCREECH
	db DESTINY_BOND
	db PAIN_SPLIT
	db $ff

TangelaEggSpeciesMoves:
	dp TANGELA, PLAIN_FORM
	db CONFUSION
	db AMNESIA
	db LEECH_SEED
	db $ff

KangaskhanEggSpeciesMoves:
	dp KANGASKHAN, PLAIN_FORM
	db DISABLE
	db FOCUS_ENERGY
	db FORESIGHT
	db STOMP
	db SAFEGUARD
	db $ff

HorseaEggSpeciesMoves:
	dp HORSEA, PLAIN_FORM
	db AURORA_BEAM
	db DISABLE
	db DRAGON_RAGE
	db DRAGONBREATH
	db OCTAZOOKA
	db SPLASH
	db HAZE
	db WATER_PULSE
	db $ff

StaryuEggSpeciesMoves:
	dp STARYU, PLAIN_FORM
	db $ff

ScytherEggSpeciesMoves:
	dp SCYTHER, PLAIN_FORM
	db BATON_PASS
	db BUG_BUZZ
	db REVERSAL
	db COUNTER
	db SAFEGUARD
	db LIGHT_SCREEN
	db NIGHT_SLASH
	db $ff

PinsirEggSpeciesMoves:
	dp PINSIR, PLAIN_FORM
	db FEINT_ATTACK
	db FURY_STRIKES
	db QUICK_ATTACK
	db CLOSE_COMBAT
	db $ff

MagikarpEggSpeciesMoves:
	dp MAGIKARP, NO_FORM
	db $ff

LaprasEggSpeciesMoves:
	dp LAPRAS, PLAIN_FORM
	db AURORA_BEAM
	db DRAGON_DANCE
	db FORESIGHT
	db FUTURE_SIGHT
	db HEAL_BELL
	db $ff

EeveeEggSpeciesMoves:
	dp EEVEE, PLAIN_FORM
	db CHARM
	db $ff

DratiniEggSpeciesMoves:
	dp DRATINI, PLAIN_FORM
	db EXTREMESPEED ; requires Dragon Shrine Dratini
	db HAZE
	db SUPERSONIC
	db WATER_PULSE
	db AQUA_JET
	db $ff

ChikoritaEggSpeciesMoves:
	dp CHIKORITA, PLAIN_FORM
	db LEECH_SEED
	db VINE_WHIP
	db ANCIENTPOWER
	db COUNTER
	db SWORDS_DANCE
	db CHARM
	db HEAL_BELL
	db $ff

CyndaquilEggSpeciesMoves:
	dp CYNDAQUIL, PLAIN_FORM
	db DOUBLE_KICK
	db EXTRASENSORY
	db FLARE_BLITZ
	db FORESIGHT
	db FURY_STRIKES
	db REVERSAL
	db CLOSE_COMBAT
	db THRASH
	db QUICK_ATTACK
	db $ff

TotodileEggSpeciesMoves:
	dp TOTODILE, PLAIN_FORM
	db DRAGON_DANCE
	db METAL_CLAW
	db CRUNCH
	db THRASH
	db HYDRO_PUMP
	db ANCIENTPOWER
	db ROCK_SLIDE
	db WATER_PULSE
	db AQUA_JET
	db $ff

ChinchouEggSpeciesMoves:
	dp CHINCHOU, PLAIN_FORM
	db AGILITY
	db HAZE
	db PSYBEAM
	db SCREECH
	db SUPERSONIC
	db WATER_PULSE
	db $ff

PichuEggSpeciesMoves:
	dp PICHU, PLAIN_FORM
	db DISARM_VOICE
	db DOUBLE_SLAP
	db ENCORE
	db REVERSAL
	db $ff

CleffaEggSpeciesMoves:
	dp CLEFFA, PLAIN_FORM
	db CALM_MIND
	db BELLY_DRUM
	db AMNESIA
	db SPLASH
	db FRESH_SNACK
	db $ff

IgglybuffEggSpeciesMoves:
	dp IGGLYBUFF, PLAIN_FORM
	db FEINT_ATTACK
	db PERISH_SONG
	db MOONBLAST
	db $ff

TogepiEggSpeciesMoves:
	dp TOGEPI, PLAIN_FORM
	db EXTRASENSORY
	db FORESIGHT
	db FUTURE_SIGHT
	db HEALINGLIGHT
	db NASTY_PLOT
	db PECK
	db $ff

MareepEggSpeciesMoves:
	dp MAREEP, PLAIN_FORM
	db AGILITY
	db REFLECT
	db MUD_SLAP
	db SCREECH
	db THUNDERBOLT
	db TAKE_DOWN
	db BODY_SLAM
	db SAFEGUARD
	db $ff

SunkernEggSpeciesMoves:
	dp SUNKERN, PLAIN_FORM
	db $ff

YanmaEggSpeciesMoves:
	dp YANMA, PLAIN_FORM
	db FEINT_ATTACK
	db LEECH_LIFE
	db REVERSAL
	db $ff

WooperPlainEggSpeciesMoves:
	dp WOOPER, PLAIN_FORM
	db COUNTER
	db DOUBLE_KICK
	db ENCORE
	db RECOVER
	db BODY_SLAM
	db ANCIENTPOWER
	db SAFEGUARD
	db $ff

WooperPaldeanEggSpeciesMoves:
	dp WOOPER, PALDEAN_FORM
	db COUNTER
	db DOUBLE_KICK
	db ENCORE
	db RECOVER
	db BODY_SLAM
	db ANCIENTPOWER
	db SAFEGUARD
	db $ff

MurkrowEggSpeciesMoves:
	dp MURKROW, PLAIN_FORM
	db CONFUSE_RAY
	db DRILL_PECK
	db PERISH_SONG
	db QUICK_ATTACK
	db SCREECH
	db WING_ATTACK
	db BRAVE_BIRD
	db ROOST
	db $ff

MisdreavusEggSpeciesMoves:
	dp MISDREAVUS, PLAIN_FORM
	db DESTINY_BOND
	db NASTY_PLOT
	db SCREECH
	db $ff

PinecoEggSpeciesMoves:
	dp PINECO, PLAIN_FORM
	db PIN_MISSILE
	db SWIFT
	db REFLECT
	db TOXIC_SPIKES
	db $ff

DunsparceEggSpeciesMoves:
	dp DUNSPARCE, NO_FORM
	db AGILITY
	db ASTONISH
	db BITE
	db RAGE
	db ANCIENTPOWER
	db ROCK_SLIDE
	db HEX
	db $ff

GligarEggSpeciesMoves:
	dp GLIGAR, PLAIN_FORM
	db AGILITY
	db BATON_PASS
	db METAL_CLAW
	db WING_ATTACK
	db COUNTER
	db NIGHT_SLASH
	db $ff

SnubbullEggSpeciesMoves:
	dp SNUBBULL, PLAIN_FORM
	db FEINT_ATTACK
	db LEER
	db METRONOME
	db REFLECT
	db CRUNCH
	db HEAL_BELL
	db LICK
	db CLOSE_COMBAT
	db $ff

QwilfishEggSpeciesMoves:
	dp QWILFISH, PLAIN_FORM
	db BUBBLE_BEAM
	db HAZE
	db SUPERSONIC
	db POISON_JAB
	db WATER_PULSE
	db $ff

QwilfishHisuianEggSpeciesMoves:
	dp QWILFISH, HISUIAN_FORM
	db $ff

ShuckleEggSpeciesMoves:
	dp SHUCKLE, PLAIN_FORM
	db ROLLOUT
	db ACID
	db KNOCK_OFF
	db MUD_SLAP
	db ROCK_BLAST
	db $ff

HeracrossEggSpeciesMoves:
	dp HERACROSS, PLAIN_FORM
	db ROCK_BLAST
	db DEFENSE_CURL
	db PURSUIT
	db $ff

SneaselEggSpeciesMoves:
	dp SNEASEL, PLAIN_FORM
	db BITE
	db FORESIGHT
	db PURSUIT
	db COUNTER
	db REFLECT
	db ICICLE_CRASH
	db ICE_SHARD
	db $ff

SneaselHisuianEggSpeciesMoves:
	dp SNEASEL, HISUIAN_FORM
	db $ff

TeddiursaEggSpeciesMoves:
	dp TEDDIURSA, PLAIN_FORM
	db BELLY_DRUM
	db CROSS_CHOP
	db CRUNCH
	db FOCUS_ENERGY
	db METAL_CLAW
	db PLAY_ROUGH
	db TAKE_DOWN
	db SEISMIC_TOSS
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db $ff

SlugmaEggSpeciesMoves:
	dp SLUGMA, PLAIN_FORM
	db SMOKESCREEN
	db CURSE
	db $ff

SwinubEggSpeciesMoves:
	dp SWINUB, PLAIN_FORM
	db AVALANCHE
	db BITE
	db TAKE_DOWN
	db BODY_SLAM
	db ROCK_SLIDE
	db ANCIENTPOWER
	db ICICLE_CRASH
	db ICICLE_SPEAR
	db $ff

CorsolaPlainEggSpeciesMoves:
	dp CORSOLA, PLAIN_FORM
	db BARRIER
	db CONFUSE_RAY
	db HAZE
	db AMNESIA
	db SCREECH
	db ROCK_SLIDE
	db SAFEGUARD
	db CALM_MIND
	db WATER_PULSE
	db ICICLE_SPEAR
	db $ff

CorsolaGalarianEggSpeciesMoves:
	dp CORSOLA, GALARIAN_FORM
	db BARRIER
	db CONFUSE_RAY
	db HAZE
	db AMNESIA
	db SCREECH
	db ROCK_SLIDE
	db SAFEGUARD
	db CALM_MIND
	db WATER_PULSE
	db ICICLE_SPEAR
	db $ff

RemoraidEggSpeciesMoves:
	dp REMORAID, PLAIN_FORM
	db SPLASH
	db HAZE
	db OCTAZOOKA
	db ROCK_BLAST
	db SCREECH
	db SUPERSONIC
	db AURORA_BEAM
	db GUNK_SHOT
	db WATER_PULSE
	db $ff

DelibirdEggSpeciesMoves:
	dp DELIBIRD, PLAIN_FORM
	db AURORA_BEAM
	db DESTINY_BOND
	db ICE_PUNCH
	db ICY_WIND
	db QUICK_ATTACK
	db RAPID_SPIN
	db SPLASH
	db $ff

SkarmoryEggSpeciesMoves:
	dp SKARMORY, PLAIN_FORM
	db DRILL_PECK
	db PURSUIT
	db BRAVE_BIRD
	db $ff

HoundourEggSpeciesMoves:
	dp HOUNDOUR, PLAIN_FORM
	db DESTINY_BOND
	db FIRE_SPIN
	db PURSUIT
	db RAGE
	db REVERSAL
	db COUNTER
	db WILL_O_WISP
	db $ff

PhanpyEggSpeciesMoves:
	dp PHANPY, PLAIN_FORM
	db FOCUS_ENERGY
	db PLAY_ROUGH
	db WATER_GUN
	db BODY_SLAM
	db ANCIENTPOWER
	db GUNK_SHOT
	db ICE_SHARD
	db ENCORE
	db $ff

StantlerEggSpeciesMoves:
	dp STANTLER, PLAIN_FORM
	db BITE
	db DOUBLE_KICK
	db EXTRASENSORY
	db RAGE
	db $ff

ElekidEggSpeciesMoves:
	dp ELEKID, PLAIN_FORM
	db BARRIER
	db CROSS_CHOP
	db KARATE_CHOP
	db BULK_UP
	db $ff

MagbyEggSpeciesMoves:
	dp MAGBY, PLAIN_FORM
	db BARRIER
	db BELLY_DRUM
	db CROSS_CHOP
	db FLARE_BLITZ
	db FOCUS_ENERGY
	db KARATE_CHOP
	db MACH_PUNCH
	db SCREECH
	db $ff

MiltankEggSpeciesMoves:
	dp MILTANK, PLAIN_FORM
	db DIZZY_PUNCH
	db REVERSAL
	db SEISMIC_TOSS
	db $ff

LarvitarEggSpeciesMoves:
	dp LARVITAR, PLAIN_FORM
	db DRAGON_DANCE
	db FOCUS_ENERGY
	db PURSUIT
	db STOMP
	db OUTRAGE
	db ANCIENTPOWER
	db IRON_HEAD
	db $ff

AzurillEggSpeciesMoves:
	dp AZURILL, PLAIN_FORM
	db BELLY_DRUM
	db FORESIGHT
	db FUTURE_SIGHT
	db PERISH_SONG
	db SUPERSONIC
	db LIGHT_SCREEN
	db AMNESIA
	db CALM_MIND
	db $ff

BonslyEggSpeciesMoves:
	dp BONSLY, PLAIN_FORM
	db DEFENSE_CURL
	db EXPLOSION
	db $ff

MimeJrEggSpeciesMoves:
	dp MIME_JR_, PLAIN_FORM
	db CONFUSE_RAY
	db FUTURE_SIGHT
	db HYPNOSIS
	db NASTY_PLOT
	db TRICK
	db $ff

MantykeEggSpeciesMoves:
	dp MANTYKE, PLAIN_FORM
	db HAZE
	db MIRROR_COAT
	db SPLASH
	db HYDRO_PUMP
	db GUNK_SHOT
	db $ff

MunchlaxEggSpeciesMoves:
	dp MUNCHLAX, PLAIN_FORM
	db CHARM
	db COUNTER
	db CURSE
	db DOUBLE_EDGE
	db LICK
	db GUNK_SHOT
	db $ff

SnivyEggSpeciesMoves:
	dp SNIVY, PLAIN_FORM
	db IRON_TAIL
	db MEAN_LOOK
	db MIRROR_COAT
	db PURSUIT
	db $ff

TepigEggSpeciesMoves:
	dp TEPIG, PLAIN_FORM
	db BODY_SLAM
	db CURSE
	db MAGNITUDE
	db SUCKER_PUNCH
	db $ff

OshawottEggSpeciesMoves:
	dp OSHAWOTT, PLAIN_FORM
	db AIR_SLASH
	db NIGHT_SLASH
	db SCREECH
	db $ff

PatratEggSpeciesMoves:
	dp PATRAT, PLAIN_FORM
	;db FLAIL
	db FORESIGHT
	db IRON_TAIL
	db PURSUIT
	db SCREECH
	db $ff

LillipupEggSpeciesMoves:
	dp LILLIPUP, PLAIN_FORM
	db CHARM
	db ENDURE
	;db FIRE_FANG
	;db ICE_FANG
	db LICK
	db MUD_SLAP
	db PURSUIT
	;db THUNDER_FANG
	db $ff

PurrloinEggSpeciesMoves:
	dp PURRLOIN, PLAIN_FORM
	db CHARM
	db ENCORE
	db FEINT_ATTACK
	db $ff

MunnaEggSpeciesMoves:
	dp MUNNA, PLAIN_FORM
	db BARRIER
	db CURSE
	db SONIC_BOOM
	db SWIFT
	db $ff

PidoveEggSpeciesMoves:
	dp PIDOVE, NO_FORM
	db HYPNOSIS
	db NIGHT_SLASH
	db STEEL_WING
	db $ff

BlitzleEggSpeciesMoves:
	dp BLITZLE, PLAIN_FORM
	db DOUBLE_EDGE
	db DOUBLE_KICK
	db ENDURE
	db MUD_SLAP
	db SCREECH
	;db SHOCK_WAVE
	db TAKE_DOWN
	db $ff

RoggenrolaEggSpeciesMoves:
	dp ROGGENROLA, PLAIN_FORM
	db CURSE
	;db LOCK_ON
	db MAGNITUDE
	;db ROCK_TOMB
	db TAKE_DOWN
	db $ff

WoobatEggSpeciesMoves:
	dp WOOBAT, PLAIN_FORM
	db CHARM
	db SUPERSONIC
	db $ff

DrilburEggSpeciesMoves:
	dp DRILBUR, PLAIN_FORM
	db EARTH_POWER
	db BARRIER ; Iron Defense
	db $ff

AudinoEggSpeciesMoves:
	dp AUDINO, PLAIN_FORM
	db AMNESIA
	db DRAINING_KISS
	db ENCORE
	db SWEET_KISS
	db $ff

TimburrEggSpeciesMoves:
	dp TIMBURR, PLAIN_FORM
	db COUNTER
	db DRAIN_PUNCH
	db ENDURE
	db FORESIGHT
	db MACH_PUNCH
	db REVERSAL
	db $ff

TympoleEggSpeciesMoves:
	dp TYMPOLE, PLAIN_FORM
	db EARTH_POWER
	;db MIST
	db WATER_PULSE
	db $ff

ThrohEggSpeciesMoves:
	dp THROH, PLAIN_FORM
	db $ff

SawkEggSpeciesMoves:
	dp SAWK, PLAIN_FORM
	db $ff

SewaddleEggSpeciesMoves:
	dp SEWADDLE, PLAIN_FORM
	db AGILITY
	db AIR_SLASH
	;db LOCK_ON
	db SCREECH
	db $ff

VenipedeEggSpeciesMoves:
	dp VENIPEDE, PLAIN_FORM
	db PIN_MISSILE
	db TAKE_DOWN
	db $ff

CottoneeEggSpeciesMoves:
	dp COTTONEE, PLAIN_FORM
	db ENCORE
	db SING
	db $ff

PetililEggSpeciesMoves:
	dp PETILIL, PLAIN_FORM
	db CHARM
	db ENCORE
	db ENDURE
	;db SWEET_SCENT
	db $ff

BasculinEggSpeciesMoves:
	dp BASCULIN, NO_FORM
	db AGILITY
	db BUBBLE_BEAM
	;db MUD_SHOT
	db SWIFT
	db $ff

SandileEggSpeciesMoves:
	dp SANDILE, PLAIN_FORM
	db COUNTER
	db DOUBLE_EDGE
	;db FIRE_FANG
	db FOCUS_ENERGY
	db MEAN_LOOK
	db PURSUIT
	;db THUNDER_FANG
	db $ff

DarumakaPlainEggSpeciesMoves:
	dp DARUMAKA, PLAIN_FORM
	db ENCORE
	db ENDURE
	db EXTRASENSORY
	;db FLAME_WHEEL
	db FOCUS_ENERGY
	;db HAMMER_ARM
	db TAKE_DOWN
	db $ff

MaractusEggSpeciesMoves:
	dp MARACTUS, PLAIN_FORM
	db LEECH_SEED
	db SEED_BOMB
	;db WOOD_HAMMER
	db $ff

DwebbleEggSpeciesMoves:
	dp DWEBBLE, PLAIN_FORM
	db COUNTER
	db CURSE
	db ENDURE
	db BARRIER
	db NIGHT_SLASH
	db $ff

ScraggyEggSpeciesMoves:
	dp SCRAGGY, PLAIN_FORM
	db AMNESIA
	db COUNTER
	db DRAGON_DANCE
	db DRAIN_PUNCH
	db FEINT_ATTACK
	db FIRE_PUNCH
	db ICE_PUNCH
	db THUNDERPUNCH
	db ZEN_HEADBUTT
	db $ff

SigilyphEggSpeciesMoves:
	dp SIGILYPH, PLAIN_FORM
	db ANCIENTPOWER
	db STEEL_WING
	db $ff

YamaskPlainEggSpeciesMoves:
	dp YAMASK, PLAIN_FORM
	db DISABLE
	db ENDURE
	db NASTY_PLOT
	db $ff

TirtougaEggSpeciesMoves:
	dp TIRTOUGA, PLAIN_FORM
	db BODY_SLAM
	;db FLAIL
	db BARRIER
	db ROCK_THROW
	db WATER_PULSE
	db $ff

ArchenEggSpeciesMoves:
	dp ARCHEN, PLAIN_FORM
	db BITE
	db DRAGON_PULSE
	db EARTH_POWER
	db STEEL_WING
	db $ff

TrubbishEggSpeciesMoves:
	dp TRUBBISH, PLAIN_FORM
	db CURSE
	db HAZE
	db ROLLOUT
	;db SAND_ATTACK
	;db SELFDESTRUCT
	db $ff

ZoruaPlainEggSpeciesMoves:
	dp ZORUA, PLAIN_FORM
	db COUNTER
	db DARK_PULSE
	db EXTRASENSORY
	db SUCKER_PUNCH
	db $ff

GothitaEggSpeciesMoves:
	dp GOTHITA, PLAIN_FORM
	db DARK_PULSE
	db MEAN_LOOK
	db MIRROR_COAT
	db $ff

SolosisEggSpeciesMoves:
	dp SOLOSIS, PLAIN_FORM
	;db ACID_ARMOR
	db CONFUSE_RAY
	db NIGHT_SHADE
	db $ff

DucklettEggSpeciesMoves:
	dp DUCKLETT, PLAIN_FORM
	;db AIR_CUTTER
	db AQUA_JET
	db GUST
	db STEEL_WING
	db $ff

VanilliteEggSpeciesMoves:
	dp VANILLITE, PLAIN_FORM
	db ICE_SHARD
	;db IRON_DEFENSE
	;db POWDER_SNOW
	db WATER_PULSE
	db $ff

NoEggSpeciesMoves:
	db $ff
