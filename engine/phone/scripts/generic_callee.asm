PhoneScript_Random2:
	random 2
	end

PhoneScript_Random3:
	random 3
	end

PhoneScript_Random4:
	random 4
	end

PhoneScript_Random5:
	random 5
	end

PhoneScript_Random11:
	random 11
	end

PhoneScript_AnswerPhone_Male:
	checktime 1 << DAY
	iftruefwd PhoneScript_AnswerPhone_Male_Day
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd PhoneScript_AnswerPhone_Male_Nite
	readvar VAR_CALLERID
	end

PhoneScript_AnswerPhone_Male_Day:
	readvar VAR_CALLERID
	end

PhoneScript_AnswerPhone_Male_Nite:
	readvar VAR_CALLERID
	end

PhoneScript_AnswerPhone_Female:
	checktime 1 << DAY
	iftruefwd PhoneScript_AnswerPhone_Female_Day
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd PhoneScript_AnswerPhone_Female_Nite
	readvar VAR_CALLERID

	end

PhoneScript_AnswerPhone_Female_Day:
	readvar VAR_CALLERID

	end

PhoneScript_AnswerPhone_Female_Nite:
	readvar VAR_CALLERID

	end

PhoneScript_GreetPhone_Male:
	checktime 1 << DAY
	iftruefwd PhoneScript_GreetPhone_Male_Day
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd PhoneScript_GreetPhone_Male_Nite
	readvar VAR_CALLERID
	end

PhoneScript_GreetPhone_Male_Day:
	readvar VAR_CALLERID
	end

PhoneScript_GreetPhone_Male_Nite:
	readvar VAR_CALLERID
	end

PhoneScript_GreetPhone_Female:
	checktime 1 << DAY
	iftruefwd PhoneScript_GreetPhone_Female_Day
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd PhoneScript_GreetPhone_Female_Nite
	readvar VAR_CALLERID

	end

PhoneScript_GreetPhone_Female_Day:
	readvar VAR_CALLERID

	end

PhoneScript_GreetPhone_Female_Nite:
	readvar VAR_CALLERID

	end

PhoneScript_Generic_Male:
	readvar VAR_CALLERID
	end

PhoneScript_Generic_Female:
	readvar VAR_CALLERID

	end

PhoneScript_MonFlavorText:
	special RandomPhoneMon
	farscall PhoneScript_Random2
	ifequalfwd $0, .TooEnergetic
	farwritetext UnknownGenericText
	promptbutton
	farsjump PhoneScript_HangupText_Male

.TooEnergetic:
	farwritetext UnknownTougherThanEverText
	promptbutton
	farsjump PhoneScript_HangupText_Male

Phone_GrandmaString: db "Grandma@"
Phone_GrandpaString: db "Grandpa@"
Phone_MomString:     db "Mom@"
Phone_DadString:     db "Dad@"
Phone_SisterString:  db "Sister@"
Phone_BrotherString: db "Brother@"
