; pokemon ids
; indexes for (only species):
; - PokemonNames (see data/pokemon/names.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - ValidPokemonLevels (see data/pokemon/valid_levels.asm)
; indexes for (species + non-cosmetic variants):
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggSpeciesMovesPointers (see data/pokemon/egg_move_pointers.asm)
; - EvolutionMoves (see data/pokemon/evolution_moves.asm)
; - PokemonBodyData (see data/pokemon/body_data.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - FootprintPointers (see data/pokemon/footprint_pointers.asm)
; indexes for (species + all variants):
; - MiniIconPointers (see data/pokemon/mini_icon_pointers.asm)
; - OverworldMonIconColors (see data/pokemon/overworld_icon_pals.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPicSizes (see data/pokemon/pic_sizes.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/extra_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
	const_def 1
	const RATTATA    ; 01
	const RATICATE   ; 02
	const PIKACHU    ; 03
	const RAICHU     ; 04
	const SANDSHREW  ; 05
	const SANDSLASH  ; 06
	const NIDORAN_F  ; 07
	const NIDORINA   ; 08
	const NIDOQUEEN  ; 09
	const NIDORAN_M  ; 0a
	const NIDORINO   ; 0b
	const NIDOKING   ; 0c
	const CLEFAIRY   ; 0d
	const CLEFABLE   ; 0e
	const VULPIX     ; 0f
	const NINETALES  ; 10
	const JIGGLYPUFF ; 11
	const WIGGLYTUFF ; 12
	const ZUBAT      ; 13
	const GOLBAT     ; 14
	const PARAS      ; 15
	const PARASECT   ; 16
	const MEOWTH     ; 17
	const PERSIAN    ; 18
	const PSYDUCK    ; 19
	const GOLDUCK    ; 1a
	const MANKEY     ; 1b
	const PRIMEAPE   ; 1c
	const GROWLITHE  ; 1d
	const ARCANINE   ; 1e
	const POLIWAG    ; 1f
	const POLIWHIRL  ; 20
	const POLIWRATH  ; 21
	const GEODUDE    ; 22
	const GRAVELER   ; 23
	const GOLEM      ; 24
	const PONYTA     ; 25
	const RAPIDASH   ; 26
	const SLOWPOKE   ; 27
	const SLOWBRO    ; 28
	const MAGNEMITE  ; 29
	const MAGNETON   ; 2a
	const SEEL       ; 2b
	const DEWGONG    ; 2c
	const GRIMER     ; 2d
	const MUK        ; 2e
	const GASTLY     ; 2f
	const HAUNTER    ; 30
	const GENGAR     ; 31
	const ONIX       ; 32
	const EXEGGCUTE  ; 33
	const EXEGGUTOR  ; 34
	const LICKITUNG  ; 35
	const KOFFING    ; 36
	const WEEZING    ; 37
	const TANGELA    ; 38
	const KANGASKHAN ; 39
	const HORSEA     ; 3a
	const SEADRA     ; 3b
	const STARYU     ; 3c
	const STARMIE    ; 3d
	const MR__MIME   ; 3e
	const SCYTHER    ; 3f
	const ELECTABUZZ ; 40
	const MAGMAR     ; 41
	const PINSIR     ; 42
	const LAPRAS     ; 43
	const DITTO      ; 44
	const EEVEE      ; 45
	const VAPOREON   ; 46
	const JOLTEON    ; 47
	const FLAREON    ; 48
	const SNORLAX    ; 49
	const DRATINI    ; 4a
	const DRAGONAIR  ; 4b
	const DRAGONITE  ; 4c
DEF NUM_KANTO_POKEMON EQU const_value - 1
	const CROBAT     ; 4d
	const CHINCHOU   ; 4e
	const LANTURN    ; 4f
	const PICHU      ; 50
	const CLEFFA     ; 51
	const IGGLYBUFF  ; 52
	const TOGEPI     ; 53
	const TOGETIC    ; 54
	const MAREEP     ; 55
	const FLAAFFY    ; 56
	const AMPHAROS   ; 57
	const MARILL     ; 58
	const AZUMARILL  ; 59
	const SUDOWOODO  ; 5a
	const POLITOED   ; 5b
	const SUNKERN    ; 5c
	const SUNFLORA   ; 5d
	const YANMA      ; 5e
	const ESPEON     ; 5f
	const UMBREON    ; 60
	const MURKROW    ; 61
	const SLOWKING   ; 62
	const MISDREAVUS ; 63
	const DUNSPARCE  ; 64
	const GLIGAR     ; 65
	const STEELIX    ; 66
	const SNUBBULL   ; 67
	const GRANBULL   ; 68
	const SCIZOR     ; 69
	const SHUCKLE    ; 6a
	const HERACROSS  ; 6b
	const SNEASEL    ; 6c
	const SWINUB     ; 6d
	const PILOSWINE  ; 6e
	const CORSOLA    ; 6f
	const REMORAID   ; 70
	const OCTILLERY  ; 71
	const DELIBIRD   ; 72
	const MANTINE    ; 73
	const SKARMORY   ; 74
	const HOUNDOUR   ; 75
	const HOUNDOOM   ; 76
	const KINGDRA    ; 77
	const ELEKID     ; 78
	const MAGBY      ; 79
	const LARVITAR   ; 7a
	const PUPITAR    ; 7b
	const TYRANITAR  ; 7c
DEF NUM_JOHTO_POKEMON EQU const_value - 1
	const LOTAD      ; 7d
	const LOMBRE     ; 7e
	const LUDICOLO   ; 7f
	const SEEDOT     ; 80
	const NUZLEAF    ; 81
	const SHIFTRY    ; 82
	const WINGULL    ; 83
	const PELIPPER   ; 84
	const RALTS      ; 85
	const KIRLIA     ; 86
	const GARDEVOIR  ; 87
	const SHROOMISH  ; 88
	const BRELOOM    ; 89
	const SLAKOTH    ; 8a
	const VIGOROTH   ; 8b
	const SLAKING    ; 8c
	const AZURILL    ; 8d
	const NOSEPASS   ; 8e
	const SKITTY     ; 8f
	const DELCATTY   ; 90
	const SABLEYE    ; 91
	const MAWILE     ; 92
	const ARON       ; 93
	const LAIRON     ; 94
	const AGGRON     ; 95
	const MEDITITE   ; 96
	const MEDICHAM   ; 97
	const ROSELIA    ; 98
	const WAILMER    ; 99
	const WAILORD    ; 9a
	const NUMEL      ; 9b
	const CAMERUPT   ; 9c
	const TORKOAL    ; 9d
	const SPOINK     ; 9e
	const GRUMPIG    ; 9f
	const TRAPINCH   ; a0
	const VIBRAVA    ; a1
	const FLYGON     ; a2
	const SWABLU     ; a3
	const ALTARIA    ; a4
	const ZANGOOSE   ; a5
	const SEVIPER    ; a6
	const LUNATONE   ; a7
	const SOLROCK    ; a8
	const CORPHISH   ; a9
	const CRAWDAUNT  ; aa
	const BALTOY     ; ab
	const CLAYDOL    ; ac
	const CASTFORM   ; ad
	const SHUPPET    ; ae
	const BANETTE    ; af
	const TROPIUS    ; b0
	const ABSOL      ; b1
	const SNORUNT    ; b2
	const GLALIE     ; b3
	const SPHEAL     ; b4
	const SEALEO     ; b5
	const WALREIN    ; b6
	const BAGON      ; b7
	const SHELGON    ; b8
	const SALAMENCE  ; b9
	const BELDUM     ; ba
	const METANG     ; bb
	const METAGROSS  ; bc
	const STARLY     ; bd
	const STARAVIA   ; be
	const STARAPTOR  ; bf
	const SHINX      ; c0
	const LUXIO      ; c1
	const LUXRAY     ; c2
	const BUDEW      ; c3
	const ROSERADE   ; c4
	const COMBEE     ; c5
	const VESPIQUEN  ; c6
	const BUIZEL     ; c7
	const FLOATZEL   ; c8
	const DRIFLOON   ; c9
	const DRIFBLIM   ; ca
	const BUNEARY    ; cb
	const LOPUNNY    ; cc
	const MISMAGIUS  ; cd
	const HONCHKROW  ; ce
	const BRONZOR    ; cf
	const BRONZONG   ; d0
	const BONSLY     ; d1
	const MIME_JR_   ; d2
	const SPIRITOMB  ; d3
	const GIBLE      ; d4
	const GABITE     ; d5
	const GARCHOMP   ; d6
	const MUNCHLAX   ; d7
	const RIOLU      ; d8
	const LUCARIO    ; d9
	const SKORUPI    ; da
	const DRAPION    ; db
	const CROAGUNK   ; dc
	const TOXICROAK  ; dd
	const CARNIVINE  ; de
	const MANTYKE    ; df
	const SNOVER     ; e0
	const ABOMASNOW  ; e1
	const WEAVILE    ; e2
	const MAGNEZONE  ; e3
	const LICKILICKY ; e4
	const TANGROWTH  ; e5
	const ELECTIVIRE ; e6
	const MAGMORTAR  ; e7
	const TOGEKISS   ; e8
	const YANMEGA    ; e9
	const LEAFEON    ; ea
	const GLACEON    ; eb
	const GLISCOR    ; ec
	const MAMOSWINE  ; ed
	const GALLADE    ; ee
	const PROBOPASS  ; ef
	const FROSLASS   ; f0
	const VICTINI    ; f1
	const SNIVY      ; f2
	const SERVINE    ; f3
	const SERPERIOR  ; f4
	const TEPIG      ; f5
	const PIGNITE    ; f6
	const EMBOAR     ; f7
	const OSHAWOTT   ; f8
	const DEWOTT     ; f9
	const SAMUROTT   ; fa
	const PATRAT     ; fb
	const WATCHOG    ; fc
	const LILLIPUP   ; fd
	const HERDIER    ; fe
	const EGG        ; ff
	const_skip       ; 100 is unused
	const STOUTLAND  ; 101
	const PURRLOIN   ; 102
	const LIEPARD    ; 103
	const PANSAGE    ; 104
	const SIMISAGE   ; 105
	const PANSEAR    ; 106
	const SIMISEAR   ; 107
	const PANPOUR    ; 108
	const SIMIPOUR   ; 109
	const MUNNA      ; 10a
	const MUSHARNA   ; 10b
	const PIDOVE     ; 10c
	const TRANQUILL  ; 10d
	const UNFEZANT   ; 10e
	const BLITZLE    ; 10f
	const ZEBSTRIKA  ; 110
	const ROGGENROLA ; 111
	const BOLDORE    ; 112
	const GIGALITH   ; 113
	const WOOBAT     ; 114
	const SWOOBAT    ; 115
	const DRILBUR    ; 116
	const EXCADRILL  ; 117
	const AUDINO     ; 118
	const TIMBURR    ; 119
	const GURDURR    ; 11a
	const CONKELDURR ; 11b
	const TYMPOLE    ; 11c
	const PALPITOAD  ; 11d
	const SEISMITOAD ; 11e
	const THROH      ; 11f
	const SAWK       ; 120
	const SEWADDLE   ; 121
	const SWADLOON   ; 122
	const LEAVANNY   ; 123
	const VENIPEDE   ; 124
	const WHIRLIPEDE ; 125
	const SCOLIPEDE  ; 126
	const COTTONEE   ; 127
	const WHIMSICOTT ; 128
	const PETILIL    ; 129
	const LILLIGANT  ; 12a
	const BASCULIN   ; 12b
	const SANDILE    ; 12c
	const KROKOROK   ; 12d
	const KROOKODILE ; 12e
	const DARUMAKA   ; 12f
	const DARMANITAN ; 130
	const MARACTUS   ; 131
	const DWEBBLE    ; 132
	const CRUSTLE    ; 133
	const SCRAGGY    ; 134
	const SCRAFTY    ; 135
	const SIGILYPH   ; 136
	const YAMASK     ; 137
	const COFAGRIGUS ; 138
	const TIRTOUGA   ; 139
	const CARRACOSTA ; 13a
	const ARCHEN     ; 13b
	const ARCHEOPS   ; 13c
	const TRUBBISH   ; 13d
	const GARBODOR   ; 13e
	const ZORUA      ; 13f
	const ZOROARK    ; 140
	const MINCCINO   ; 141
	const CINCCINO   ; 142
	const GOTHITA    ; 143
	const GOTHORITA  ; 144
	const GOTHITELLE ; 145
	const SOLOSIS    ; 146
	const DUOSION    ; 147
	const REUNICLUS  ; 148
	const DUCKLETT   ; 149
	const SWANNA     ; 14a
	const VANILLITE  ; 14b
	const VANILLISH  ; 14c
	const VANILLUXE  ; 14d
	const DEERLING   ; 14e
	const SAWSBUCK   ; 14f
	const EMOLGA     ; 150
	const KARRABLAST ; 151
	const ESCAVALIER ; 152
	const FOONGUS    ; 153
	const AMOONGUSS  ; 154
	const FRILLISH   ; 155
	const JELLICENT  ; 156
	const ALOMOMOLA  ; 157
	const JOLTIK     ; 158
	const GALVANTULA ; 159
	const FERROSEED  ; 15a
	const FERROTHORN ; 15b
	const KLINK      ; 15c
	const KLANG      ; 15d
	const KLINKLANG  ; 15e
	const TYNAMO     ; 15f
	const EELEKTRIK  ; 160
	const EELEKTROSS ; 161
	const ELGYEM     ; 162
	const BEHEEYEM   ; 163
	const LITWICK    ; 164
	const LAMPENT    ; 165
	const CHANDELURE ; 166
	const AXEW       ; 167
	const FRAXURE    ; 168
	const HAXORUS    ; 169
	const CUBCHOO    ; 16a
	const BEARTIC    ; 16b
	const CRYOGONAL  ; 16c
	const SHELMET    ; 16d
	const ACCELGOR   ; 16e
	const STUNFISK   ; 16f
	const MIENFOO    ; 170
	const MIENSHAO   ; 171
	const DRUDDIGON  ; 172
	const GOLETT     ; 173
	const GOLURK     ; 174
	const PAWNIARD   ; 175
	const BISHARP    ; 176
	const BOUFFALANT ; 177
	const RUFFLET    ; 178
	const BRAVIARY   ; 179
	const VULLABY    ; 17a
	const MANDIBUZZ  ; 17b
	const HEATMOR    ; 17c
	const DURANT     ; 17d
	const DEINO      ; 17e
	const ZWEILOUS   ; 17f
	const HYDREIGON  ; 180
	const LARVESTA   ; 181
	const VOLCARONA  ; 182
	const COBALION   ; 183
	const TERRAKION  ; 184
	const VIRIZION   ; 185
	const TORNADUS   ; 186
	const THUNDURUS  ; 187
	const RESHIRAM   ; 188
	const ZEKROM     ; 189
	const LANDORUS   ; 18a
	const KYUREM     ; 18b
	const KELDEO     ; 18c
	const MELOETTA   ; 18d
	const GENESECT   ; 18e
	const SYLVEON    ; 18f
	const PERRSERKER ; 190
	const CURSOLA    ; 191
	const MR__RIME   ; 192
	const RUNERIGUS  ; 193
	const KLEAVOR    ; 194
	const SNEASLER   ; 196
	const ENAMORUS   ; 197
	const ANNIHILAPE ; 198
	const DUDUNSPARCE ; 199
DEF NUM_SPECIES EQU const_value - 1 ; 19a
DEF NUM_POKEMON EQU NUM_SPECIES - (2 * HIGH(NUM_SPECIES)) ; 198

DEF CANCEL EQU -1

; form values
; related to:
; - CosmeticSpeciesAndFormTable (see data/pokemon/variant_forms.asm)
; - ValidVariantRanges (see data/pokemon/valid_variants.asm)

MACRO ext_const_def
	if _NARG >= 1
		def ext_const_value = \1
	else
		def ext_const_value = 0
	endc
	if _NARG >= 2
		DEF \2 EQU ext_const_value
		redef ext_const_value += const_inc
	endc
ENDM

MACRO ext_const
	const_skip
	DEF \1 EQU ext_const_value
	redef ext_const_value += const_inc
ENDM

DEF NO_FORM EQU 0
DEF PLAIN_FORM EQU 1

DEF FIRST_COSMETIC_FORM_MON EQU const_value ; 19b

; pikachu
	ext_const_def 2
	ext_const PIKACHU_FLY_FORM    ; 19b (2)
	ext_const PIKACHU_SURF_FORM   ; 19c (3)
	ext_const PIKACHU_RED_FORM    ; 19d (4)
	ext_const PIKACHU_YELLOW_FORM ; 19e (5)
	ext_const PIKACHU_SPARK_FORM  ; 19f (6)
DEF NUM_PIKACHU EQU ext_const_value - 1

; pichu
	ext_const_def 2
	ext_const PICHU_SPIKY_EARED_FORM ; 1a0 (2)

DEF NUM_COSMETIC_FORMS EQU const_value - FIRST_COSMETIC_FORM_MON ; 6

DEF FIRST_VARIANT_FORM_MON EQU const_value ; 1a1

; dudunsparce
	ext_const_def 1, DUDUNSPARCE_TWO_SEGMENT_FORM ;     (1)
	ext_const DUDUNSPARCE_THREE_SEGMENT_FORM      ; 1a1 (2)

; alolan forms
DEF ALOLAN_FORM EQU 2
	const_skip ; 1a2 rattata
	const_skip ; 1a3 raticate
	const_skip ; 1a4 raichu
	const_skip ; 1a5 sandshrew
	const_skip ; 1a6 sandslash
	const_skip ; 1a7 vulpix
	const_skip ; 1a8 ninetales
	const_skip ; 1a9 meowth
	const_skip ; 1aa persian
	const_skip ; 1ab geodude
	const_skip ; 1ac graveler
	const_skip ; 1ad golem
	const_skip ; 1ae grimer
	const_skip ; 1af muk
	const_skip ; 1b0 exeggutor

; galarian forms
DEF GALARIAN_FORM EQU 3
	const_skip ; 1b1 meowth
	const_skip ; 1b2 ponyta
	const_skip ; 1b3 rapidash
	const_skip ; 1b4 slowpoke
	const_skip ; 1b5 slowbro
	const_skip ; 1b6 weezing
	const_skip ; 1b7 mr. mime
	const_skip ; 1b8 slowking
	const_skip ; 1b9 corsola
	const_skip ; 1ba darumaka
	const_skip ; 1bb darmanitan
	const_skip ; 1bc yamask

; hisuian forms
DEF HISUIAN_FORM EQU 4
	const_skip ; 17e growlithe
	const_skip ; 17f arcanine
	const_skip ; 184 sneasel

; paldean forms
DEF PALDEAN_FORM EQU 5
	
; castform
	ext_const_def 2
	ext_const CASTFORM_SUN_FORM  ; 15d (2)
	ext_const CASTFORM_RAIN_FORM ; 15d (3)
	ext_const CASTFORM_HAIL_FORM ; 15d (4)

; combee
	ext_const_def 1, COMBEE_FEMALE_FORM ; (1)
	ext_const COMBEE_MALE_FORM      ; 13f (2)

; unfezant
	ext_const_def 1, UNFEZANT_MALE_FORM ; (1)
	ext_const UNFEZANT_FEMALE_FORM      ; 13f (2)

; basculin
	ext_const_def 1, BASCULIN_WHITE_FORM ; (1)
	ext_const BASCULIN_RED_FORM          ; 13f (2)
	ext_const BASCULIN_BLUE_FORM         ; 13f (3)
	
; darmanitan
	ext_const_def 2
	ext_const DARMANITAN_ZEN_FORM ; 15d (2)
	ext_const_def 4 ; Form 3 = GALARIAN_FORM
	ext_const DARMANITAN_GALARIAN_ZEN_FORM ; 15d (4)
	
; deerling
	ext_const_def 1, DEERLING_SPRING_FORM ; (1)
	ext_const DEERLING_SUMMER_FORM        ; 13f (2)
	ext_const DEERLING_AUTUMN_FORM        ; 13f (3)
	ext_const DEERLING_WINTER_FORM        ; 13f (4)
DEF NUM_DEERLING EQU ext_const_value - 1  ; 4
	
; sawsbuck
	ext_const_def 1, SAWSBUCK_SPRING_FORM ; (1)
	ext_const SAWSBUCK_SUMMER_FORM        ; 13f (2)
	ext_const SAWSBUCK_AUTUMN_FORM        ; 13f (3)
	ext_const SAWSBUCK_WINTER_FORM        ; 13f (4)
DEF NUM_SAWSBUCK EQU ext_const_value - 1  ; 4

; frillish
	ext_const_def 1, FRILLISH_MALE_FORM ; (1)
	ext_const FRILLISH_FEMALE_FORM      ; 13f (2)

; jellicent
	ext_const_def 1, JELLICENT_MALE_FORM ; (1)
	ext_const JELLICENT_FEMALE_FORM      ; 13f (2)
	
; tornadus
	ext_const_def 2
	ext_const TORNADUS_THERIAN_FORM ; 15d (2)
	
; thundurus
	ext_const_def 2
	ext_const THUNDURUS_THERIAN_FORM ; 15d (2)
	
; landorus
	ext_const_def 2
	ext_const LANDORUS_THERIAN_FORM ; 15d (2)
	
; kyurem
	ext_const_def 2
	ext_const KYUREM_WHITE_FORM ; 15d (2)
	ext_const KYUREM_BLACK_FORM ; 15d (3)
	
; meloetta
	ext_const_def 1, MELOETTA_ARIA_FORM ; (1)
	ext_const MELOETTA_PIROUETTE_FORM   ; 13f (2)
	
; enamorus
	ext_const_def 2
	ext_const ENAMORUS_THERIAN_FORM ; 15d (2)

DEF NUM_VARIANT_FORMS EQU const_value - FIRST_VARIANT_FORM_MON ; 2e

; these constants include EGG and a dummy entry as species
DEF NUM_UNIQUE_POKEMON EQU const_value - 1 ; 189
DEF NUM_EXT_POKEMON EQU NUM_UNIQUE_POKEMON - NUM_COSMETIC_FORMS ; 150

; padding for wDexMons
; NUM_POKEMON_PADDED % DEXLIST_WIDTH == 0
DEF NUM_POKEMON_PADDED EQU NUM_POKEMON
if FMOD(NUM_POKEMON, DEXLIST_WIDTH)
	REDEF NUM_POKEMON_PADDED EQU NUM_POKEMON + DEXLIST_WIDTH - FMOD(NUM_POKEMON, DEXLIST_WIDTH)
endc