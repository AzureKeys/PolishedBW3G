NonTrainerCallerNames:
; entries correspond to PHONECONTACT_* constants (see constants/trainer_constants.asm)
	table_width 2
	dw EmptyString
	dw .mom
	dw .bill
	dw .cheren
	dw .bianca
	assert_table_length NUM_NONTRAINER_PHONECONTACTS + 1

.mom:
	text  "Mom:"
	done
.bill:
	text  "Amanita:"
	next1 "   #maniac"
	done
.bianca:
	text  "Prof.Bianca:"
	next1 "   #mon Prof."
	done
.cheren:
	text  "Cheren:"
	next1 "   <PK><MN> Trainer"
	done
