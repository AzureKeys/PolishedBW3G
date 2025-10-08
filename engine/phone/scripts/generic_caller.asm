Phone_GenericCall_Male:
	special RandomPhoneMon
	farscall PhoneScript_Random2
	ifequalfwd 0, .Bragging
	farscall PhoneScript_Generic_Male
	farsjump Phone_FoundAMon_Male

.Bragging:
	farsjump Phone_BraggingCall_Male

Phone_GenericCall_Female:
	special RandomPhoneMon
	farscall PhoneScript_Random2
	ifequalfwd 0, .Bragging
	farscall PhoneScript_Generic_Female
	farsjump Phone_FoundAMon_Female

.Bragging:
	farsjump Phone_BraggingCall_Female

Phone_BraggingCall_Male:
	farscall Phone_WhosBragging_Male
	farsjump Phone_FoundAMon_Male

Phone_BraggingCall_Female:
	farscall Phone_WhosBragging_Female
	farsjump Phone_FoundAMon_Female

Phone_FoundAMon_Male:
	special RandomPhoneWildMon
	farscall PhoneScript_Random2
	ifequalfwd 0, .GotAway
	farscall Phone_WhoDefeatedMon_Male
	farsjump PhoneScript_HangupText_Male

.GotAway:
	farsjump Phone_GotAwayCall_Male

Phone_FoundAMon_Female:
	special RandomPhoneWildMon
	farscall PhoneScript_Random2
	ifequalfwd 0, .GotAway
	farscall Phone_WhoDefeatedMon_Female
	farsjump PhoneScript_HangupText_Female

.GotAway:
	farsjump Phone_GotAwayCall_Female

Phone_GotAwayCall_Male:
	farscall Phone_WhoLostAMon_Male
	farsjump PhoneScript_HangupText_Male

Phone_GotAwayCall_Female:
	farscall Phone_WhoLostAMon_Female
	farsjump PhoneScript_HangupText_Female

Phone_WhosBragging_Male:
	readvar VAR_CALLERID
	end

Phone_WhosBragging_Female:
	readvar VAR_CALLERID

	end

Phone_WhoDefeatedMon_Male:
	readvar VAR_CALLERID
	end

Phone_WhoDefeatedMon_Female:
	readvar VAR_CALLERID

	end

Phone_WhoLostAMon_Male:
	readvar VAR_CALLERID
	end

Phone_WhoLostAMon_Female:
	readvar VAR_CALLERID

	end

PhoneScript_WantsToBattle_Male:
	farscall PhoneScript_RematchText_Male
	farsjump PhoneScript_HangupText_Male

PhoneScript_WantsToBattle_Female:
	farscall PhoneScript_RematchText_Female
	farsjump PhoneScript_HangupText_Female

PhoneScript_RematchText_Male:
	readvar VAR_CALLERID
	end

PhoneScript_RematchText_Female:
	readvar VAR_CALLERID

	end

PhoneScript_HangupText_Male:
	readvar VAR_CALLERID
	end

PhoneScript_HangupText_Female:
	readvar VAR_CALLERID

	end

Phone_CheckIfUnseenRare_Male:
	scall PhoneScriptRareWildMon
	iffalsefwd .HangUp
	farsjump Phone_GenericCall_Male

.HangUp:
	farsjump PhoneScript_HangupText_Male

Phone_CheckIfUnseenRare_Female:
	scall PhoneScriptRareWildMon
	iffalsefwd .HangUp
	farsjump Phone_GenericCall_Female

.HangUp:
	farsjump PhoneScript_HangupText_Female

PhoneScriptRareWildMon:
	special RandomPhoneRareWildMon
	end

PhoneScript_BugCatchingContest:
	sjump PhoneScript_HangupText_Male

PhoneScript_FoundItem_Male:
	readvar VAR_CALLERID
	end

PhoneScript_FoundItem_Female:
	readvar VAR_CALLERID

	end
