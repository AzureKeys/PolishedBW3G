DeanPhoneScript:
	checkflag ENGINE_DEAN
	iffalsefwd .AskForRematch
	checkflag ENGINE_DEAN_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext DeanPhoneAfterBattleText
	end
.Waiting
	farwritetext DeanPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_DEAN
	setflag ENGINE_DEAN_READY_FOR_REMATCH
	farwritetext DeanPhoneAskRematchText
	end
	