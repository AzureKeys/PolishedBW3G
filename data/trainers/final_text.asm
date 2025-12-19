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
	dw Giallo1FinalPkmnText
	dw Giallo2FinalPkmnText
	assert GIALLO + 1 == BRONIUS
	dw Bronius1FinalPkmnText
	dw Bronius2FinalPkmnText
	assert BRONIUS + 1 == RYOKU
	dw Ryoku1FinalPkmnText
	dw Ryoku2FinalPkmnText
	assert RYOKU + 1 == GORM
	dw Gorm1FinalPkmnText
	dw Gorm2FinalPkmnText
	assert GORM + 1 == MYSTERYMAN
	dw MysterymanFinalPkmnText
	dw MysterymanFinalPkmnText
	assert MYSTERYMAN + 1 == ZINZOLIN
	dw Zinzolin1FinalPkmnText
	dw Zinzolin2FinalPkmnText

FinalText_SinglePhrases:
	table_width 2
	dw CarrieFinalPkmnText
	dw CalFinalPkmnText
	dw JackyFinalPkmnText
	dw MarlonFinalPkmnText
	dw ShauntalFinalPkmnText
	dw BurghFinalPkmnText
	dw RoxieFinalPkmnText
	dw CherenFinalPkmnText
	dw CilanFinalPkmnText
	dw SkylaFinalPkmnText
	dw DraydenFinalPkmnText
	dw MarshalFinalPkmnText
	dw GrimsleyFinalPkmnText
	dw ElesaFinalPkmnText
	dw ColressFinalPkmnText
	dw ChampionFinalPkmnText
	; ...
	dw BiancaFinalPkmnText
	dw PalmerFinalPkmnText
	dw ThortonFinalPkmnText
	dw InverFinalPkmnText
	dw AlderFinalPkmnText
	dw IrisFinalPkmnText
	dw CaitlinFinalPkmnText
	dw CynthiaFinalPkmnText
	dw RoodFinalPkmnText
	dw NFinalPkmnText
	dw HughFinalPkmnText
	dw NateFinalPkmnText
	dw RosaFinalPkmnText
	dw HilbertFinalPkmnText
	dw HildaFinalPkmnText
	; all trainers between CHAMPION and BIANCA are omitted
	assert_table_length NUM_TRAINER_CLASSES - (BIANCA - CHAMPION - 1)
