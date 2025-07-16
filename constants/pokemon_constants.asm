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
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
	const_def 1
	const BULBASAUR  ; xx
	const IVYSAUR    ; xx
	const VENUSAUR   ; xx
	const CHARMANDER ; xx
	const CHARMELEON ; xx
	const CHARIZARD  ; xx
	const SQUIRTLE   ; xx
	const WARTORTLE  ; xx
	const BLASTOISE  ; xx
	const RATTATA    ; 01
	const RATICATE   ; 02
	const EKANS      ; xx
	const ARBOK      ; xx
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
	const DIGLETT    ; xx
	const DUGTRIO    ; xx
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
	const FARFETCH_D ; xx
	const SEEL       ; 2b
	const DEWGONG    ; 2c
	const GRIMER     ; 2d
	const MUK        ; 2e
	const GASTLY     ; 2f
	const HAUNTER    ; 30
	const GENGAR     ; 31
	const ONIX       ; 32
	const VOLTORB    ; xx
	const ELECTRODE  ; xx
	const EXEGGCUTE  ; 33
	const EXEGGUTOR  ; 34
	const CUBONE     ; xx
	const MAROWAK    ; xx
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
	const TAUROS     ; xx
	const MAGIKARP   ; xx
	const GYARADOS   ; xx
	const LAPRAS     ; 43
	const DITTO      ; 44
	const EEVEE      ; 45
	const VAPOREON   ; 46
	const JOLTEON    ; 47
	const FLAREON    ; 48
	const PORYGON    ; xx
	const OMANYTE    ; xx
	const OMASTAR    ; xx
	const KABUTO     ; xx
	const KABUTOPS   ; xx
	const AERODACTYL ; xx
	const SNORLAX    ; 49
	const ARTICUNO   ; xx
	const ZAPDOS     ; xx
	const MOLTRES    ; xx
	const DRATINI    ; 4a
	const DRAGONAIR  ; 4b
	const DRAGONITE  ; 4c
	const MEWTWO     ; xx
	const MEW        ; xx
	const CHIKORITA  ; xx
	const BAYLEEF    ; xx
	const MEGANIUM   ; xx
	const CYNDAQUIL  ; xx
	const QUILAVA    ; xx
	const TYPHLOSION ; xx
	const TOTODILE   ; xx
	const CROCONAW   ; xx
	const FERALIGATR ; xx
	const SENTRET    ; xx
	const FURRET     ; xx
	const HOOTHOOT   ; xx
	const NOCTOWL    ; xx
	const LEDYBA     ; xx
	const LEDIAN     ; xx
	const SPINARAK   ; xx
	const ARIADOS    ; xx
	const CROBAT     ; 4d
	const CHINCHOU   ; 4e
	const LANTURN    ; 4f
	const PICHU      ; 50
	const CLEFFA     ; 51
	const IGGLYBUFF  ; 52
	const TOGEPI     ; 53
	const TOGETIC    ; 54
	const NATU       ; xx
	const XATU       ; xx
	const MAREEP     ; 55
	const FLAAFFY    ; 56
	const AMPHAROS   ; 57
	const MARILL     ; 58
	const AZUMARILL  ; 59
	const SUDOWOODO  ; 5a
	const POLITOED   ; 5b
	const HOPPIP     ; xx
	const SKIPLOOM   ; xx
	const JUMPLUFF   ; xx
	const AIPOM      ; xx
	const SUNKERN    ; 5c
	const SUNFLORA   ; 5d
	const YANMA      ; 5e
	const WOOPER     ; xx
	const QUAGSIRE   ; xx
	const ESPEON     ; 5f
	const UMBREON    ; 60
	const MURKROW    ; 61
	const SLOWKING   ; 62
	const MISDREAVUS ; 63
	const UNOWN      ; xx
	const WOBBUFFET  ; xx
	const GIRAFARIG  ; xx
	const PINECO     ; xx
	const FORRETRESS ; xx
	const DUNSPARCE  ; 64
	const GLIGAR     ; 65
	const STEELIX    ; 66
	const SNUBBULL   ; 67
	const GRANBULL   ; 68
	const QWILFISH   ; xx
	const SCIZOR     ; 69
	const SHUCKLE    ; 6a
	const HERACROSS  ; 6b
	const SNEASEL    ; 6c
	const TEDDIURSA  ; xx
	const URSARING   ; xx
	const SLUGMA     ; xx
	const MAGCARGO   ; xx
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
	const PHANPY     ; xx
	const DONPHAN    ; xx
	const PORYGON2   ; xx
	const STANTLER   ; xx
	const SMEARGLE   ; xx
	const ELEKID     ; 78
	const MAGBY      ; 79
	const MILTANK    ; xx
	const RAIKOU     ; xx
	const ENTEI      ; xx
	const SUICUNE    ; xx
	const LARVITAR   ; 7a
	const PUPITAR    ; 7b
	const TYRANITAR  ; 7c
	const LUGIA      ; xx
	const HO_OH      ; xx
	const CELEBI     ; xx
	const AZURILL    ; fc
	const WYNAUT     ; fd
	const AMBIPOM    ; fe
	const MISMAGIUS  ; 101
	const HONCHKROW  ; 102
	const BONSLY     ; 103
	const MIME_JR_   ; 104
	const MUNCHLAX   ; 106
	const MANTYKE    ; 107
	const WEAVILE    ; 108
	const MAGNEZONE  ; 109
	const LICKILICKY ; 10a
	const TANGROWTH  ; 10c
	const ELECTIVIRE ; 10d
	const MAGMORTAR  ; 10e
	const TOGEKISS   ; 10f
	const YANMEGA    ; 110
	const LEAFEON    ; 111
	const GLACEON    ; 112
	const GLISCOR    ; 113
	const MAMOSWINE  ; 114
	const PORYGON_Z  ; 115
	const SYLVEON    ; 116
	const PERRSERKER ; 117
	const CURSOLA    ; 118
	const SIRFETCH_D ; 119
	const MR__RIME   ; 11a
	const WYRDEER    ; 11b
	const KLEAVOR    ; 11c
	const URSALUNA   ; 11d
	const SNEASLER   ; 11e
	const OVERQWIL   ; 11f
	const DUDUNSPARCE ; 120
	const FARIGIRAF  ; 121
	const CLODSIRE   ; 122
	const ANNIHILAPE ; 123
	const SNIVY      ; 124
	const SERVINE    ; 125
	const SERPERIOR  ; 126
	const TEPIG      ; 127
	const PIGNITE    ; 128
	const EMBOAR     ; 129
	const OSHAWOTT   ; 127
	const DEWOTT     ; 128
	const SAMUROTT   ; 129
	const PATRAT     ; 128
	const WATCHOG    ; 129
	const LILLIPUP   ; 129
	const HERDIER    ; 128
	const STOUTLAND  ; 129
	const PURRLOIN   ; 128
	const EGG        ; ff
	const_skip       ; 100 is unused
	const LIEPARD    ; 129
	const MUNNA      ; 128
	const MUSHARNA   ; 129
	const PIDOVE     ; 129
	const TRANQUILL  ; 128
	const UNFEZANT   ; 129
	const BLITZLE    ; 128
	const ZEBSTRIKA  ; 129
	const ROGGENROLA ; 129
	const BOLDORE    ; 128
	const GIGALITH   ; 129
	const WOOBAT     ; 128
	const SWOOBAT    ; 129
	const DRILBUR    ; 128
	const EXCADRILL  ; 129
	const AUDINO     ; 129
	const TIMBURR    ; 128
	const GURDURR    ; 129
	const CONKELDURR ; 129
	const TYMPOLE    ; 128
	const PALPITOAD  ; 129
	const SEISMITOAD ; 129
	const THROH      ; 129
	const SAWK       ; 129
	const SEWADDLE   ; 128
	const SWADLOON   ; 129
	const LEAVANNY   ; 129
	const VENIPEDE   ; 128
	const WHIRLIPEDE ; 129
	const SCOLIPEDE  ; 129
	const COTTONEE   ; 129
	const WHIMSICOTT ; 129
	const PETILIL    ; 129
	const LILLIGANT  ; 129
	const BASCULIN   ; 129
	const SANDILE    ; 129
	const KROKOROK   ; 129
	const KROOKODILE ; 129
	const DARUMAKA   ; 129
	const DARMANITAN ; 129
	const MARACTUS   ; 129
