TrainerClassDVsAndPersonality:
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width 5
	;  EVs  HP   Def  SAt
	;  *    Atk  Spe  SDf  Gender
	db 252, PERFECT_DVS,   FEMALE ; carrie
	db 252, PERFECT_DVS,   MALE   ; cal
	db 252, PERFECT_DVS,   MALE   ; jacky
	db 252, $BB, $BB, $BB, MALE   ; marlon
	db 252, $BB, $BB, $BB, FEMALE ; shauntal
	db 252, $CC, $CC, $CC, MALE   ; burgh
	db 252, $CC, $CC, $CC, FEMALE ; roxie
	db 252, $DD, $DD, $DD, MALE   ; cheren
	db 252, $DD, $DD, $DD, MALE   ; cilan
	db 252, $EE, $EE, $EE, FEMALE ; skyla
	db 252, $EE, $EE, $EE, MALE   ; drayden
	db 252, PERFECT_DVS,   MALE   ; marshal
	db 252, PERFECT_DVS,   MALE   ; grimsley
	db 252, PERFECT_DVS,   FEMALE ; elesa
	db 252, PERFECT_DVS,   MALE   ; colress
	db 252, PERFECT_DVS,   FEMALE ; champion
	db   0, PERFECT_DVS,   FEMALE ; infer0
	db 144, PERFECT_DVS,   FEMALE ; infer1
	db 252, PERFECT_DVS,   FEMALE ; infer sage
	db 252, PERFECT_DVS,   FEMALE ; infer2
	db   0, $66, $66, $66, MALE   ; youngster
	db   0, $66, $66, $66, MALE   ; youngsterD
	db  40, $BB, $BB, $BB, FEMALE ; lass
	db  40, $BB, $BB, $BB, FEMALE ; lassD
	db  64, $EE, $EE, $EE, MALE   ; ace trainerm
	db  64, $EE, $EE, $EE, MALE   ; ace trainermD
	db  64, $EE, $EE, $EE, FEMALE ; ace trainerf
	db  64, $EE, $EE, $EE, FEMALE ; ace trainerfD
	db  72, $DD, $DD, $DD, MALE   ; artist
	db  40, $BB, $BB, $BB, MALE   ; backersm
	db  40, $BB, $BB, $BB, FEMALE ; backersf
	db  32, $AA, $AA, $AA, MALE   ; backpackerm
	db  32, $AA, $AA, $AA, FEMALE ; backpackerf
	db  48, $CC, $CC, $CC, FEMALE ; baker
	db  64, $FF, $DD, $DD, MALE   ; blackbelt
	db  64, $FF, $DD, $DD, FEMALE ; battle girl
	db  72, $DD, $DD, $DD, MALE   ; biker
	db  72, $DD, $DD, $DD, MALE   ; roughneck
	db  32, $AA, $AA, $AA, MALE   ; cyclistm
	db  32, $AA, $AA, $AA, FEMALE ; cyclistf
	db  48, $CC, $CC, $CC, MALE   ; dancer
	db  48, $DD, $BB, $DB, MALE   ; depot agent
	db  48, $E5, $FA, $D6, MALE   ; doctor
	db  48, $E5, $FA, $D6, FEMALE ; nurse
	db  16, $88, $88, $88, MALE   ; fisher
	db  16, $88, $88, $88, MALE   ; fisherD
	db  48, $CC, $CC, $CC, MALE   ; gentleman
	db  72, $DD, $DD, $DD, FEMALE ; guitarist
	db  40, $BB, $BB, $BB, MALE   ; harlequin
	db  48, $AA, $CC, $EE, FEMALE ; hex maniac
	db  24, $99, $99, $99, MALE   ; hiker
	db  24, $99, $99, $99, MALE   ; hikerD
	db  48, $CC, $CC, $CC, MALE   ; hoopster
	db  48, $CC, $CC, $CC, MALE   ; janitor
	db  48, $CC, $CC, $CC, FEMALE ; lady
	db  48, $CC, $CC, $CC, MALE   ; linebacker
	db  48, $CC, $CC, $CC, FEMALE ; maid
	db  72, $DD, $DD, $DD, MALE   ; musician
	db  72, $DD, $DD, $DD, FEMALE ; nursery aide
	db  72, $DD, $DD, $DD, FEMALE ; parasol lady
	db  48, $DD, $BB, $DB, MALE   ; pilot
	db  56, $DD, $DD, $DD, MALE   ; pkmn breederm
	db  56, $DD, $DD, $DD, FEMALE ; pkmn breederf
	db  56, $DD, $DD, $DD, MALE   ; pkmn rangerm
	db  56, $DD, $DD, $DD, FEMALE ; pkmn rangerf
	db  48, $DD, $BB, $DB, MALE   ; policeman
	db  16, $88, $88, $88, MALE   ; preschoolerm
	db  16, $88, $88, $88, FEMALE ; preschoolerf
	db  48, $AA, $CC, $EE, MALE   ; psychicm
	db  48, $AA, $CC, $EE, FEMALE ; psychicf
	db 100, $CC, $CC, $CC, MALE   ; rich boy (high EVs from vitamins)
	db  48, $CC, $CC, $CC, MALE   ; school kidm
	db  48, $CC, $CC, $CC, FEMALE ; school kidf
	db  56, $DD, $DD, $DD, MALE   ; scientistm
	db  56, $DD, $DD, $DD, MALE   ; plasma scientistm
	db  56, $DD, $DD, $DD, FEMALE ; scientistf
	db  56, $DD, $DD, $DD, FEMALE ; plasma scientistf
	db  48, $CC, $CC, $CC, FEMALE ; smasher
	db  48, $CC, $CC, $CC, FEMALE ; socialite
	db  48, $CC, $CC, $CC, MALE   ; swimmerm
	db  48, $CC, $CC, $CC, MALE   ; swimmermD
	db  48, $CC, $CC, $CC, FEMALE ; swimmerf
	db  48, $CC, $CC, $CC, FEMALE ; swimmerfD
	db  16, $88, $88, $88, FEMALE ; twins
	db 128, PERFECT_DVS,   MALE   ; veteranm
	db 128, PERFECT_DVS,   FEMALE ; veteranf
	db  72, $DD, $DD, $DD, MALE   ; waiter
	db  72, $DD, $DD, $DD, FEMALE ; waitress
	db  48, $CC, $CC, $CC, MALE   ; janitor
	db  32, $AA, $AA, $AA, MALE   ; gruntm
	db  32, $AA, $AA, $AA, FEMALE ; gruntf
	db  80, $BB, $BB, $BB, MALE   ; giallo
	db  96, $CC, $CC, $CC, MALE   ; bronius
	db 112, $DD, $DD, $DD, MALE   ; ryoku
	db 112, $CC, $CC, $CC, MALE   ; gorm
	db 128, $EE, $EE, $EE, MALE   ; mysteryman
	db 128, $EE, $EE, $EE, MALE   ; zinzolin
	db 160, PERFECT_DVS,   MALE   ; genesis
	db 252, PERFECT_DVS,   FEMALE ; bianca
	db 252, PERFECT_DVS,   MALE   ; towertycoon
	db 252, PERFECT_DVS,   MALE   ; factoryhead
	db 252, PERFECT_DVS,   MALE   ; inver
	db 252, PERFECT_DVS,   MALE   ; alder
	db 252, PERFECT_DVS,   FEMALE ; iris
	db 252, PERFECT_DVS,   FEMALE ; caitlin
	db 252, PERFECT_DVS,   FEMALE ; cynthia
	db 252, PERFECT_DVS,   MALE   ; rood
	db 252, PERFECT_DVS,   MALE   ; n
	db 252, PERFECT_DVS,   MALE   ; hugh
	db 252, PERFECT_DVS,   MALE   ; nate
	db 252, PERFECT_DVS,   FEMALE ; rosa
	db 252, PERFECT_DVS,   MALE   ; hilbert
	db 252, PERFECT_DVS,   FEMALE ; hilda
	assert_table_length NUM_TRAINER_CLASSES
