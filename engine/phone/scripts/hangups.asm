JackPhoneTipsScript:
	farwritetext JackHeardSomeGreatTipsText
	promptbutton
	sjump PhoneScript_HangupText_Male

BeverlyHangUpScript:
	farwritetext BeverlyLetsChatAboutMonAgainText
	promptbutton
	sjump PhoneScript_HangupText_Female

HueyHangUpScript:
	farwritetext HueyWeHaveToBattleAgainSometimeText
	promptbutton
	sjump PhoneScript_HangupText_Male

JoeyHangUpScript: ; TODO: use this
	farwritetext JoeyDevisingStrategiesText
	promptbutton
	sjump PhoneScript_HangupText_Male

WadeNoBerriesScript:
	farwritetext WadeNoBerriesText
	promptbutton
	sjump PhoneScript_HangupText_Male

ArnieHangUpScript:
	farwritetext ArnieHaventSeenRareMonText
	promptbutton
	sjump PhoneScript_HangupText_Male

AlanHangUpScript:
	farwritetext AlanHaventPickedUpAnythingText
	promptbutton
	sjump PhoneScript_HangupText_Male

TullyNoItemScript:
	farwritetext TullyNoItemText
	promptbutton
	sjump PhoneScript_HangupText_Male

BrentHangUpScript:
	farwritetext BrentSorryImTooBusyText
	promptbutton
	sjump PhoneScript_HangupText_Male

TiffanyNoItemScript:
	farwritetext TiffanyNoItemText
	promptbutton
	sjump PhoneScript_HangupText_Female

VanceLookingForwardScript:
	farwritetext VanceLookingForwardText
	promptbutton
	sjump PhoneScript_HangupText_Male

WiltonHaventFoundAnythingScript:
	farwritetext WiltonHaventFoundAnythingText
	promptbutton
	sjump PhoneScript_HangupText_Male

IrwinRandomTextScript:
	random 3
	ifequalfwd 0, IrwinEscapadeScript
	ifequalfwd 1, IrwinGoodMatchScript
	ifequalfwd 2, IrwinSoMuchToChatAboutScript

IrwinEscapadeScript:
	farwritetext IrwinYourEscapadesRockText
	promptbutton
	sjump PhoneScript_HangupText_Male

IrwinGoodMatchScript:
	farwritetext IrwinGoodMatchText
	promptbutton
	sjump PhoneScript_HangupText_Male

IrwinSoMuchToChatAboutScript:
	farwritetext IrwinSoMuchToChatAboutText
	promptbutton
	sjump PhoneScript_HangupText_Male
