DanPhoneScript:
	checkflag ENGINE_DAN
	iffalsefwd .AskForRematch
	checkflag ENGINE_DAN_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext DanPhoneAfterBattleText
	end
.Waiting
	farwritetext DanPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_DAN
	setflag ENGINE_DAN_READY_FOR_REMATCH
	farwritetext DanPhoneAskRematchText
	end
	