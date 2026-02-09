BiancaPhoneScript1:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_POKERUS, .pokerus
	farwritetext BiancaPhoneGreetingText
	promptbutton
	farwritetext BiancaPhoneGoToUndellaText
.done
	promptbutton
	farwritetext BiancaPhoneDoneText
	end

.pokerus
	farwritetext BiancaPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

BiancaPhoneScript2:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_BIANCA_INTRO, .intro
	ifequalfwd SPECIALCALL_BIANCA_CASTELIA, .castelia
	ifequalfwd SPECIALCALL_BIANCA_VIRBANK, .virbank
	ifequalfwd SPECIALCALL_BIANCA_P2, .P2
	ifequalfwd SPECIALCALL_BIANCA_MEMBERS_CARD, .members_card
	ifequalfwd SPECIALCALL_POKERUS, .pokerus
	specialphonecall SPECIALCALL_NONE
	end

.intro
	farwritetext BiancaPhoneIntroText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_GOT_BIANCAS_NUMBER
	end

.castelia
	farwritetext BiancaPhoneCasteliaText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_BIANCA_CASTELIA_CALL
	end

.virbank
	farwritetext BiancaPhoneVirbankText
	specialphonecall SPECIALCALL_NONE
	setmapscene CASTELIA_SKYARROW_BRIDGE_GATE, 1
	end

.P2
	farwritetext BiancaPhoneP2Text
	specialphonecall SPECIALCALL_NONE
	;setevent EVENT_CASTELIA_SEWER_BLOCKER
	end

.members_card
	farwritetext BiancaPhoneMembersCardText
	specialphonecall SPECIALCALL_NONE
	;setevent EVENT_BIANCA_MEMBERS_CARD_CALL
	;clearevent EVENT_NUVEMA_LAB_BIANCA
	end

.pokerus
	farwritetext BiancaPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end
