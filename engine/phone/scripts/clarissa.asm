ClarissaPhoneScript:
	checkflag ENGINE_CLARISSA
	iffalsefwd .AskForRematch
	checkflag ENGINE_CLARISSA_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext ClarissaPhoneAfterBattleText
	end
.Waiting
	farwritetext ClarissaPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_CLARISSA
	setflag ENGINE_CLARISSA_READY_FOR_REMATCH
	farwritetext ClarissaPhoneAskRematchText
	end
	