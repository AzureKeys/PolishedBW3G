LoisPhoneScript:
	checkflag ENGINE_LOIS
	iffalsefwd .AskForRematch
	checkflag ENGINE_LOIS_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext LoisPhoneAfterBattleText
	end
.Waiting
	farwritetext LoisPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_LOIS
	setflag ENGINE_LOIS_READY_FOR_REMATCH
	farwritetext LoisPhoneAskRematchText
	end
	