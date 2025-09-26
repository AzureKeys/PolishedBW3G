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
	ifequalfwd PHONE_SCHOOLBOY_JACK, .Jack
	ifequalfwd PHONE_FISHER_RALPH, .Ralph
	ifequalfwd PHONE_HIKER_ANTHONY, .Anthony
	ifequalfwd PHONE_BUG_CATCHER_ARNIE, .Arnie
	ifequalfwd PHONE_SCHOOLBOY_ALAN, .Alan
	ifequalfwd PHONE_FISHER_TULLY, .Tully
	ifequalfwd PHONE_POKEMANIAC_BRENT, .Brent
	ifequalfwd PHONE_BIRDKEEPER_VANCE, .Vance
	ifequalfwd PHONE_FISHER_WILTON, .Wilton
	ifequalfwd PHONE_HIKER_PARRY, .Parry

.Jack:
	farwritetext JackIntelligenceKeepsRisingText
	promptbutton
	end

.Joey:
	farwritetext JoeyMonLookingSharperText
	promptbutton
	end

.Wade:
	farwritetext WadeAreYourMonGrowingText
	promptbutton
	end

.Ralph:
	farwritetext RalphNeglectingKidsText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyMonAteSomeBerriesText
	promptbutton
	end

.Arnie:
	farwritetext ArnieMonIsSoCuteText
	promptbutton
	end

.Alan:
	farwritetext AlanGettingStrongerText
	promptbutton
	end

.Tully:
	farwritetext TullyMonHasGrownText
	promptbutton
	end

.Brent:
	farwritetext BrentRareTradeText
	promptbutton
	end

.Vance:
	farwritetext VanceMonHasBecomeTougherText
	promptbutton
	end

.Wilton:
	farwritetext WiltonMonHasGrownText
	promptbutton
	end

.Parry:
	farwritetext ParryNothingCanMatchText
	promptbutton
	end

Phone_WhosBragging_Female:
	readvar VAR_CALLERID
	ifequalfwd PHONE_POKEFAN_BEVERLY, .Beverly
	ifequalfwd PHONE_PICNICKER_LIZ, .Liz
	ifequalfwd PHONE_PICNICKER_TIFFANY, .Tiffany
	ifequalfwd PHONE_PICNICKER_ERIN, .Erin

.Beverly:
	farwritetext BeverlyMadeMonEvenCuterText
	promptbutton
	end

.Liz:
	farwritetext LizMonAlwaysWantsToNuzzleText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyMonIsAdorableText
	promptbutton
	end

.Erin:
	farwritetext ErinMonIsMuchStrongerText
	promptbutton
	end

Phone_WhoDefeatedMon_Male:
	readvar VAR_CALLERID
	ifequalfwd PHONE_SCHOOLBOY_JACK, .Jack
	ifequalfwd PHONE_FISHER_RALPH, .Ralph
	ifequalfwd PHONE_HIKER_ANTHONY, .Anthony
	ifequalfwd PHONE_BUG_CATCHER_ARNIE, .Arnie
	ifequalfwd PHONE_SCHOOLBOY_ALAN, .Alan
	ifequalfwd PHONE_FISHER_TULLY, .Tully
	ifequalfwd PHONE_POKEMANIAC_BRENT, .Brent
	ifequalfwd PHONE_BIRDKEEPER_VANCE, .Vance
	ifequalfwd PHONE_FISHER_WILTON, .Wilton
	ifequalfwd PHONE_HIKER_PARRY, .Parry

.Jack:
	farwritetext JackDefeatedMonText
	promptbutton
	end

.Joey:
	farwritetext JoeyDefeatedMonText
	promptbutton
	end

.Wade:
	farwritetext WadeDefeatedMonText
	promptbutton
	end

.Ralph:
	farwritetext RalphDefeatedMonText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyDefeatedMonText
	promptbutton
	end

.Arnie:
	farwritetext ArnieDefeatedMonText
	promptbutton
	end

.Alan:
	farwritetext AlanDefeatedMonText
	promptbutton
	end

.Tully:
	farwritetext TullyDefeatedMonText
	promptbutton
	end

.Brent:
	farwritetext BrentDefeatedMonText
	promptbutton
	end

.Vance:
	farwritetext VanceDefeatedMonText
	promptbutton
	end

.Wilton:
	farwritetext WiltonDefeatedMonText
	promptbutton
	end

.Parry:
	farwritetext ParryDefeatedMonText
	promptbutton
	end

Phone_WhoDefeatedMon_Female:
	readvar VAR_CALLERID
	ifequalfwd PHONE_POKEFAN_BEVERLY, .Beverly
	ifequalfwd PHONE_PICNICKER_LIZ, .Liz
	ifequalfwd PHONE_PICNICKER_TIFFANY, .Tiffany
	ifequalfwd PHONE_PICNICKER_ERIN, .Erin

.Beverly:
	farwritetext BeverlyDefeatedMonText
	promptbutton
	end