DEF NUM_SPECIES EQU const_value - 1 ; 123
DEF NUM_POKEMON EQU NUM_SPECIES - (2 * HIGH(NUM_SPECIES)) ; 121

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

DEF FIRST_COSMETIC_FORM_MON EQU const_value ; 124

; unown
	ext_const_def 1, UNOWN_A_FORM    ;     (01)
	ext_const UNOWN_B_FORM           ; 124 (02)
	ext_const UNOWN_C_FORM           ; 125 (03)
	ext_const UNOWN_D_FORM           ; 126 (04)
	ext_const UNOWN_E_FORM           ; 127 (05)
	ext_const UNOWN_F_FORM           ; 128 (06)
	ext_const UNOWN_G_FORM           ; 129 (07)
	ext_const UNOWN_H_FORM           ; 12a (08)
	ext_const UNOWN_I_FORM           ; 12b (09)
	ext_const UNOWN_J_FORM           ; 12c (0a)
	ext_const UNOWN_K_FORM           ; 12d (0b)
	ext_const UNOWN_L_FORM           ; 12e (0c)
	ext_const UNOWN_M_FORM           ; 12f (0d)
	ext_const UNOWN_N_FORM           ; 130 (0e)
	ext_const UNOWN_O_FORM           ; 131 (0f)
	ext_const UNOWN_P_FORM           ; 132 (10)
	ext_const UNOWN_Q_FORM           ; 133 (11)
	ext_const UNOWN_R_FORM           ; 134 (12)
	ext_const UNOWN_S_FORM           ; 135 (13)
	ext_const UNOWN_T_FORM           ; 136 (14)
	ext_const UNOWN_U_FORM           ; 137 (15)
	ext_const UNOWN_V_FORM           ; 138 (16)
	ext_const UNOWN_W_FORM           ; 139 (17)
	ext_const UNOWN_X_FORM           ; 13a (18)
	ext_const UNOWN_Y_FORM           ; 13b (19)
	ext_const UNOWN_Z_FORM           ; 13c (1a)
	ext_const UNOWN_EXCLAMATION_FORM ; 13d (1b)
	ext_const UNOWN_QUESTION_FORM    ; 13e (1c)
