FinalTextList_TriplePhrases:
	dbw INFER0,     .FinalText_Rival0
	dbw INFER1,     .FinalText_Rival1
	dbw INFER_SAGE, .FinalText_RivalSage
	dbw INFER2,     .FinalText_Rival2
	db -1

.FinalText_Rival0:
	dw Rival1_1FinalPkmnText

.FinalText_Rival1:
	dw Rival1_2FinalPkmnText
	dw Rival1_3FinalPkmnText
	dw Rival1_4FinalPkmnText
	dw Rival1_5FinalPkmnText

.FinalText_RivalSage:
	dw Rival2_1FinalPkmnText

.FinalText_Rival2:
	dw Rival2_2FinalPkmnText

FinalText_TeamRocket:
	dw Proton1FinalPkmnText
	dw Proton2FinalPkmnText
	assert GIALLO + 1 == BRONIUS
	dw Petrel1FinalPkmnText
	dw Petrel2FinalPkmnText
	assert BRONIUS + 1 == RYOKU
	dw Archer1FinalPkmnText
	dw Archer2FinalPkmnText
	assert RYOKU + 1 == GORM
	dw Ariana1FinalPkmnText
	dw Ariana2FinalPkmnText
	assert GORM + 1 == MYSTERYMAN
	dw Giovanni1FinalPkmnText
	dw Giovanni2FinalPkmnText
	assert MYSTERYMAN + 1 == ZINZOLIN
	dw Giovanni1FinalPkmnText
	dw Giovanni2FinalPkmnText

FinalText_SinglePhrases:
	table_width 2
	dw CarrieFinalPkmnText
	dw CalFinalPkmnText
	dw JackyFinalPkmnText
	dw FalknerFinalPkmnText
	dw BugsyFinalPkmnText
	dw WhitneyFinalPkmnText
	dw MortyFinalPkmnText
	dw ChuckFinalPkmnText
	dw JasmineFinalPkmnText
	dw PryceFinalPkmnText
	dw ClairFinalPkmnText
	dw WillFinalPkmnText
	dw KogaFinalPkmnText
	dw BrunoFinalPkmnText
	dw KarenFinalPkmnText
	dw ChampionFinalPkmnText
	; ...
	dw MysticalManFinalPkmnText
	dw PalmerFinalPkmnText
	dw ThortonFinalPkmnText
	dw CynthiaFinalPkmnText
	dw InverFinalPkmnText
	dw CaitlinFinalPkmnText
	dw CaitlinFinalPkmnText
	; all trainers between CHAMPION and BIANCA are omitted
	assert_table_length NUM_TRAINER_CLASSES - (BIANCA - CHAMPION - 1)