.Liz:
	farwritetext LizDefeatedMonText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyDefeatedMonText
	promptbutton
	end

.Erin:
	farwritetext ErinDefeatedMonText
	promptbutton
	end

Phone_WhoLostAMon_Male:
	readvar VAR_CALLERID
	ifequalfwd PHONE_SCHOOLBOY_JACK, .Jack
	ifequalfwd PHONE_FISHER_RALPH, .Ralph
	ifequalfwd PHONE_HIKER_ANTHONY, .Anthony
	ifequalfwd PHONE_BUG_CATCHER_ARNIE, .Arnie
	ifequalfwd PHONE_SCHOOLBOY_ALAN, .Alan
	ifequalfwd PHONE_FISHER_TULLY, .Tully
	ifequalfwd PHONE_POKEMANIAC_BRENT, .Brent
	ifequalfwd PHONE_BIRDKEEPER_VANCE, .Vance
	ifequalfwd PHONE_FISHER_WILTON, .Wilton
	ifequalfwd PHONE_HIKER_PARRY, .Parry

.Jack:
	farwritetext JackLostAMonText
	promptbutton
	end

.Joey:
	farwritetext JoeyLostAMonText
	promptbutton
	end

.Wade:
	farwritetext WadeLostAMonText
	promptbutton
	end

.Ralph:
	farwritetext RalphLostAMonText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyLostAMonText
	promptbutton
	end

.Arnie:
	farwritetext ArnieLostAMonText
	promptbutton
	end

.Alan:
	farwritetext AlanLostAMonText
	promptbutton
	end

.Tully:
	farwritetext TullyLostAMonText
	promptbutton
	end

.Brent:
	farwritetext BrentLostAMonText
	promptbutton
	end

.Vance:
	farwritetext VanceLostAMonText
	promptbutton
	end

.Wilton:
	farwritetext WiltonLostAMonText
	promptbutton
	end

.Parry:
	farwritetext ParryLostAMonText
	promptbutton
	end

Phone_WhoLostAMon_Female:
	readvar VAR_CALLERID
	ifequalfwd PHONE_POKEFAN_BEVERLY, .Beverly
	ifequalfwd PHONE_PICNICKER_LIZ, .Liz
	ifequalfwd PHONE_PICNICKER_TIFFANY, .Tiffany
	ifequalfwd PHONE_PICNICKER_ERIN, .Erin

.Beverly:
	farwritetext BeverlyLostAMonText
	promptbutton
	end

.Liz:
	farwritetext LizLostAMonText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyLostAMonText
	promptbutton
	end

.Erin:
	farwritetext ErinLostAMonText
	promptbutton
	end

PhoneScript_WantsToBattle_Male:
	farscall PhoneScript_RematchText_Male
	farsjump PhoneScript_HangupText_Male

PhoneScript_WantsToBattle_Female:
	farscall PhoneScript_RematchText_Female
	farsjump PhoneScript_HangupText_Female

PhoneScript_RematchText_Male:
	readvar VAR_CALLERID
	ifequalfwd PHONE_SCHOOLBOY_JACK, .Jack
	ifequalfwd PHONE_SAILOR_HUEY, .Huey
	ifequalfwd PHONE_FISHER_RALPH, .Ralph
	ifequalfwd PHONE_HIKER_ANTHONY, .Anthony
	ifequalfwd PHONE_BUG_CATCHER_ARNIE, .Arnie
	ifequalfwd PHONE_SCHOOLBOY_ALAN, .Alan
	ifequalfwd PHONE_FISHER_TULLY, .Tully
	ifequalfwd PHONE_POKEMANIAC_BRENT, .Brent
	ifequalfwd PHONE_BIRDKEEPER_VANCE, .Vance
	ifequalfwd PHONE_FISHER_WILTON, .Wilton
	ifequalfwd PHONE_HIKER_PARRY, .Parry

.Jack:
	farwritetext JackBattleRematchText
	promptbutton
	end

.Huey:
	farwritetext HueyBattleRematchText
	promptbutton
	end

.Joey:
	farwritetext JoeyBattleRematchText
	promptbutton
	end

.Wade:
	farwritetext WadeBattleRematchText
	promptbutton
	end

.Ralph:
	farwritetext RalphBattleRematchText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyBattleRematchText
	promptbutton
	end

.Arnie:
	farwritetext ArnieBattleRematchText
	promptbutton
	end

.Alan:
	farwritetext AlanBattleRematchText
	promptbutton
	end

.Tully:
	farwritetext TullyBattleRematchText
	promptbutton
	end

.Brent:
	farwritetext BrentBattleRematchText
	promptbutton
	end

.Vance:
	farwritetext VanceBattleRematchText
	promptbutton
	end

.Wilton:
	farwritetext WiltonBattleRematchText
	promptbutton
	end

.Parry:
	farwritetext ParryBattleRematchText
	promptbutton
	end

