MomPhoneScript1:
	farwritetext MomPhoneGreetingText
	promptbutton
	checkevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
	iftruefwd .CheckHappiness
	farwritetext MomCutePokemonText
	farwritetext MomPhoneHappinessIntroText
	promptbutton
	setevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
	
.CheckHappiness
	special GetFirstPokemonHappiness
	farwritetext MomHappinessText
	ifgreater 250 - 1, .LovesYouALot
	ifgreater 200 - 1, .ReallyTrustsYou
	ifgreater 150 - 1, .SortOfHappy
	ifgreater 100 - 1, .QuiteCute
	ifgreater  50 - 1, .NotUsedToYou
	sjumpfwd .LooksMean

.LovesYouALot:
	farwritetext MomHappinessRatingText_LovesYouALot
	sjumpfwd .Outro

.ReallyTrustsYou:
	farwritetext MomHappinessRatingText_ReallyTrustsYou
	sjumpfwd .Outro

.SortOfHappy:
	farwritetext MomHappinessRatingText_SortOfHappy
	sjumpfwd .Outro

.QuiteCute:
	farwritetext MomHappinessRatingText_QuiteCute
	sjumpfwd .Outro

.NotUsedToYou:
	farwritetext MomHappinessRatingText_NotUsedToYou
	sjumpfwd .Outro

.LooksMean:
	farwritetext MomHappinessRatingText_LooksMean
	; fallthrough
.Outro
	farwritetext MomPhoneOutroText
	end

MomPhoneScript2:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_MOM_LECTURE, .lecture
	specialphonecall SPECIALCALL_NONE
	end

.lecture
	farwritetext MomPhoneLectureText
	farwritetext MomPhoneHappinessIntroText
	promptbutton
	farwritetext MomPhoneOutroText
	setevent EVENT_TALKED_TO_MOM_AFTER_POKEMON
	specialphonecall SPECIALCALL_NONE
	end
