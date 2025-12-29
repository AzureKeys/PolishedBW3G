SophiePhoneScript:
	checkflag ENGINE_SOPHIE
	iffalsefwd .AskForRematch
	checkflag ENGINE_SOPHIE_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext SophiePhoneAfterBattleText
	end
.Waiting
	farwritetext SophiePhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_SOPHIE
	setflag ENGINE_SOPHIE_READY_FOR_REMATCH
	farwritetext SophiePhoneAskRematchText
	end
	