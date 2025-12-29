EricPhoneScript:
	checkflag ENGINE_ERIC
	iffalsefwd .AskForRematch
	checkflag ENGINE_ERIC_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext EricPhoneAfterBattleText
	end
.Waiting
	farwritetext EricPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_ERIC
	setflag ENGINE_ERIC_READY_FOR_REMATCH
	farwritetext EricPhoneAskRematchText
	end
	