CarlaPhoneScript:
	checkflag ENGINE_CARLA
	iffalsefwd .AskForRematch
	checkflag ENGINE_CARLA_READY_FOR_REMATCH
	iftruefwd .Waiting
	farwritetext CarlaPhoneAfterBattleText
	end
.Waiting
	farwritetext CarlaPhoneWaitingText
	end
.AskForRematch
	setflag ENGINE_CARLA
	setflag ENGINE_CARLA_READY_FOR_REMATCH
	farwritetext CarlaPhoneAskRematchText
	end
	