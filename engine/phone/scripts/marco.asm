MarcoPhoneScript:
	checkflag ENGINE_MARCO
	iffalsefwd .AskForRematch
	checkflag ENGINE_MARCO_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext MarcoPhoneAfterBattleText
	end
.Waiting
	farwritetext MarcoPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_MARCO
	setflag ENGINE_MARCO_READY_FOR_REMATCH
	farwritetext MarcoPhoneAskRematchText
	end
	