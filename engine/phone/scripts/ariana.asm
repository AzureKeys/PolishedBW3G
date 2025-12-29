ArianaPhoneScript:
	checkflag ENGINE_ARIANA
	iffalsefwd .AskForRematch
	checkflag ENGINE_ARIANA_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext ArianaPhoneAfterBattleText
	end
.Waiting
	farwritetext ArianaPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_ARIANA
	setflag ENGINE_ARIANA_READY_FOR_REMATCH
	farwritetext ArianaPhoneAskRematchText
	end
	