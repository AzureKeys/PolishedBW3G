ParkerPhoneScript:
	checkflag ENGINE_PARKER
	iffalsefwd .AskForRematch
	checkflag ENGINE_PARKER_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext ParkerPhoneAfterBattleText
	end
.Waiting
	farwritetext ParkerPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_PARKER
	setflag ENGINE_PARKER_READY_FOR_REMATCH
	farwritetext ParkerPhoneAskRematchText
	end
	