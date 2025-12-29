JennyPhoneScript:
	checkflag ENGINE_JENNY
	iffalsefwd .AskForRematch
	checkflag ENGINE_JENNY_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext JennyPhoneAfterBattleText
	end
.Waiting
	farwritetext JennyPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_JENNY
	setflag ENGINE_JENNY_READY_FOR_REMATCH
	farwritetext JennyPhoneAskRematchText
	end
	