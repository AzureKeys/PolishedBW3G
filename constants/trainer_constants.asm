DEF __trainer_pal__ = 0

MACRO trainerpal
	DEF TRAINERPAL_\1 = __trainer_pal__
	DEF __trainer_pal__ += 1
ENDM

DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
	trainerpal \1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVsAndPersonality (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are indexes for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_LYRA
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

DEF KRIS EQU __trainer_class__
	trainerclass CARRIE ; 1

DEF CHRIS EQU __trainer_class__
	trainerclass CAL ; 2

DEF CRYS EQU __trainer_class__
	trainerclass JACKY ; 3

	trainerclass MARLON ; 4

	trainerclass SHAUNTAL ; 5

	trainerclass BURGH ; 6

	trainerclass ROXIE ; 7

	trainerclass CHEREN ; 8

	trainerclass CILAN ; 9

	trainerclass SKYLA ; a

	trainerclass DRAYDEN ; b

	trainerclass MARSHAL ; c

	trainerclass GRIMSLEY ; d

	trainerclass ELESA ; e

	trainerclass COLRESS ; f

	trainerclass CHAMPION ; 10
	const JUNIPER_SNIVY
	const JUNIPER_TEPIG
	const JUNIPER_OSHAWOTT

	trainerclass INFER0 ; 11
	const INFER1_SNIVY
	const INFER1_TEPIG
	const INFER1_OSHAWOTT

	trainerclass INFER1 ; 12
	const INFER2_SNIVY
	const INFER2_TEPIG
	const INFER2_OSHAWOTT
	const INFER3_SNIVY
	const INFER3_TEPIG
	const INFER3_OSHAWOTT
	const INFER4_SNIVY
	const INFER4_TEPIG
	const INFER4_OSHAWOTT
	const INFER5_SNIVY
	const INFER5_TEPIG
	const INFER5_OSHAWOTT
	
	trainerclass INFER_SAGE ; 13
	const INFER_SAGE_SNIVY
	const INFER_SAGE_TEPIG
	const INFER_SAGE_OSHAWOTT

	trainerclass INFER2 ; 14
	const INFER7_SNIVY
	const INFER7_TEPIG
	const INFER7_OSHAWOTT

	trainerclass YOUNGSTER ; 15
	const YOUNGSTER_R13
	const YOUNGSTER_OUTSKIRTS
	const YOUNGSTER_ASPERTIA_GYM
	const YOUNGSTER_PINWHEEL
	const YOUNGSTER_DREAMYARD
	const DAN_REMATCH_1
	const DAN_REMATCH_2
	const DAN_REMATCH_3
	const DAN_REMATCH_4
	const DAN_REMATCH_5
	const DAN_REMATCH_6

	trainerclass YOUNGSTER_D ; 16
	const YOUNGSTER_LOSTLORN
	const YOUNGSTER_DESERT
	const YOUNGSTER_NACRENE_OUTSKIRT
	const YOUNGSTER_R2

	trainerclass LASS ; 17
	const LASS_R13
	const LASS_LOSTLORN
	const LASS_DESERT
	const LASS_NACRENE_OUTSKIRT
	const LASS_CELESTIAL_TOWER

	trainerclass LASS_D ; 18
	const LASS_REVERSAL
	const LASS_ASPERTIA_GYM
	const LASS_PINWHEEL
	const LASS_R2
	const CARLA_REMATCH_1
	const CARLA_REMATCH_2
	const CARLA_REMATCH_3

	trainerclass ACE_TRAINERM ; 19
	const ACE_TRAINERM_PWT
	const ACE_TRAINERM_CHARGESTONE_1
	const ACE_TRAINERM_MISTRALTON_CAVE
	const ACE_TRAINERM_R23_1
	const ACE_TRAINERM_VICTORY_ROAD_INT_1
	const ACE_TRAINERM_VICTORY_ROAD_EXT_1

	trainerclass ACE_TRAINERM_D ; 1a
	const ACE_TRAINERM_GIANT_CHASM
	const ACE_TRAINERM_CHARGESTONE_2
	const ACE_TRAINERM_R23_2
	const ACE_TRAINERM_VICTORY_ROAD_INT_2
	const ACE_TRAINERM_VICTORY_ROAD_EXT_2

	trainerclass ACE_TRAINERF ; 1b
	const ACE_TRAINERF_CHARGESTONE_1
	const ACE_TRAINERF_MISTRALTON_CAVE
	const ACE_TRAINERF_R23_2
	const ACE_TRAINERF_VICTORY_ROAD_INT_1
	const ACE_TRAINERF_VICTORY_ROAD_EXT_1

	trainerclass ACE_TRAINERF_D ; 1c
	const ACE_TRAINERF_GIANT_CHASM
	const ACE_TRAINERF_PWT
	const ACE_TRAINERF_CHARGESTONE_2
	const ACE_TRAINERF_R23_1
	const ACE_TRAINERF_VICTORY_ROAD_INT_2
	const ACE_TRAINERF_VICTORY_ROAD_EXT_2

	trainerclass ARTIST ; 1d
	const ARTIST_R5
	const ARTIST_R3

	trainerclass BACKERSM ; 1e
	const BACKERSM_R16
	const BACKERSM_R11

	trainerclass BACKERSF ; 1f
	const BACKERSF_R5
	const BACKERSF_R11

	trainerclass BACKPACKERM ; 20
	const BACKPACKERM_REVERSAL
	const BACKPACKERM_R16
	const BACKPACKERM_DESERT
	const BACKPACKERM_R2
	const BACKPACKERM_R18
	const BACKPACKERM_GIANT_CHASM
	const BACKPACKERM_RELIC_PASSAGE
	const BACKPACKERM_R7
	const BACKPACKERM_R23
	const BACKPACKERM_VICTORY_ROAD_INT
	const PARKER_REMATCH_1
	const PARKER_REMATCH_2

	trainerclass BACKPACKERF ; 21
	const BACKPACKERF_REVERSAL
	const BACKPACKERF_R16
	const BACKPACKERF_DESERT
	const BACKPACKERF_R2
	const BACKPACKERF_R18
	const BACKPACKERF_GIANT_CHASM
	const BACKPACKERF_RELIC_PASSAGE
	const BACKPACKERF_R7
	const BACKPACKERF_R23
	const BACKPACKERF_VICTORY_ROAD_EXT
	const JENNY_REMATCH_1
	const JENNY_REMATCH_2
	const JENNY_REMATCH_3

	trainerclass BAKER ; 22
	const BAKER_R5
	const BAKER_R19

	trainerclass BLACKBELT_T ; 23
	const BLACKBELT_REVERSAL
	const BLACKBELT_WELLSPRING_1
	const BLACKBELT_WELLSPRING_2
	const BLACKBELT_R1
	const BLACKBELT_R18
	const BLACKBELT_R21
	const BLACKBELT_SEASIDE_CAVE_1
	const BLACKBELT_SEASIDE_CAVE_2
	const BLACKBELT_NACRENE_OUTSKIRT
	const BLACKBELT_VICTORY_ROAD_EXT

	trainerclass BATTLE_GIRL ; 24
	const BATTLE_GIRL_REVERSAL
	const BATTLE_GIRL_WELLSPRING
	const BATTLE_GIRL_R1
	const BATTLE_GIRL_R18
	const BATTLE_GIRL_SEASIDE_CAVE_1
	const BATTLE_GIRL_SEASIDE_CAVE_2
	const BATTLE_GIRL_CHARGESTONE
	const BATTLE_GIRL_NACRENE_OUTSKIRT
	const BATTLE_GIRL_R23
	const BATTLE_GIRL_VICTORY_ROAD_EXT

	trainerclass BIKER ; 25
	const BIKER_R5
	const BIKER_R4
	const BIKER_R9_1
	const BIKER_R9_2

	trainerclass ROUGHNECK ; 26
	const ROUGHNECK_R4
	const ROUGHNECK_DESERT
	const ROUGHNECK_R9_1
	const ROUGHNECK_R9_2

	trainerclass CYCLISTM ; 27
	const CYCLISTM_OUTSKIRTS
	const CYCLISTM_R16
	const FREDDY_REMATCH_1
	const FREDDY_REMATCH_2
	const FREDDY_REMATCH_3
	const FREDDY_REMATCH_4
	const FREDDY_REMATCH_5

	trainerclass CYCLISTF ; 28
	const CYCLISTF_OUTSKIRTS
	const CYCLISTF_R16

	trainerclass DANCER ; 29
	const DANCER_R5_1
	const DANCER_R5_2
	const ERIC_REMATCH_1
	const ERIC_REMATCH_2
	const ERIC_REMATCH_3
	const ERIC_REMATCH_4
	const ERIC_REMATCH_5

	trainerclass DEPOT_AGENT ; 2a
	const DEPOT_AGENT_R19_1
	const DEPOT_AGENT_R19_2

	trainerclass DOCTOR ; 2b
	const DOCTOR_OUTSKIRTS
	const DOCTOR_R17
	const DOCTOR_CHARGESTONE
	const DOCTOR_SEASIDE_CAVE

	trainerclass NURSE ; 2c
	const NURSE_DESERT
	const NURSE_RELIC_PASSAGE
	const NURSE_CELESTIAL_TOWER
	const NURSE_VICTORY_ROAD
	const NURSE_TWIST_MOUNTAIN

	trainerclass TWINS ; 24
	const AMYANDMIMI1
	const AMYANDMIMI2
	const ANNANDANNE1
	const ANNANDANNE2
	const JOANDZOE1
	const JOANDZOE2
	const MEGANDPEG1
	const MEGANDPEG2
	const LEAANDPIA1
	const LEAANDPIA2
	const DAYANDDANI1
	const DAYANDDANI2
	const KAYANDTIA1
	const KAYANDTIA2

	trainerclass FISHER ; 25
	const RALPH1
	const RALPH2
	const RALPH3
	const RALPH4
	const RALPH5
	const TULLY1
	const TULLY2
	const TULLY3
	const TULLY4
	const WILTON1
	const WILTON2
	const WILTON3
	const JUSTIN
	const ARNOLD
	const KYLE
	const HENRY
	const MARVIN
	const ANDRE
	const RAYMOND
	const EDGAR
	const JONAH
	const MARTIN
	const STEPHEN
	const BARNEY
	const SCOTT
	const PATON
	const KILEY
	const FRANCIS
	const LEROY
	const KYLER
	const MURPHY
	const LIAM
	const GIDEON
	const HALL
	const DALLAS

	trainerclass BIRD_KEEPER ; 26
	const VANCE1
	const VANCE2
	const VANCE3
	const JOSE1
	const JOSE2
	const JOSE3
	const ROD
	const ABE
	const THEO
	const TOBY
	const DENIS
	const HANK
	const ROY
	const BORIS
	const BOB
	const PETER
	const PERRY
	const BRET
	const MICK
	const POWELL
	const BIRD_KEEPER_TONY
	const JULIAN
	const BIRD_KEEPER_JUSTIN
	const GAIL
	const BIRD_KEEPER_JOSH
	const BERT
	const ERNIE
	const KINSLEY
	const EASTON
	const BRYAN
	const TRENT

	trainerclass HIKER ; 27
	const ANTHONY1
	const ANTHONY2
	const ANTHONY3
	const ANTHONY4
	const ANTHONY5
	const PARRY1
	const PARRY2
	const PARRY3
	const RUSSELL
	const PHILLIP
	const LEONARD
	const BENJAMIN
	const ERIK
	const MICHAEL
	const TIMOTHY
	const BAILEY
	const TIM
	const NOLAND
	const SIDNEY
	const KENNY
	const JIM
	const DANIEL
	const EDWIN
	const DEVIN
	const SEAMUS
	const TONY
	const MARCOS
	const GERARD
	const DENT
	const BRUCE
	const DWIGHT
	const LESTER
	const GRADY
	const STEVE
	const DERRICK
	const FLOYD

	trainerclass GRUNTM ; 28

	trainerclass GRUNTF ; 29

	trainerclass POKEFANM ; 2a
	const DEREK1
	const DEREK2
	const DEREK3
	const WILLIAM
	const ROBERT
	const JOSHUA
	const CARTER
	const TREVOR
	const BRANDON
	const JEREMY
	const COLIN
	const ALEX
	const REX
	const ALLAN

	trainerclass POKEFANF ; 2b
	const BEVERLY1
	const BEVERLY2
	const BEVERLY3
	const RUTH
	const GEORGIA
	const JAIME
	const BOONE
	const ELEANOR

	trainerclass OFFICERM ; 2c
	const KEITH
	const DIRK

	trainerclass OFFICERF ; 2d
	const JAMIE
	const MARA
	const JENNY

	trainerclass POKEMANIAC ; 2f
	const BRENT1
	const BRENT2
	const BRENT3
	const BRENT4
	const LARRY
	const ANDREW
	const CALVIN
	const SHANE
	const BEN
	const RON
	const ETHAN
	const ISSAC
	const DONALD
	const ZACH
	const ENZO
	const MILLER
	const AIDAN

	trainerclass COSPLAYER ; 30
	const CLARA
	const CHLOE
	const BROOKE
	const KUROKO
	const LYRIC

	trainerclass SUPER_NERD ; 31
	const STAN
	const ERIC
	const SAM
	const TOM
	const PAT
	const SHAWN
	const TERU
	const HUGH
	const MARKUS
	const CARY
	const WALDO
	const MERLE
	const LUIS
	const JOVAN
	const MIGUEL
	const RORY
	const GREGG
	const FOOTE
	const DAVE
	const KOUTA

	trainerclass BEAUTY ; 33
	const VICTORIA
	const SAMANTHA
	const CASSIE
	const JULIA
	const VALENCIA
	const OLIVIA
	const CALLIE
	const CASSANDRA
	const CHARLOTTE
	const BRIDGET
	const VERONICA
	const BEAUTY_NICOLE
	const RACHAEL
	const IOANA

	trainerclass BUG_MANIAC ; 34
	const LOU
	const ROB
	const ED
	const DOUG
	const DANE
	const DION
	const STACEY
	const ELLIS
	const ABNER
	const KENTA
	const ROBBY
	const PIERRE
	const DYLAN
	const KAI

	trainerclass RUIN_MANIAC ; 35
	const JONES
	const LELAND
	const PETRY
	const GLYN
	const SMILTE

	trainerclass FIREBREATHER ; 36
	const OTIS
	const DICK
	const NED
	const BURT
	const BILL
	const WALT
	const RAY
	const LYLE
	const JAY
	const OLEG
	const TALA

	trainerclass JUGGLER ; 37
	const IRWIN1
;	const IRWIN2
;	const IRWIN3
;	const IRWIN4
	const FRITZ
	const HORTON

	trainerclass SCHOOLBOY ; 38
	const JACK1
	const JACK2
	const JACK3
	const JACK4
	const JACK5
	const ALAN1
	const ALAN2
	const ALAN3
	const ALAN4
	const ALAN5
	const CHAD1
	const CHAD2
	const CHAD3
	const CHAD4
	const CHAD5
	const KIPP
	const JOHNNY
	const DANNY
	const TOMMY
	const DUDLEY
	const JOE
	const BILLY
	const NATE
	const RICKY
	const SHERMAN
	const SCHOOLBOY_CONNOR
	const TORIN
	const TRAVIS

	trainerclass SCHOOLGIRL ; 39
	const MOLLY
	const ELIZA
	const FAITH
	const SARAH
	const ISABEL
	const IMOGEN

	trainerclass PSYCHIC_T ; 3a
	const NATHAN
	const FRANKLIN
	const HERMAN
	const FIDEL
	const GREG
	const NORMAN
	const MARK
	const PHIL
	const RICHARD
	const GILBERT
	const JARED
	const RODNEY
	const LEON
	const URI
	const VIRGIL

	trainerclass HEX_MANIAC ; 3b
	const TAMARA
	const ASHLEY
	const AMY
	const LUNA
	const NATALIE
	const VIVIAN
	const ESTHER
	const MATILDA
	const BETHANY
	const CORYN

	trainerclass SAGE ; 3c
	const CHOW
	const NICO
	const JIN
	const TROY
	const JEFFREY
	const PING
	const EDMOND
	const NEAL

	trainerclass MEDIUM ; 3d
	const MARTHA
	const GRACE
	const REBECCA
	const DORIS

	trainerclass KIMONO_GIRL ; 3e
	const NAOKO
	const SAYO
	const ZUKI
	const KUNI
	const MIKI
	const MAKO
	const AMI
	const MINA

	trainerclass ELDER ; 3f
	const LI
	const GAKU
	const MASA
	const KOJI

	trainerclass SR_AND_JR ; 40
	const JOANDCATH1
	const JOANDCATH2
	const IVYANDAMY1
	const IVYANDAMY2
	const BEAANDMAY1
	const BEAANDMAY2

	trainerclass COUPLE ; 41
	const GAILANDELI1
	const GAILANDELI2
	const DUFFANDEDA1
	const DUFFANDEDA2
	const FOXANDRAE1
	const FOXANDRAE2
	const MOEANDLULU1
	const MOEANDLULU2
	const VICANDTARA1
	const VICANDTARA2
	const TIMANDSUE1
	const TIMANDSUE2
	const JOEANDJO1
	const JOEANDJO2

	trainerclass GENTLEMAN ; 42
	const PRESTON
	const EDWARD
	const GREGORY
	const ALFRED
	const MILTON
	const CAMUS
	const GEOFFREY

	trainerclass RICH_BOY ; 43
	const WINSTON
	const GERALD
	const IRVING
	const TOBIN

	trainerclass LADY ; 44
	const JESSICA

	trainerclass BREEDER ; 45
	const JULIE
	const THERESA
	const JODY
	const CARLENE
	const SOPHIE
	const BRENDA

	trainerclass COWGIRL ; 47
	const ANNIE
	const APRIL
	const DANIELA

	trainerclass SAILOR ; 48
	const HUEY1
	const HUEY2
	const HUEY3
	const HUEY4
	const EUGENE
	const TERRELL
	const KENT
	const ERNEST
	const JEFF
	const GARRETT
	const KENNETH
	const STANLY
	const HARRY
	const PARKER
	const EDDIE
	const HARVEY

	trainerclass SWIMMERM ; 49
	const HAROLD
	const SIMON
	const RANDALL
	const CHARLIE
	const GEORGE
	const BERKE
	const KIRK
	const MATHEW
	const HAL
	const JEROME
	const TUCKER
	const RICK
	const CAMERON
	const SETH
	const JAMES
	const WALTER
	const LEWIS
	const MICHEL
	const LUCAS
	const FRANK
	const NADAR
	const CONRAD
	const ROMEO
	const MALCOLM
	const ARMAND
	const THOMAS
	const SWIMMERM_LUIS
	const ELMO
	const DUANE
	const ESTEBAN
	const EZRA
	const ASHE

	trainerclass SWIMMERF ; 4a
	const ELAINE
	const PAULA
	const KAYLEE
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const MARY
	const DAWN
	const NICOLE
	const LORI
	const NIKKI
	const DIANA
	const BRIANA
	const VIOLA
	const KATIE
	const JILL
	const LISA
	const ALISON
	const STEPHANIE
	const CAROLINE
	const NATALIA
	const BARBARA
	const SALLY
	const TARA
	const MAYU
	const LEONA
	const CHELAN
	const KENDRA
	const WODA
	const RACHEL
	const MARINA

	trainerclass BURGLAR ; 4b
	const DUNCAN
	const ORSON
	const COREY
	const PETE
	const LOUIS

	trainerclass PI ; 4c
	const LOOKER

	trainerclass SCIENTIST ; 4d
	const LOWELL
	const DENNETT
	const LINDEN
	const OSKAR
	const BRAYDON
	const CARL
	const DEXTER
	const JOSEPH
	const NIGEL
	const PIOTR
	const SANDERS

	trainerclass ROCKET_SCIENTIST ; 4e
	const ROSS
	const MITCH
	const JED
	const MARC
	const RICH

	trainerclass BOARDER ; 4f
	const RONALD
	const BRAD
	const DOUGLAS
	const SHAUN
	const BRYCE
	const STEFAN
	const MAX

	trainerclass SKIER ; 50
	const ROXANNE
	const CLARISSA
	const CADY
	const MARIA
	const BECKY

	trainerclass DRAGON_TAMER ; 53
	const PAUL
	const DARIN
	const ADAM
	const ERICK
	const KAZU
	const AEGON

	trainerclass ENGINEER ; 54
	const SMITH
	const BERNIE
	const CAMDEN
	const LANG
	const HUGO
	const HOWARD
	const GRADEN
	const GUSTAV
	const NICOLAS

	trainerclass TEACHER_F ; 55
	const COLETTE
	const HILLARY
	const SHIRLEY
	const KATHRYN
	const CLARICE
	const SERENA

	trainerclass TEACHER_M ; 56
	const NOLAN

	trainerclass GUITARISTM ; 57
	const CLYDE
	const VINCENT
	const ROGER
	const EZEKIEL
	const BIFF
	const GEDDY

	trainerclass GUITARISTF ; 58
	const JANET
	const MORGAN
	const RITSUKO
	const WANDA
	const JACLYN

	trainerclass TAMER ; 5b
	const BRETT
	const VINCE
	const OSWALD
	const JORDAN

	trainerclass AROMA_LADY ; 5d
	const DAHLIA
	const BRYONY
	const HEATHER
	const HOLLY
	const PEONY

	trainerclass SOLDIER ; 5e

	trainerclass WAITER ; 5f
	const DAVID

	trainerclass WAITRESS ; 60

	trainerclass SIGHTSEERM ; 61
	const JASKA
	const BLAISE
	const GARETH
	const CHESTER
	const HARI

	trainerclass SIGHTSEERF ; 62
	const ROSIE
	const KAMILA
	const NOELLE
	const PILAR
	const LENIE

	trainerclass SIGHTSEERS ; 63
	const LIANDSU1
	const LIANDSU2
	const CYANDVI1
	const CYANDVI2

	trainerclass ACE_DUO ; 66
	const ELANANDIDA1
	const ELANANDIDA2
	const ARAANDBELA1
	const ARAANDBELA2
	const THOMANDKAE1
	const THOMANDKAE2
	const ZACANDJEN1
	const ZACANDJEN2
	const JAKEANDBRI1
	const JAKEANDBRI2
	const DANANDCARA1
	const DANANDCARA2

	trainerclass VETERANM ; 67
	const MATT
	const REMY
	const BARKHORN
	const EN

	trainerclass VETERANF ; 68
	const JOANNE
	const JONET
	const LITVYAK
	const MADOKA

	trainerclass PROTON ; 69
	const PROTON1
	const PROTON2

	trainerclass PETREL ; 6a
	const PETREL1
	const PETREL2

	trainerclass ARCHER ; 6b
	const ARCHER1
	const ARCHER2

	trainerclass ARIANA ; 6c
	const ARIANA1
	const ARIANA2

	trainerclass GIOVANNI ; 6d
	const GIOVANNI1
	const GIOVANNI2

	trainerclass PROF_OAK ; 6e

	trainerclass PROF_ELM ; 6f

	trainerclass PROF_IVY ; 70

	trainerclass MYSTICALMAN ; 71
	const EUSINE

	trainerclass KARATE_KING ; 72
	const KIYO

	trainerclass TOWERTYCOON ; 73

	trainerclass FACTORYHEAD ; 74

	trainerclass JESSIE_JAMES ; 75

	trainerclass LORELEI ; 76

	trainerclass AGATHA ; 77

	trainerclass STEVEN ; 78

	trainerclass CYNTHIA ; 79

	trainerclass INVER ; 7a

	trainerclass CHERYL ; 7b

	trainerclass RILEY ; 7c

	trainerclass BUCK ; 7d

	trainerclass MARLEY ; 7e

	trainerclass MIRA ; 7f

	trainerclass ANABEL ; 80

	trainerclass DARACH ; 81

	trainerclass CAITLIN ; 82

	trainerclass CANDELA ; 83

	trainerclass BLANCHE ; 84

	trainerclass SPARK_T ; 85

	trainerclass FLANNERY ; 86

	trainerclass MAYLENE ; 87

	trainerclass VALERIE ; 89

	trainerclass KUKUI ; 8a

	trainerclass PIERS ; 8b

	trainerclass KATY ; 8c

	trainerclass VICTOR  ; 8d

	trainerclass BILL_T ; 8e

	trainerclass YELLOW ; 8f

	trainerclass WALKER ; 90

	trainerclass IMAKUNI ; 91

	trainerclass LAWRENCE ; 92

	trainerclass REI ; 93

DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1

	trainerclass OMASTAR_FOSSIL ; 94

	trainerclass KABUTOPS_FOSSIL ; 95

	trainerclass AERODACTYL_FOSSIL ; 96

	trainerclass CUBONE_ARMOR ; 97

	trainerclass METEORITE ; 98

	trainerclass SILHOUETTE ; 99

DEF NUM_TRAINER_CLASS_PICS EQU __trainer_class__ - 1
	trainerpal SAYO ; 9a
	trainerpal ZUKI ; 9b
	trainerpal KUNI ; 9c
	trainerpal MIKI ; 9d
	trainerpal MAKO ; 9e
	trainerpal AMI  ; 9f
	trainerpal MINA ; a0
DEF NUM_TRAINER_PALS EQU __trainer_pal__ - 1
