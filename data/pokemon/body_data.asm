MACRO body_data
	db \1 ; height
	dw \2 ; weight
	dn SHAPE_\3, BODY_COLOR_\4
ENDM

PokemonBodyData:
; entries correspond to constants/pokemon_constants.asm
	table_width BODY_DATA_SIZE
	body_data   7,   69, QUADRUPED,    GREEN  ; BULBASAUR
	body_data  10,  130, QUADRUPED,    GREEN  ; IVYSAUR
	body_data  20, 1000, QUADRUPED,    GREEN  ; VENUSAUR
	body_data   6,   85, BIPEDAL_TAIL, RED    ; CHARMANDER
	body_data  11,  190, BIPEDAL_TAIL, RED    ; CHARMELEON
	body_data  17,  905, BIPEDAL_TAIL, RED    ; CHARIZARD
	body_data   5,   90, BIPEDAL_TAIL, BLUE   ; SQUIRTLE
	body_data  10,  225, BIPEDAL_TAIL, BLUE   ; WARTORTLE
	body_data  16,  855, BIPEDAL_TAIL, BLUE   ; BLASTOISE
	body_data   3,   35, QUADRUPED,    PURPLE ; RATTATA
	body_data   7,  185, QUADRUPED,    BROWN  ; RATICATE
	body_data  20,   69, SERPENTINE,   PURPLE ; EKANS
	body_data  35,  650, SERPENTINE,   PURPLE ; ARBOK
	body_data   4,   60, QUADRUPED,    YELLOW ; PIKACHU
	body_data   8,  300, BIPEDAL_TAIL, YELLOW ; RAICHU
	body_data   6,  120, BIPEDAL_TAIL, YELLOW ; SANDSHREW
	body_data  10,  295, BIPEDAL_TAIL, YELLOW ; SANDSLASH
	body_data   4,   70, QUADRUPED,    BLUE   ; NIDORAN_F
	body_data   8,  200, QUADRUPED,    BLUE   ; NIDORINA
	body_data  13,  600, BIPEDAL_TAIL, BLUE   ; NIDOQUEEN
	body_data   5,   90, QUADRUPED,    PURPLE ; NIDORAN_M
	body_data   9,  195, QUADRUPED,    PURPLE ; NIDORINO
	body_data  14,  620, BIPEDAL_TAIL, PURPLE ; NIDOKING
	body_data   6,   75, BIPEDAL_TAIL, PINK   ; CLEFAIRY
	body_data  13,  400, BIPEDAL_TAIL, PINK   ; CLEFABLE
	body_data   6,   99, QUADRUPED,    BROWN  ; VULPIX
	body_data  11,  199, QUADRUPED,    YELLOW ; NINETALES
	body_data   5,   55, BIPEDAL,      PINK   ; JIGGLYPUFF
	body_data  10,  120, BIPEDAL,      PINK   ; WIGGLYTUFF
	body_data   8,   75, WINGS,        PURPLE ; ZUBAT
	body_data  16,  550, WINGS,        PURPLE ; GOLBAT
	body_data   3,   54, INSECTOID,    RED    ; PARAS
	body_data  10,  295, INSECTOID,    RED    ; PARASECT
	body_data   4,   42, QUADRUPED,    YELLOW ; MEOWTH
	body_data  10,  320, QUADRUPED,    YELLOW ; PERSIAN
	body_data   8,  196, BIPEDAL_TAIL, YELLOW ; PSYDUCK
	body_data  17,  766, BIPEDAL_TAIL, BLUE   ; GOLDUCK
	body_data   5,  280, BIPEDAL_TAIL, BROWN  ; MANKEY
	body_data  10,  320, BIPEDAL_TAIL, BROWN  ; PRIMEAPE
	body_data   7,  190, QUADRUPED,    BROWN  ; GROWLITHE
	body_data  19, 1550, QUADRUPED,    BROWN  ; ARCANINE
	body_data   6,  124, HEAD_LEGS,    BLUE   ; POLIWAG
	body_data  10,  200, BIPEDAL,      BLUE   ; POLIWHIRL
	body_data  13,  540, BIPEDAL,      BLUE   ; POLIWRATH
	body_data   4,  200, HEAD_ARMS,    BROWN  ; GEODUDE
	body_data  10, 1050, BIPEDAL,      BROWN  ; GRAVELER
	body_data  14, 3000, BIPEDAL,      BROWN  ; GOLEM
	body_data  10,  300, QUADRUPED,    YELLOW ; PONYTA
	body_data  17,  950, QUADRUPED,    YELLOW ; RAPIDASH
	body_data  12,  360, QUADRUPED,    PINK   ; SLOWPOKE
	body_data  16,  785, BIPEDAL_TAIL, PINK   ; SLOWBRO
	body_data   3,   60, HEAD_ARMS,    GRAY   ; MAGNEMITE
	body_data  10,  600, MULTIBODY,    GRAY   ; MAGNETON
	body_data  11,  900, FINS,         WHITE  ; SEEL
	body_data  17, 1200, FINS,         WHITE  ; DEWGONG
	body_data   9,  300, HEAD_ARMS,    PURPLE ; GRIMER
	body_data  12,  300, HEAD_ARMS,    PURPLE ; MUK
	body_data  13,    1, HEAD,         PURPLE ; GASTLY
	body_data  16,    1, HEAD_ARMS,    PURPLE ; HAUNTER
	body_data  15,  405, BIPEDAL_TAIL, PURPLE ; GENGAR
	body_data  88, 2100, SERPENTINE,   GRAY   ; ONIX
	body_data   4,   25, MULTIBODY,    PINK   ; EXEGGCUTE
	body_data  20, 1200, HEAD_LEGS,    YELLOW ; EXEGGUTOR
	body_data  12,  655, BIPEDAL_TAIL, PINK   ; LICKITUNG
	body_data   6,   10, HEAD,         PURPLE ; KOFFING
	body_data  12,   95, MULTIBODY,    PURPLE ; WEEZING
	body_data  10,  350, HEAD_LEGS,    BLUE   ; TANGELA
	body_data  22,  800, BIPEDAL_TAIL, BROWN  ; KANGASKHAN
	body_data   4,   80, HEAD_BASE,    BLUE   ; HORSEA
	body_data  12,  250, HEAD_BASE,    BLUE   ; SEADRA
	body_data   8,  345, HEAD_BASE,    BROWN  ; STARYU
	body_data  11,  800, HEAD_BASE,    PURPLE ; STARMIE
	body_data  13,  545, BIPEDAL,      PINK   ; MR__MIME
	body_data  15,  560, MULTIWINGS,   GREEN  ; SCYTHER
	body_data  11,  300, BIPEDAL_TAIL, YELLOW ; ELECTABUZZ
	body_data  13,  445, BIPEDAL_TAIL, RED    ; MAGMAR
	body_data  15,  550, BIPEDAL,      BROWN  ; PINSIR
	body_data   9,  100, FINS,         RED    ; MAGIKARP
	body_data  65, 2350, SERPENTINE,   BLUE   ; GYARADOS
	body_data  25, 2200, FINS,         BLUE   ; LAPRAS
	body_data   3,   40, HEAD,         PURPLE ; DITTO
	body_data   3,   65, QUADRUPED,    BROWN  ; EEVEE
	body_data  10,  290, QUADRUPED,    BLUE   ; VAPOREON
	body_data   8,  245, QUADRUPED,    YELLOW ; JOLTEON
	body_data   9,  250, QUADRUPED,    RED    ; FLAREON
	body_data  21, 4600, BIPEDAL,      BLACK  ; SNORLAX
	body_data  18,   33, SERPENTINE,   BLUE   ; DRATINI
	body_data  40,  165, SERPENTINE,   BLUE   ; DRAGONAIR
	body_data  22, 2100, BIPEDAL_TAIL, BROWN  ; DRAGONITE
	body_data  20, 1220, BIPEDAL_TAIL, PURPLE ; MEWTWO
	body_data   4,   40, BIPEDAL_TAIL, PINK   ; MEW
	body_data   9,   64, QUADRUPED,    GREEN  ; CHIKORITA
	body_data  12,  158, QUADRUPED,    GREEN  ; BAYLEEF
	body_data  18, 1005, QUADRUPED,    GREEN  ; MEGANIUM
	body_data   5,   79, BIPEDAL,      YELLOW ; CYNDAQUIL
	body_data   9,  190, QUADRUPED,    YELLOW ; QUILAVA
	body_data  17,  795, QUADRUPED,    YELLOW ; TYPHLOSION
	body_data   6,   95, BIPEDAL_TAIL, BLUE   ; TOTODILE
	body_data  11,  250, BIPEDAL_TAIL, BLUE   ; CROCONAW
	body_data  23,  888, BIPEDAL_TAIL, BLUE   ; FERALIGATR
	body_data  18,  750, MULTIWINGS,   PURPLE ; CROBAT
	body_data   5,  120, FINS,         BLUE   ; CHINCHOU
	body_data  12,  225, FINS,         BLUE   ; LANTURN
	body_data   3,   20, QUADRUPED,    YELLOW ; PICHU
	body_data   3,   30, BIPEDAL_TAIL, PINK   ; CLEFFA
	body_data   3,   10, BIPEDAL,      PINK   ; IGGLYBUFF
	body_data   3,   15, BIPEDAL,      WHITE  ; TOGEPI
	body_data   6,   32, BIPEDAL,      WHITE  ; TOGETIC
	body_data   6,   78, QUADRUPED,    WHITE  ; MAREEP
	body_data   8,  133, BIPEDAL_TAIL, PINK   ; FLAAFFY
	body_data  14,  615, BIPEDAL_TAIL, YELLOW ; AMPHAROS
	body_data   4,   85, BIPEDAL_TAIL, BLUE   ; MARILL
	body_data   8,  285, BIPEDAL_TAIL, BLUE   ; AZUMARILL
	body_data  12,  380, BIPEDAL,      BROWN  ; SUDOWOODO
	body_data  11,  339, BIPEDAL,      GREEN  ; POLITOED
	body_data   3,   18, HEAD,         YELLOW ; SUNKERN
	body_data   8,   85, BIPEDAL,      YELLOW ; SUNFLORA
	body_data  12,  380, MULTIWINGS,   RED    ; YANMA
	body_data   9,  265, QUADRUPED,    PURPLE ; ESPEON
	body_data  10,  270, QUADRUPED,    BLACK  ; UMBREON
	body_data   5,   21, WINGS,        BLACK  ; MURKROW
	body_data  20,  795, BIPEDAL_TAIL, PINK   ; SLOWKING
	body_data   7,   10, HEAD,         GRAY   ; MISDREAVUS
	body_data   5,   50, HEAD,         BLACK  ; UNOWN
	body_data  15,  140, SERPENTINE,   YELLOW ; DUNSPARCE
	body_data  11,  648, WINGS,        PURPLE ; GLIGAR
	body_data  92, 4000, SERPENTINE,   GRAY   ; STEELIX
	body_data   6,   78, BIPEDAL,      PINK   ; SNUBBULL
	body_data  14,  487, BIPEDAL_TAIL, PURPLE ; GRANBULL
	body_data  18, 1180, MULTIWINGS,   RED    ; SCIZOR
	body_data   6,  205, INSECTOID,    YELLOW ; SHUCKLE
	body_data  15,  540, BIPEDAL,      BLUE   ; HERACROSS
	body_data   9,  280, BIPEDAL_TAIL, BLACK  ; SNEASEL
	body_data   4,   65, QUADRUPED,    BROWN  ; SWINUB
	body_data  11,  558, QUADRUPED,    BROWN  ; PILOSWINE
	body_data   6,   50, INSECTOID,    PINK   ; CORSOLA
	body_data   6,  120, FINS,         GRAY   ; REMORAID
	body_data   9,  285, TENTACLES,    RED    ; OCTILLERY
	body_data   9,  160, WINGS,        RED    ; DELIBIRD
	body_data  21, 2200, WINGS,        PURPLE ; MANTINE
	body_data  17,  505, WINGS,        GRAY   ; SKARMORY
	body_data   6,  108, QUADRUPED,    BLACK  ; HOUNDOUR
	body_data  14,  350, QUADRUPED,    BLACK  ; HOUNDOOM
	body_data  18, 1520, HEAD_BASE,    BLUE   ; KINGDRA
	body_data   6,  235, BIPEDAL,      YELLOW ; ELEKID
	body_data   7,  214, BIPEDAL_TAIL, RED    ; MAGBY
	body_data   6,  720, BIPEDAL_TAIL, GREEN  ; LARVITAR
	body_data  12, 1520, SERPENTINE,   GRAY   ; PUPITAR
	body_data  20, 2020, BIPEDAL_TAIL, GREEN  ; TYRANITAR
	body_data  52, 2160, WINGS,        WHITE  ; LUGIA
	body_data  38, 1990, WINGS,        RED    ; HO_OH
	body_data   6,   50, BIPEDAL,      GREEN  ; CELEBI
	body_data   2,   20, HEAD_LEGS,    BLUE   ; AZURILL
	body_data   9,   44, HEAD,         PURPLE ; MISMAGIUS
	body_data   9,  273, WINGS,        BLACK  ; HONCHKROW
	body_data   5,  150, HEAD_LEGS,    BROWN  ; BONSLY
	body_data   6,  130, BIPEDAL,      PINK   ; MIME_JR_
	body_data   6, 1050, BIPEDAL,      BLACK  ; MUNCHLAX
	body_data  10,  650, WINGS,        BLUE   ; MANTYKE
	body_data  11,  340, BIPEDAL_TAIL, BLACK  ; WEAVILE
	body_data  12, 1800, HEAD_ARMS,    GRAY   ; MAGNEZONE
	body_data  17, 1400, BIPEDAL,      PINK   ; LICKILICKY
	body_data  20, 1286, BIPEDAL,      BLUE   ; TANGROWTH
	body_data  18, 1386, BIPEDAL_TAIL, YELLOW ; ELECTIVIRE
	body_data  16,  680, BIPEDAL_TAIL, RED    ; MAGMORTAR
	body_data  15,  380, WINGS,        WHITE  ; TOGEKISS
	body_data  19,  515, MULTIWINGS,   GREEN  ; YANMEGA
	body_data  10,  255, QUADRUPED,    GREEN  ; LEAFEON
	body_data   8,  259, QUADRUPED,    BLUE   ; GLACEON
	body_data  20,  425, WINGS,        PURPLE ; GLISCOR
	body_data  25, 2910, QUADRUPED,    BROWN  ; MAMOSWINE
	body_data  10,  235, QUADRUPED,    PINK   ; SYLVEON
	body_data   8,  280, BIPEDAL_TAIL, BROWN  ; PERRSERKER
	body_data  10,    4, HEAD_ARMS,    WHITE  ; CURSOLA
	body_data  15,  582, BIPEDAL,      PURPLE ; MR__RIME
	body_data  18,  890, MULTIWINGS,   BROWN  ; KLEAVOR
	body_data  13,  430, BIPEDAL_TAIL, GRAY   ; SNEASLER
	body_data  36,  392, SERPENTINE,   YELLOW ; DUDUNSPARCE
	body_data  12,  560, BIPEDAL_TAIL, GRAY   ; ANNIHILAPE
	body_data   6,   81, BIPEDAL_TAIL, GREEN  ; SNIVY
	body_data   8,  160, BIPEDAL_TAIL, GREEN  ; SERVINE
	body_data  33,  630, SERPENTINE,   GREEN  ; SERPERIOR
	body_data   5,   99, QUADRUPED,    RED    ; TEPIG
	body_data  10,  555, BIPEDAL_TAIL, RED    ; PIGNITE
	body_data  16, 1500, BIPEDAL_TAIL, RED    ; EMBOAR
	body_data   5,   59, BIPEDAL_TAIL, BLUE   ; OSHAWOTT
	body_data   8,  245, BIPEDAL_TAIL, BLUE   ; DEWOTT
	body_data  15,  946, QUADRUPED,    BLUE   ; SAMUROTT
	body_data   5,  116, QUADRUPED,    BROWN  ; PATRAT
	body_data  11,  270, BIPEDAL_TAIL, BROWN  ; WATCHOG
	body_data   4,   41, QUADRUPED,    BROWN  ; LILLIPUP
	body_data   9,  147, QUADRUPED,    GRAY   ; HERDIER
	body_data  12,  610, QUADRUPED,    GRAY   ; STOUTLAND
	body_data   4,  101, QUADRUPED,    PURPLE ; PURRLOIN
	body_data  11,  375, QUADRUPED,    PURPLE ; LIEPARD
	body_data   6,  233, QUADRUPED,    PINK   ; MUNNA
	body_data  11,  605, BIPEDAL,      PINK   ; MUSHARNA
	body_data   3,   21, WINGS,        GRAY   ; PIDOVE
	body_data   6,  150, WINGS,        GRAY   ; TRANQUILL
	body_data  12,  290, WINGS,        GRAY   ; UNFEZANT
	body_data   8,  298, QUADRUPED,    BLACK  ; BLITZLE
	body_data  16,  795, QUADRUPED,    BLACK  ; ZEBSTRIKA
	body_data   4,  180, HEAD_LEGS,    BLUE   ; ROGGENROLA
	body_data   9, 1020, TENTACLES,    BLUE   ; BOLDORE
	body_data  17, 2600, TENTACLES,    BLUE   ; GIGALITH
	body_data   4,   21, WINGS,        BLUE   ; WOOBAT
	body_data   9,  105, WINGS,        BLUE   ; SWOOBAT
	body_data   3,   85, BIPEDAL_TAIL, GRAY   ; DRILBUR
	body_data   7,  404, BIPEDAL,      GRAY   ; EXCADRILL
	body_data  11,  310, BIPEDAL_TAIL, PINK   ; AUDINO
	body_data   6,  125, BIPEDAL,      GRAY   ; TIMBURR
	body_data  12,  400, BIPEDAL,      GRAY   ; GURDURR
	body_data  14,  870, BIPEDAL,      BROWN  ; CONKELDURR
	body_data   5,   45, FINS,         BLUE   ; TYMPOLE
	body_data   8,  170, BIPEDAL_TAIL, BLUE   ; PALPITOAD
	body_data  15,  620, BIPEDAL,      BLUE   ; SEISMITOAD
	body_data  13,  555, BIPEDAL,      RED    ; THROH
	body_data  14,  510, BIPEDAL,      BLUE   ; SAWK
	body_data   3,   25, INSECTOID,    YELLOW ; SEWADDLE
	body_data   5,   73, HEAD_ARMS,    GREEN  ; SWADLOON
	body_data  12,  205, BIPEDAL,      YELLOW ; LEAVANNY
	body_data   4,   53, INSECTOID,    RED    ; VENIPEDE
	body_data  12,  585, HEAD,         GRAY   ; WHIRLIPEDE
	body_data  25, 2005, INSECTOID,    RED    ; SCOLIPEDE
	body_data   3,    6, HEAD,         GREEN  ; COTTONEE
	body_data   7,   66, BIPEDAL,      GREEN  ; WHIMSICOTT
	body_data   5,   66, HEAD_BASE,    GREEN  ; PETILIL
	body_data  11,  163, HEAD_BASE,    GREEN  ; LILLIGANT
	body_data  10,  180, FINS,         GREEN  ; BASCULIN
	body_data   7,  152, QUADRUPED,    BROWN  ; SANDILE
	body_data  10,  334, QUADRUPED,    BROWN  ; KROKOROK
	body_data  15,  963, BIPEDAL_TAIL, RED    ; KROOKODILE
	body_data   6,  375, BIPEDAL,      RED    ; DARUMAKA
	body_data  13,  929, QUADRUPED,    RED    ; DARMANITAN
	body_data  10,  280, HEAD_BASE,    GREEN  ; MARACTUS
	body_data   3,  145, INSECTOID,    RED    ; DWEBBLE
	body_data  14, 2000, INSECTOID,    RED    ; CRUSTLE
	body_data   6,  118, BIPEDAL_TAIL, YELLOW ; SCRAGGY
	body_data  11,  300, BIPEDAL_TAIL, RED    ; SCRAFTY
	body_data  14,  140, WINGS,        BLACK  ; SIGILYPH
	body_data   5,   15, HEAD_ARMS,    BLACK  ; YAMASK
	body_data  17,  765, HEAD_BASE,    YELLOW ; COFAGRIGUS
	body_data   7,  165, QUADRUPED,    BLUE   ; TIRTOUGA
	body_data  12,  810, BIPEDAL_TAIL, BLUE   ; CARRACOSTA
	body_data   5,   95, WINGS,        YELLOW ; ARCHEN
	body_data  14,  320, WINGS,        YELLOW ; ARCHEOPS
	body_data   6,  310, BIPEDAL,      GREEN  ; TRUBBISH
	body_data  19, 1073, BIPEDAL,      GREEN  ; GARBODOR
	body_data   7,  125, QUADRUPED,    GRAY   ; ZORUA
	body_data  16,  811, BIPEDAL_TAIL, GRAY   ; ZOROARK
	body_data   4,   58, BIPEDAL,      PURPLE ; GOTHITA
	body_data   7,  180, BIPEDAL,      PURPLE ; GOTHORITA
	body_data  15,  440, BIPEDAL,      PURPLE ; GOTHITELLE
	body_data   3,   10, HEAD,         GREEN  ; SOLOSIS
	body_data   0,    0, HEAD,         RED    ; EGG
	body_data   0,    0, HEAD,         RED    ; $100
	body_data   6,   80, HEAD,         GREEN  ; DUOSION
	body_data  10,  201, HEAD_ARMS,    GREEN  ; REUNICLUS
	body_data   5,   55, WINGS,        BLUE   ; DUCKLETT
	body_data  13,  242, WINGS,        WHITE  ; SWANNA
	body_data   4,   57, HEAD_BASE,    WHITE  ; VANILLITE
	body_data  11,  410, HEAD_BASE,    WHITE  ; VANILLISH
	body_data  13,  575, MULTIBODY,    WHITE  ; VANILLUXE
	body_data   6,  195, QUADRUPED,    PINK   ; DEERLING
	body_data  19,  925, QUADRUPED,    BROWN  ; SAWSBUCK
	body_data   4,   50, QUADRUPED,    WHITE  ; EMOLGA
	body_data   5,   59, BIPEDAL,      BLUE   ; KARRABLAST
	body_data  10,  330, HEAD_ARMS,    GRAY   ; ESCAVALIER
	body_data   2,   10, HEAD_ARMS,    WHITE  ; FOONGUS
	body_data   6,  105, HEAD_ARMS,    WHITE  ; AMOONGUSS
	body_data  12,  330, TENTACLES,    WHITE  ; FRILLISH
	body_data  22, 1350, TENTACLES,    WHITE  ; JELLICENT
	body_data   1,    6, INSECTOID,    YELLOW ; JOLTIK
	body_data   8,  143, INSECTOID,    YELLOW ; GALVANTULA
	body_data   6,  188, HEAD,         GRAY   ; FERROSEED
	body_data  10, 1100, TENTACLES,    GRAY   ; FERROTHORN
	body_data   3,  210, MULTIBODY,    GRAY   ; KLINK
	body_data   6,  510, MULTIBODY,    GRAY   ; KLANG
	body_data   6,  810, MULTIBODY,    GRAY   ; KLINKLANG
	body_data   2,    3, FINS,         WHITE  ; TYNAMO
	body_data  12,  220, FINS,         BLUE   ; EELEKTRIK
	body_data  21,  805, FINS,         BLUE   ; EELEKTROSS
	body_data   3,   31, HEAD_BASE,    WHITE  ; LITWICK
	body_data   6,  130, HEAD_ARMS,    BLACK  ; LAMPENT
	body_data  10,  343, HEAD_ARMS,    BLACK  ; CHANDELURE
	body_data   6,  180, BIPEDAL_TAIL, GREEN  ; AXEW
	body_data  10,  360, BIPEDAL_TAIL, GREEN  ; FRAXURE
	body_data  18, 1055, BIPEDAL_TAIL, YELLOW ; HAXORUS
	body_data   5,   85, BIPEDAL_TAIL, WHITE  ; CUBCHOO
	body_data  26, 2600, QUADRUPED,    WHITE  ; BEARTIC
	body_data  11, 1480, HEAD,         BLUE   ; CRYOGONAL
	body_data   4,   77, HEAD,         RED    ; SHELMET
	body_data   8,  253, HEAD_ARMS,    RED    ; ACCELGOR
	body_data   7,  110, FINS,         BROWN  ; STUNFISK
	body_data  10,  920, BIPEDAL,      GREEN  ; GOLETT
	body_data  28, 3300, BIPEDAL,      GREEN  ; GOLURK
	body_data   5,  102, BIPEDAL,      RED    ; PAWNIARD
	body_data  16,  700, BIPEDAL,      RED    ; BISHARP
	body_data  16,  946, QUADRUPED,    BROWN  ; BOUFFALANT
	body_data   5,  105, WINGS,        WHITE  ; RUFFLET
	body_data  15,  410, WINGS,        RED    ; BRAVIARY
	body_data   5,   90, WINGS,        BROWN  ; VULLABY
	body_data  12,  395, WINGS,        BROWN  ; MANDIBUZZ
	body_data  14,  580, BIPEDAL_TAIL, RED    ; HEATMOR
	body_data   3,  330, INSECTOID,    GRAY   ; DURANT
	body_data   8,  173, QUADRUPED,    BLUE   ; DEINO
	body_data  14,  500, QUADRUPED,    BLUE   ; ZWEILOUS
	body_data  18, 1600, BIPEDAL_TAIL, BLUE   ; HYDREIGON
	body_data  11,  288, INSECTOID,    WHITE  ; LARVESTA
	body_data  16,  460, MULTIWINGS,   WHITE  ; VOLCARONA
	body_data  15,  825, BIPEDAL,      PURPLE ; GENESECT
	assert_table_length NUM_SPECIES

	body_data  65, 2350, SERPENTINE,   RED    ; GYARADOS (GYARADOS_RED_FORM)

	body_data  22, 1370, BIPEDAL_TAIL, GRAY   ; MEWTWO (MEWTWO_ARMORED_FORM)

	body_data  45,  474, SERPENTINE,   YELLOW ; DUDUNSPARCE (DUDUNSPARCE_THREE_SEGMENT_FORM)

	body_data   3,   38, QUADRUPED,    BLACK  ; RATTATA (ALOLAN_FORM)
	body_data   7,  255, QUADRUPED,    BLACK  ; RATICATE (ALOLAN_FORM)
	body_data   7,  210, BIPEDAL_TAIL, BROWN  ; RAICHU (ALOLAN_FORM)
	body_data   7,  400, BIPEDAL_TAIL, WHITE  ; SANDSHREW (ALOLAN_FORM)
	body_data  12,  550, BIPEDAL_TAIL, BLUE   ; SANDSLASH (ALOLAN_FORM)
	body_data   6,   99, QUADRUPED,    WHITE  ; VULPIX (ALOLAN_FORM)
	body_data  11,  199, QUADRUPED,    BLUE   ; NINETALES (ALOLAN_FORM)
	body_data   4,   42, QUADRUPED,    BLUE   ; MEOWTH (ALOLAN_FORM)
	body_data  11,  330, QUADRUPED,    BLUE   ; PERSIAN (ALOLAN_FORM)
	body_data   4,  203, HEAD_ARMS,    GRAY   ; GEODUDE (ALOLAN_FORM)
	body_data  10, 1100, BIPEDAL,      GRAY   ; GRAVELER (ALOLAN_FORM)
	body_data  17, 3160, BIPEDAL,      GRAY   ; GOLEM (ALOLAN_FORM)
	body_data   7,  420, HEAD_ARMS,    GREEN  ; GRIMER (ALOLAN_FORM)
	body_data  10,  520, HEAD_ARMS,    GREEN  ; MUK (ALOLAN_FORM)
	body_data 109, 4156, HEAD_LEGS,    YELLOW ; EXEGGUTOR (ALOLAN_FORM)

	body_data   4,   75, BIPEDAL_TAIL, BROWN  ; MEOWTH (GALARIAN_FORM)
	body_data   8,  240, QUADRUPED,    WHITE  ; PONYTA (GALARIAN_FORM)
	body_data  17,  800, QUADRUPED,    WHITE  ; RAPIDASH (GALARIAN_FORM)
	body_data  12,  360, QUADRUPED,    PINK   ; SLOWPOKE (GALARIAN_FORM)
	body_data  16,  705, BIPEDAL_TAIL, PINK   ; SLOWBRO (GALARIAN_FORM)
	body_data  30,  160, MULTIBODY,    GRAY   ; WEEZING (GALARIAN_FORM)
	body_data  14,  568, BIPEDAL,      WHITE  ; MR__MIME (GALARIAN_FORM)
	body_data  18,  795, BIPEDAL_TAIL, PINK   ; SLOWKING (GALARIAN_FORM)
	body_data   6,    5, INSECTOID,    WHITE  ; CORSOLA (GALARIAN_FORM)

	body_data   8,  227, QUADRUPED,    RED    ; GROWLITHE (HISUIAN_FORM)
	body_data  20, 1680, QUADRUPED,    RED    ; ARCANINE (HISUIAN_FORM)
	body_data  16,  698, QUADRUPED,    YELLOW ; TYPHLOSION (HISUIAN_FORM)
	body_data   9,  270, BIPEDAL_TAIL, GRAY   ; SNEASEL (HISUIAN_FORM)
	
	body_data  12,  290, WINGS,        GRAY   ; UNFEZANT (UNFEZANT_FEMALE_FORM)

	assert_table_length NUM_EXT_POKEMON