PhoneScript_RematchText_Female:
	readvar VAR_CALLERID
	ifequalfwd PHONE_PICNICKER_LIZ, .Liz
	ifequalfwd PHONE_PICNICKER_TIFFANY, .Tiffany
	ifequalfwd PHONE_PICNICKER_ERIN, .Erin

.Liz:
	farwritetext LizBattleRematchText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyBattleRematchText
	promptbutton
	end

.Erin:
	farwritetext ErinBattleRematchText
	promptbutton
	end

LizWrongNumberScript:
	farwritetext LizWrongNumberText
	end

TiffanyItsAwful:
	farwritetext TiffanyItsAwfulText
	end

PhoneScript_HangupText_Male:
	readvar VAR_CALLERID
	ifequalfwd PHONE_SCHOOLBOY_JACK, .Jack
	ifequalfwd PHONE_SAILOR_HUEY, .Huey
	ifequalfwd PHONE_FISHER_RALPH, .Ralph
	ifequalfwd PHONE_HIKER_ANTHONY, .Anthony
	ifequalfwd PHONE_JUGGLER_IRWIN, .Irwin
	ifequalfwd PHONE_BUG_CATCHER_ARNIE, .Arnie
	ifequalfwd PHONE_SCHOOLBOY_ALAN, .Alan
	ifequalfwd PHONE_FISHER_TULLY, .Tully
	ifequalfwd PHONE_POKEMANIAC_BRENT, .Brent
	ifequalfwd PHONE_BIRDKEEPER_VANCE, .Vance
	ifequalfwd PHONE_FISHER_WILTON, .Wilton
	ifequalfwd PHONE_BLACKBELT_KENJI, .Kenji
	ifequalfwd PHONE_HIKER_PARRY, .Parry

.Jack:
	farwritetext JackHangUpText
	end

.Huey:
	farwritetext HueyHangUpText
	end

.Joey:
	farwritetext JoeyHangUpText
	end

.Wade:
	farwritetext WadeHangUpText
	end

.Ralph:
	farwritetext RalphHangUpText
	end

.Anthony:
	farwritetext AnthonyHangUpText
	end

.Irwin:
	farwritetext IrwinHangUpText
	end

.Arnie:
	farwritetext ArnieHangUpText
	end

.Alan:
	farwritetext AlanHangUpText
	end

.Tully:
	farwritetext TullyHangUpText
	end

.Brent:
	farwritetext BrentHangUpText
	end

.Vance:
	farwritetext VanceHangUpText
	end

.Wilton:
	farwritetext WiltonHangUpText
	end

.Kenji:
	farwritetext KenjiHangUpText
	end

.Parry:
	farwritetext ParryHangUpText
	end

PhoneScript_HangupText_Female:
	readvar VAR_CALLERID
	ifequalfwd PHONE_POKEFAN_BEVERLY, .Beverly
	ifequalfwd PHONE_PICNICKER_LIZ, .Liz
	ifequalfwd PHONE_PICNICKER_TIFFANY, .Tiffany
	ifequalfwd PHONE_PICNICKER_ERIN, .Erin

.Beverly:
	farwritetext BeverlyHangUpText
	end

.Liz:
	farwritetext LizHangUpText
	end

.Tiffany:
	farwritetext TiffanyHangUpText
	end

.Erin:
	farwritetext ErinHangUpText
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

IrwinRocketRumorScript:
	farwritetext IrwinRocketTakeoverRumorText
	promptbutton
	sjump PhoneScript_HangupText_Male

ArnieSwarmScript:
	farwritetext ArnieSwarmText
	promptbutton
	sjump PhoneScript_HangupText_Male

RalphItemScript:
	farwritetext RalphItemText
	promptbutton
	sjump PhoneScript_HangupText_Male

AnthonySwarmScript:
	farwritetext AnthonySwarmText
	promptbutton
	sjump PhoneScript_HangupText_Male

PhoneScript_FoundItem_Male:
	readvar VAR_CALLERID
	ifequalfwd PHONE_SCHOOLBOY_ALAN, .Alan
	ifequalfwd PHONE_FISHER_TULLY, .Tully
	ifequalfwd PHONE_FISHER_WILTON, .Wilton

.Wade:
	farwritetext WadeFoundItemText
	end

.Alan:
	farwritetext AlanFoundItemText
	end

.Tully:
	farwritetext TullyFoundItemText
	end

.Wilton:
	farwritetext WiltonFoundItemText
	end

PhoneScript_FoundItem_Female:
	readvar VAR_CALLERID
	ifequalfwd PHONE_POKEFAN_BEVERLY, .Beverly
	ifequalfwd PHONE_PICNICKER_TIFFANY, .Tiffany

.Beverly:
	farwritetext BeverlyFoundItemText
	end

.Tiffany:
	farwritetext TiffanyFoundItemText
	end

KenjiCallingPhoneScript:
	farwritetext KenjiRemainDedicatedText
	promptbutton
	sjump PhoneScript_HangupText_Male
