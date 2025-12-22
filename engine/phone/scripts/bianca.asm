BiancaPhoneScript1:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_POKERUS, .pokerus
	farwritetext ElmPhoneStartText
	end

.sawmrpokemon
	farwritetext ElmPhoneSawMrPokemonText
	end

.stolen
	farwritetext ElmPhonePokemonStolenText

.checkingegg
	farwritetext ElmPhoneCheckingEggText

.assistant
	farwritetext ElmPhoneAssistantText
	end

.eggunhatched
	farwritetext ElmPhoneEggUnhatchedText
	end

.egghatched
	farwritetext ElmPhoneEggHatchedText
	setevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	end

.discovery
	random $2
	ifequalfwd $0, .nextdiscovery
	farwritetext ElmPhoneDiscovery1Text
	end

.nextdiscovery
	farwritetext ElmPhoneDiscovery2Text
	end

.pokerus
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

BiancaPhoneScript2:
	readvar VAR_SPECIALPHONECALL
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

.disaster
	farwritetext ElmPhoneDisasterText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	end

.assistant
	farwritetext ElmPhoneEggAssistantText
	specialphonecall SPECIALCALL_NONE
	clearevent EVENT_ELMS_AIDE_IN_VIOLET_POKEMON_CENTER
	setevent EVENT_ELMS_AIDE_IN_LAB
	end

.rocket
	farwritetext ElmPhoneRocketText
	specialphonecall SPECIALCALL_NONE
	end

.gift
	farwritetext ElmPhoneGiftText
	specialphonecall SPECIALCALL_NONE
	end