DEF NUM_UNOWN EQU ext_const_value - 1

; arbok
	ext_const_def 1, ARBOK_JOHTO_FORM ; (1)
	ext_const ARBOK_KANTO_FORM    ; 13f (2)
	ext_const ARBOK_KOGA_FORM     ; 140 (3)
	ext_const ARBOK_AGATHA_FORM   ; 141 (4)
	ext_const ARBOK_ARIANA_FORM   ; 142 (5)
DEF NUM_ARBOK EQU ext_const_value - 1

; pikachu
	ext_const_def 2
	ext_const PIKACHU_FLY_FORM    ; 143 (2)
	ext_const PIKACHU_SURF_FORM   ; 144 (3)
	ext_const PIKACHU_RED_FORM    ; 145 (4)
	ext_const PIKACHU_YELLOW_FORM ; 146 (5)
	ext_const PIKACHU_SPARK_FORM  ; 147 (6)
DEF NUM_PIKACHU EQU ext_const_value - 1

; pichu
	ext_const_def 2
	ext_const PICHU_SPIKY_EARED_FORM ; 148 (2)

; magikarp
	ext_const_def 2
	ext_const MAGIKARP_SKELLY_FORM    ; 149 (02)
	ext_const MAGIKARP_CALICO1_FORM   ; 14a (03)
	ext_const MAGIKARP_CALICO2_FORM   ; 14b (04)
	ext_const MAGIKARP_CALICO3_FORM   ; 14c (05)
	ext_const MAGIKARP_TWO_TONE_FORM  ; 14d (06)
	ext_const MAGIKARP_ORCA_FORM      ; 14e (07)
	ext_const MAGIKARP_DAPPLES_FORM   ; 14f (08)
	ext_const MAGIKARP_TIGER_FORM     ; 150 (09)
	ext_const MAGIKARP_ZEBRA_FORM     ; 151 (0a)
	ext_const MAGIKARP_STRIPE_FORM    ; 152 (0b)
	ext_const MAGIKARP_BUBBLES_FORM   ; 153 (0c)
	ext_const MAGIKARP_DIAMONDS_FORM  ; 154 (0d)
	ext_const MAGIKARP_PATCHES_FORM   ; 155 (0e)
	ext_const MAGIKARP_FOREHEAD1_FORM ; 156 (0f)
	ext_const MAGIKARP_MASK1_FORM     ; 157 (10)
	ext_const MAGIKARP_FOREHEAD2_FORM ; 158 (11)
	ext_const MAGIKARP_MASK2_FORM     ; 159 (12)
	ext_const MAGIKARP_SAUCY_FORM     ; 15a (13)
	ext_const MAGIKARP_RAINDROP_FORM  ; 15b (14)
