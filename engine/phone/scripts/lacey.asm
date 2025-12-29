LaceyPhoneScript:
	checkflag ENGINE_LACEY
	iffalsefwd .AskForRematch
	checkflag ENGINE_LACEY_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext LaceyPhoneAfterBattleText
	end
.Waiting
	farwritetext LaceyPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_LACEY
	setflag ENGINE_LACEY_READY_FOR_REMATCH
	farwritetext LaceyPhoneAskRematchText
	end
	