DEF NUM_MAGIKARP EQU ext_const_value - 1 ; 14

DEF NUM_COSMETIC_FORMS EQU const_value - FIRST_COSMETIC_FORM_MON ; 38

DEF FIRST_VARIANT_FORM_MON EQU const_value ; 15c

; gyarados
	ext_const_def NUM_MAGIKARP + 1
	ext_const GYARADOS_RED_FORM ; 15c (15)

; mewtwo
	ext_const_def 2
	ext_const MEWTWO_ARMORED_FORM ; 15d (2)

; dudunsparce
	ext_const_def 1, DUDUNSPARCE_TWO_SEGMENT_FORM ;     (1)
	ext_const DUDUNSPARCE_THREE_SEGMENT_FORM      ; 15e (2)

; alolan forms
DEF ALOLAN_FORM EQU 2
	const_skip ; 15f rattata
	const_skip ; 160 raticate
	const_skip ; 161 raichu
	const_skip ; 162 sandshrew
	const_skip ; 163 sandslash
	const_skip ; 164 vulpix
	const_skip ; 165 ninetales
	const_skip ; 166 diglett
	const_skip ; 167 dugtrio
	const_skip ; 168 meowth
	const_skip ; 169 persian
	const_skip ; 16a geodude
	const_skip ; 16b graveler
	const_skip ; 16c golem
	const_skip ; 16d grimer
	const_skip ; 16e muk
	const_skip ; 16f exeggutor
	const_skip ; 170 marowak

; galarian forms
DEF GALARIAN_FORM EQU 3
	const_skip ; 171 meowth
	const_skip ; 172 ponyta
	const_skip ; 173 rapidash
	const_skip ; 174 slowpoke
	const_skip ; 175 slowbro
	const_skip ; 176 farfetch'd
	const_skip ; 177 weezing
	const_skip ; 178 mr. mime
	const_skip ; 179 articuno
	const_skip ; 17a zapdos
	const_skip ; 17b moltres
	const_skip ; 17c slowking
	const_skip ; 17d corsola

; hisuian forms
DEF HISUIAN_FORM EQU 4
	const_skip ; 17e growlithe
	const_skip ; 17f arcanine
	const_skip ; 180 voltorb
	const_skip ; 181 electrode
	const_skip ; 182 typhlosion
	const_skip ; 183 qwilfish
	const_skip ; 184 sneasel

; paldean forms
DEF PALDEAN_FORM EQU 5
	const_skip ; 185 wooper
	const_skip ; 186 tauros

; tauros
	ext_const_def 2
	ext_const TAUROS_PALDEAN_FIRE_FORM  ; 187 (2)
	ext_const TAUROS_PALDEAN_WATER_FORM ; 188 (3)

; ursaluna
	ext_const_def 2
	ext_const URSALUNA_BLOODMOON_FORM ; 189 (2)

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