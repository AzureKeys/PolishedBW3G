StdScripts::
; all scripts must be defined in this bank
	dw PokeCenterNurseScript
	dw DifficultBookshelfScript
	dw PictureBookshelfScript
	dw MagazineBookshelfScript
	dw TeamRocketOathScript
	dw IncenseBurnerScript
	dw MerchandiseShelfScript
	dw TownMapScript
	dw WindowScript
	dw TVScript
	dw Radio1Script
	dw Radio2Script
	dw TrashCanScript
	dw StrengthBoulderScript
	dw SmashRockScript
	dw PokeCenterSignScript
	dw MartSignScript
	dw ElevatorButtonScript
	dw DayToTextScript
	dw BugContestResultsWarpScript
	dw BugContestResultsScript
	dw AskNumber1MScript
	dw AskNumber2MScript
	dw RegisteredNumberMScript
	dw NumberAcceptedMScript
	dw NumberDeclinedMScript
	dw PhoneFullMScript
	dw RematchMScript
	dw GiftMScript
	dw PackFullMScript
	dw RematchGiftMScript
	dw AskNumber1FScript
	dw AskNumber2FScript
	dw RegisteredNumberFScript
	dw NumberAcceptedFScript
	dw NumberDeclinedFScript
	dw PhoneFullFScript
	dw RematchFScript
	dw GiftFScript
	dw PackFullFScript
	dw RematchGiftFScript
	dw GymStatue0Script
	dw GymStatue1Script
	dw GymStatue2Script
	dw GymStatue3Script
	dw PCScript
	dw GameCornerCoinVendorScript
	dw HappinessCheckScript
	dw CutTreeScript
	dw RefrigeratorScript
	dw SinkScript
	dw StoveScript
	dw VendingMachineScript
	dw TreeGrottoScript
	dw CaveGrottoScript
	dw KantoPostGymEventsScript
	dw ScalingMartScript

PokeCenterNurseScript:
	opentext
	checkevent EVENT_NURSE_SAW_TRAINER_STAR
	iftruefwd .star_center
	checktime 1 << MORN
	iftruefwd .morn
	checktime 1 << DAY
	iftruefwd .day
	checktime 1 << EVE
	iftruefwd .eve
	checktime 1 << NITE
	iftruefwd .nite
	sjumpfwd .ok

.morn
	checkevent EVENT_WELCOMED_TO_POKECOM_CENTER
	iftruefwd .morn_center
	checkevent EVENT_WELCOMING_TO_POKECOM_CENTER
	iffalsefwd .morn_center
	farwritetext PokeComNurseMornText
	promptbutton
	setevent EVENT_WELCOMED_TO_POKECOM_CENTER
	sjumpfwd .ok
.morn_center
	farwritetext NurseMornText
	promptbutton
	sjumpfwd .ok

.day
	checkevent EVENT_WELCOMED_TO_POKECOM_CENTER
	iftruefwd .day_center
	checkevent EVENT_WELCOMING_TO_POKECOM_CENTER
	iffalsefwd .day_center
	farwritetext PokeComNurseDayText
	promptbutton
	setevent EVENT_WELCOMED_TO_POKECOM_CENTER
	sjumpfwd .ok
.day_center
	farwritetext NurseDayText
	promptbutton
	sjumpfwd .ok

.eve
	checkevent EVENT_WELCOMED_TO_POKECOM_CENTER
	iftruefwd .eve_center
	checkevent EVENT_WELCOMING_TO_POKECOM_CENTER
	iffalsefwd .eve_center
	farwritetext PokeComNurseEveText
	promptbutton
	setevent EVENT_WELCOMED_TO_POKECOM_CENTER
	sjumpfwd .ok
.eve_center
	farwritetext NurseEveText
	promptbutton
	sjumpfwd .ok

.nite
	checkevent EVENT_WELCOMED_TO_POKECOM_CENTER
	iftruefwd .nite_center
	checkevent EVENT_WELCOMING_TO_POKECOM_CENTER
	iffalsefwd .nite_center
	farwritetext PokeComNurseNiteText
	promptbutton
	setevent EVENT_WELCOMED_TO_POKECOM_CENTER
	sjumpfwd .ok
.nite_center
	farwritetext NurseNiteText
	promptbutton
	; fallthrough

.ok
	readvar VAR_TRAINER_STARS
	ifequalfwd 0, .ask_heal
	farwritetext NurseTrainerStarText
	setevent EVENT_NURSE_SAW_TRAINER_STAR
	sjumpfwd .answer_heal

.ask_heal
	farwritetext NurseAskHealText
.answer_heal
	yesorno
	iffalsefwd .goodbye
	sjumpfwd .heal_pokemon

.star_center
	farwritetext NurseTheUsualText
	yesorno
	iffalsefwd .goodbye
.heal_pokemon
	farwritetext NurseTakePokemonText
	pause 20
	turnobject LAST_TALKED, LEFT
	pause 10
	special HealParty
	special SaveMusic
	playmusic MUSIC_NONE
	setval 0 ; Machine is at a Pokemon Center
	special HealMachineAnim
	pause 30
	special RestoreMusic
	turnobject LAST_TALKED, DOWN
	pause 10

	checkphonecall ; elm already called about pokerus
	iftruefwd .no
	checkflag ENGINE_CAUGHT_POKERUS ; nurse already talked about pokerus
	iftruefwd .no
	special SpecialCheckPokerus
	iftruefwd .pokerus
.no

	farwritetext NurseReturnPokemonText
	pause 20

.goodbye
	farwritetext NurseGoodbyeText

	turnobject LAST_TALKED, UP
	pause 10
	turnobject LAST_TALKED, DOWN
	pause 10

	waitbutton
	closetext
	sjumpfwd .done

.pokerus
	; already cleared earlier in the script
	checkevent EVENT_WELCOMED_TO_POKECOM_CENTER
	iftruefwd .pokerus_comcenter
	farwritetext NursePokerusText
	waitbutton
	closetext
	sjumpfwd .pokerus_done

.pokerus_comcenter
	farwritetext PokeComNursePokerusText
	waitbutton
	closetext

.pokerus_done
	setflag ENGINE_CAUGHT_POKERUS
	specialphonecall SPECIALCALL_POKERUS
.done
	turnobject PLAYER, DOWN
	end

DifficultBookshelfScript:
	farjumptext DifficultBookshelfText

PictureBookshelfScript:
	farjumptext PictureBookshelfText

MagazineBookshelfScript:
	farjumptext MagazineBookshelfText

TeamRocketOathScript:
	farjumptext TeamRocketOathText

IncenseBurnerScript:
	farjumptext IncenseBurnerText

MerchandiseShelfScript:
	farjumptext MerchandiseShelfText

RefrigeratorScript:
	farjumptext RefrigeratorText

SinkScript:
	farjumptext SinkText

StoveScript:
	farjumptext StoveText

TownMapScript:
	opentext
	farwritetext TownMapText
	waitbutton
	special Special_TownMap
	endtext

WindowScript:
	farjumptext WindowText

TVScript:
	readvar VAR_FACING
	ifnotequal UP, WrongSideScript
	farjumptext TVText

WrongSideScript:
	farjumptext WrongSideText

Radio1Script:
	callasm IsKantoRadioOffAir
	iftruefwd RadioOffAirScript
	opentext
	setval MAPRADIO_POKEMON_CHANNEL
	special MapRadio
	endtext

Radio2Script:
	callasm IsKantoRadioOffAir
	iftruefwd RadioOffAirScript
	opentext
	setval MAPRADIO_LUCKY_CHANNEL
	special MapRadio
	endtext

RadioOffAirScript:
	farjumptext RadioOffAirText

IsKantoRadioOffAir:
	call RegionCheck
	ld a, e
	cp KANTO_REGION
	jr nz, .no
	ld a, [wPokegearFlags]
	bit 3, a
	ld a, TRUE
	jr z, .ok
.no
	xor a ; ld a, FALSE
.ok
	ldh [hScriptVar], a
	ret

TrashCanScript:
	farjumptext TrashCanText

PCScript:
	readvar VAR_FACING
	ifnotequal UP, WrongSideScript
	opentext
	special PokemonCenterPC
	endtext

ElevatorButtonScript:
	playsound SFX_READ_TEXT_2
	pause 15
	playsound SFX_ELEVATOR_END
	end

StrengthBoulderScript:
	farsjump AskStrengthScript

SmashRockScript:
	farsjump AskRockSmashScript

PokeCenterSignScript:
	farjumptext PokeCenterSignText

MartSignScript:
	farjumptext MartSignText

DayToTextScript:
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .Monday
	ifequalfwd TUESDAY, .Tuesday
	ifequalfwd WEDNESDAY, .Wednesday
	ifequalfwd THURSDAY, .Thursday
	ifequalfwd FRIDAY, .Friday
	ifequalfwd SATURDAY, .Saturday
	getstring .SundayText, STRING_BUFFER_3
	end
.Monday:
	getstring .MondayText, STRING_BUFFER_3
	end
.Tuesday:
	getstring .TuesdayText, STRING_BUFFER_3
	end
.Wednesday:
	getstring .WednesdayText, STRING_BUFFER_3
	end
.Thursday:
	getstring .ThursdayText, STRING_BUFFER_3
	end
.Friday:
	getstring .FridayText, STRING_BUFFER_3
	end
.Saturday:
	getstring .SaturdayText, STRING_BUFFER_3
	end
.SundayText:
	db "Sunday@"
.MondayText:
	db "Monday@"
.TuesdayText:
	db "Tuesday@"
.WednesdayText:
	db "Wednesday@"
.ThursdayText:
	db "Thursday@"
.FridayText:
	db "Friday@"
.SaturdayText:
	db "Saturday@"

BugContestResultsWarpScript:
	special ClearBGPalettes
	scall BugContestResults_CopyContestantsToResults
	setevent EVENT_ROUTE_36_NATIONAL_PARK_GATE_OFFICER_CONTEST_DAY
	clearevent EVENT_ROUTE_36_NATIONAL_PARK_GATE_OFFICER_NOT_CONTEST_DAY
	setevent EVENT_WARPED_FROM_ROUTE_35_NATIONAL_PARK_GATE
	applymovement PLAYER, Movement_ContestResults_WalkAfterWarp
	; fallthrough

BugContestResultsScript:
	
	special PlayMapMusic
	end

BugContestResults_CopyContestantsToResults:
	checkevent EVENT_BUG_CATCHING_CONTESTANT_1A
	iftruefwd .skip1
	clearevent EVENT_BUG_CATCHING_CONTESTANT_1B
.skip1
	checkevent EVENT_BUG_CATCHING_CONTESTANT_2A
	iftruefwd .skip2
	clearevent EVENT_BUG_CATCHING_CONTESTANT_2B
.skip2
	checkevent EVENT_BUG_CATCHING_CONTESTANT_3A
	iftruefwd .skip3
	clearevent EVENT_BUG_CATCHING_CONTESTANT_3B
.skip3
	checkevent EVENT_BUG_CATCHING_CONTESTANT_4A
	iftruefwd .skip4
	clearevent EVENT_BUG_CATCHING_CONTESTANT_4B
.skip4
	checkevent EVENT_BUG_CATCHING_CONTESTANT_5A
	iftruefwd .skip5
	clearevent EVENT_BUG_CATCHING_CONTESTANT_5B
.skip5
	checkevent EVENT_BUG_CATCHING_CONTESTANT_6A
	iftruefwd .skip6
	clearevent EVENT_BUG_CATCHING_CONTESTANT_6B
.skip6
	checkevent EVENT_BUG_CATCHING_CONTESTANT_7A
	iftruefwd .skip7
	clearevent EVENT_BUG_CATCHING_CONTESTANT_7B
.skip7
	checkevent EVENT_BUG_CATCHING_CONTESTANT_8A
	iftruefwd .skip8
	clearevent EVENT_BUG_CATCHING_CONTESTANT_8B
.skip8
	checkevent EVENT_BUG_CATCHING_CONTESTANT_9A
	iftruefwd .skip9
	clearevent EVENT_BUG_CATCHING_CONTESTANT_9B
.skip9
	checkevent EVENT_BUG_CATCHING_CONTESTANT_10A
	iftruefwd .skip10
	clearevent EVENT_BUG_CATCHING_CONTESTANT_10B
.skip10
	end

AskNumber1MScript:
	special RandomPhoneMon
	readvar VAR_CALLERID
	ifequalfwd PHONE_YOUNGSTER_DAN, .Dan
	ifequalfwd PHONE_CYCLIST_FREDDY, .Freddy
	ifequalfwd PHONE_DANCER_ERIC, .Eric
	ifequalfwd PHONE_SCIENTIST_MARCO, .Marco
	ifequalfwd PHONE_BACKPACKER_PARKER, .Parker
	ifequalfwd PHONE_LINEBACKER_DEAN, .Dean
	
.Dan:
	farwritetext DanAskNumber1Text
	end
.Freddy:
	farwritetext FreddyAskNumber1Text
	end
.Eric:
	farwritetext EricAskNumber1Text
	end
.Marco:
	farwritetext MarcoAskNumber1Text
	end
.Parker:
	farwritetext ParkerAskNumber1Text
	end
.Dean:
	farwritetext DeanAskNumber1Text
	end

AskNumber2MScript:
	special RandomPhoneMon
	readvar VAR_CALLERID
	ifequalfwd PHONE_YOUNGSTER_DAN, .Dan
	ifequalfwd PHONE_CYCLIST_FREDDY, .Freddy
	ifequalfwd PHONE_DANCER_ERIC, .Eric
	ifequalfwd PHONE_SCIENTIST_MARCO, .Marco
	ifequalfwd PHONE_BACKPACKER_PARKER, .Parker
	ifequalfwd PHONE_LINEBACKER_DEAN, .Dean
	
.Dan:
	farwritetext DanAskNumber2Text
	end
.Freddy:
	farwritetext FreddyAskNumber2Text
	end
.Eric:
	farwritetext EricAskNumber2Text
	end
.Marco:
	farwritetext MarcoAskNumber2Text
	end
.Parker:
	farwritetext ParkerAskNumber2Text
	end
.Dean:
	farwritetext DeanAskNumber2Text
	end

RegisteredNumberMScript:
	farwritetext RegisteredNumber1Text
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
	end

NumberAcceptedMScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_YOUNGSTER_DAN, .Dan
	ifequalfwd PHONE_CYCLIST_FREDDY, .Freddy
	ifequalfwd PHONE_DANCER_ERIC, .Eric
	ifequalfwd PHONE_SCIENTIST_MARCO, .Marco
	ifequalfwd PHONE_BACKPACKER_PARKER, .Parker
	ifequalfwd PHONE_LINEBACKER_DEAN, .Dean
	
.Dan:
	farwritetext DanNumberAcceptedText
	waitendtext
.Freddy:
	farwritetext FreddyNumberAcceptedText
	waitendtext
.Eric:
	farwritetext EricNumberAcceptedText
	waitendtext
.Marco:
	farwritetext MarcoNumberAcceptedText
	waitendtext
.Parker:
	farwritetext ParkerNumberAcceptedText
	waitendtext
.Dean:
	farwritetext DeanNumberAcceptedText
	waitendtext

NumberDeclinedMScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_YOUNGSTER_DAN, .Dan
	ifequalfwd PHONE_CYCLIST_FREDDY, .Freddy
	ifequalfwd PHONE_DANCER_ERIC, .Eric
	ifequalfwd PHONE_SCIENTIST_MARCO, .Marco
	ifequalfwd PHONE_BACKPACKER_PARKER, .Parker
	ifequalfwd PHONE_LINEBACKER_DEAN, .Dean
	
.Dan:
	farwritetext DanNumberDeclinedText
	waitendtext
.Freddy:
	farwritetext FreddyNumberDeclinedText
	waitendtext
.Eric:
	farwritetext EricNumberDeclinedText
	waitendtext
.Marco:
	farwritetext MarcoNumberDeclinedText
	waitendtext
.Parker:
	farwritetext ParkerNumberDeclinedText
	waitendtext
.Dean:
	farwritetext DeanNumberDeclinedText
	waitendtext

PhoneFullMScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_YOUNGSTER_DAN, .Dan
	ifequalfwd PHONE_CYCLIST_FREDDY, .Freddy
	ifequalfwd PHONE_DANCER_ERIC, .Eric
	ifequalfwd PHONE_SCIENTIST_MARCO, .Marco
	ifequalfwd PHONE_BACKPACKER_PARKER, .Parker
	ifequalfwd PHONE_LINEBACKER_DEAN, .Dean
	
.Dan:
	farwritetext DanPhoneFullText
	waitendtext
.Freddy:
	farwritetext FreddyPhoneFullText
	waitendtext
.Eric:
	farwritetext EricPhoneFullText
	waitendtext
.Marco:
	farwritetext MarcoPhoneFullText
	waitendtext
.Parker:
	farwritetext ParkerPhoneFullText
	waitendtext
.Dean:
	farwritetext DeanPhoneFullText
	waitendtext

RematchMScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_YOUNGSTER_DAN, .Dan
	ifequalfwd PHONE_CYCLIST_FREDDY, .Freddy
	ifequalfwd PHONE_DANCER_ERIC, .Eric
	ifequalfwd PHONE_SCIENTIST_MARCO, .Marco
	ifequalfwd PHONE_BACKPACKER_PARKER, .Parker
	ifequalfwd PHONE_LINEBACKER_DEAN, .Dean
	
.Dan:
	farwritetext DanRematchText
	waitendtext
.Freddy:
	farwritetext FreddyRematchText
	waitendtext
.Eric:
	farwritetext EricRematchText
	waitendtext
.Marco:
	farwritetext MarcoRematchText
	waitendtext
.Parker:
	farwritetext ParkerRematchText
	waitendtext
.Dean:
	farwritetext DeanRematchText
	waitendtext

GiftMScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_YOUNGSTER_DAN, .Dan
	ifequalfwd PHONE_CYCLIST_FREDDY, .Freddy
	ifequalfwd PHONE_DANCER_ERIC, .Eric
	ifequalfwd PHONE_SCIENTIST_MARCO, .Marco
	ifequalfwd PHONE_BACKPACKER_PARKER, .Parker
	ifequalfwd PHONE_LINEBACKER_DEAN, .Dean
	
.Dan:
	farwritetext DanGiftText
	promptbutton
	end
.Freddy:
	farwritetext FreddyGiftText
	promptbutton
	end
.Eric:
	farwritetext EricGiftText
	promptbutton
	end
.Marco:
	farwritetext MarcoGiftText
	promptbutton
	end
.Parker:
	farwritetext ParkerGiftText
	promptbutton
	end
.Dean:
	farwritetext DeanGiftText
	promptbutton
	end

PackFullMScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_YOUNGSTER_DAN, .Dan
	ifequalfwd PHONE_CYCLIST_FREDDY, .Freddy
	ifequalfwd PHONE_DANCER_ERIC, .Eric
	ifequalfwd PHONE_SCIENTIST_MARCO, .Marco
	ifequalfwd PHONE_BACKPACKER_PARKER, .Parker
	ifequalfwd PHONE_LINEBACKER_DEAN, .Dean
	
.Dan:
	farwritetext DanPackFullText
	waitendtext
.Freddy:
	farwritetext FreddyPackFullText
	waitendtext
.Eric:
	farwritetext EricPackFullText
	waitendtext
.Marco:
	farwritetext MarcoPackFullText
	waitendtext
.Parker:
	farwritetext ParkerPackFullText
	waitendtext
.Dean:
	farwritetext DeanPackFullText
	waitendtext

RematchGiftMScript:
	end

AskNumber1FScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_LADY_LACEY, .Lacey
	ifequalfwd PHONE_PKMN_RANGER_ARIANA, .Ariana
	ifequalfwd PHONE_LASS_CARLA, .Carla
	ifequalfwd PHONE_MAID_CLARISSA, .Clarissa
	ifequalfwd PHONE_BACKPACKER_JENNY, .Jenny
	ifequalfwd PHONE_MAID_SOPHIE, .Sophie
	ifequalfwd PHONE_PARASOL_LADY_LOIS, .Lois
	
.Lacey:
	farwritetext LaceyAskNumber1Text
	end
.Ariana:
	farwritetext ArianaAskNumber1Text
	end
.Carla:
	farwritetext CarlaAskNumber1Text
	end
.Clarissa:
	farwritetext ClarissaAskNumber1Text
	end
.Jenny:
	farwritetext JennyAskNumber1Text
	end
.Sophie:
	farwritetext SophieAskNumber1Text
	end
.Lois:
	farwritetext LoisAskNumber1Text
	end

AskNumber2FScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_LADY_LACEY, .Lacey
	ifequalfwd PHONE_PKMN_RANGER_ARIANA, .Ariana
	ifequalfwd PHONE_LASS_CARLA, .Carla
	ifequalfwd PHONE_MAID_CLARISSA, .Clarissa
	ifequalfwd PHONE_BACKPACKER_JENNY, .Jenny
	ifequalfwd PHONE_MAID_SOPHIE, .Sophie
	ifequalfwd PHONE_PARASOL_LADY_LOIS, .Lois
	
.Lacey:
	farwritetext LaceyAskNumber2Text
	end
.Ariana:
	farwritetext ArianaAskNumber2Text
	end
.Carla:
	farwritetext CarlaAskNumber2Text
	end
.Clarissa:
	farwritetext ClarissaAskNumber2Text
	end
.Jenny:
	farwritetext JennyAskNumber2Text
	end
.Sophie:
	farwritetext SophieAskNumber2Text
	end
.Lois:
	farwritetext LoisAskNumber2Text
	end

RegisteredNumberFScript:
	farwritetext RegisteredNumber2Text
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
	end

NumberAcceptedFScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_LADY_LACEY, .Lacey
	ifequalfwd PHONE_PKMN_RANGER_ARIANA, .Ariana
	ifequalfwd PHONE_LASS_CARLA, .Carla
	ifequalfwd PHONE_MAID_CLARISSA, .Clarissa
	ifequalfwd PHONE_BACKPACKER_JENNY, .Jenny
	ifequalfwd PHONE_MAID_SOPHIE, .Sophie
	ifequalfwd PHONE_PARASOL_LADY_LOIS, .Lois
	
.Lacey:
	farwritetext LaceyNumberAcceptedText
	waitendtext
.Ariana:
	farwritetext ArianaNumberAcceptedText
	waitendtext
.Carla:
	farwritetext CarlaNumberAcceptedText
	waitendtext
.Clarissa:
	farwritetext ClarissaNumberAcceptedText
	waitendtext
.Jenny:
	farwritetext JennyNumberAcceptedText
	waitendtext
.Sophie:
	farwritetext SophieNumberAcceptedText
	waitendtext
.Lois:
	farwritetext LoisNumberAcceptedText
	waitendtext

NumberDeclinedFScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_LADY_LACEY, .Lacey
	ifequalfwd PHONE_PKMN_RANGER_ARIANA, .Ariana
	ifequalfwd PHONE_LASS_CARLA, .Carla
	ifequalfwd PHONE_MAID_CLARISSA, .Clarissa
	ifequalfwd PHONE_BACKPACKER_JENNY, .Jenny
	ifequalfwd PHONE_MAID_SOPHIE, .Sophie
	ifequalfwd PHONE_PARASOL_LADY_LOIS, .Lois
	
.Lacey:
	farwritetext LaceyNumberDeclinedText
	waitendtext
.Ariana:
	farwritetext ArianaNumberDeclinedText
	waitendtext
.Carla:
	farwritetext CarlaNumberDeclinedText
	waitendtext
.Clarissa:
	farwritetext ClarissaNumberDeclinedText
	waitendtext
.Jenny:
	farwritetext JennyNumberDeclinedText
	waitendtext
.Sophie:
	farwritetext SophieNumberDeclinedText
	waitendtext
.Lois:
	farwritetext LoisNumberDeclinedText
	waitendtext

PhoneFullFScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_LADY_LACEY, .Lacey
	ifequalfwd PHONE_PKMN_RANGER_ARIANA, .Ariana
	ifequalfwd PHONE_LASS_CARLA, .Carla
	ifequalfwd PHONE_MAID_CLARISSA, .Clarissa
	ifequalfwd PHONE_BACKPACKER_JENNY, .Jenny
	ifequalfwd PHONE_MAID_SOPHIE, .Sophie
	ifequalfwd PHONE_PARASOL_LADY_LOIS, .Lois
	
.Lacey:
	farwritetext LaceyPhoneFullText
	waitendtext
.Ariana:
	farwritetext ArianaPhoneFullText
	waitendtext
.Carla:
	farwritetext CarlaPhoneFullText
	waitendtext
.Clarissa:
	farwritetext ClarissaPhoneFullText
	waitendtext
.Jenny:
	farwritetext JennyPhoneFullText
	waitendtext
.Sophie:
	farwritetext SophiePhoneFullText
	waitendtext
.Lois:
	farwritetext LoisPhoneFullText
	waitendtext

RematchFScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_LADY_LACEY, .Lacey
	ifequalfwd PHONE_PKMN_RANGER_ARIANA, .Ariana
	ifequalfwd PHONE_LASS_CARLA, .Carla
	ifequalfwd PHONE_MAID_CLARISSA, .Clarissa
	ifequalfwd PHONE_BACKPACKER_JENNY, .Jenny
	ifequalfwd PHONE_MAID_SOPHIE, .Sophie
	ifequalfwd PHONE_PARASOL_LADY_LOIS, .Lois
	
.Lacey:
	farwritetext LaceyRematchText
	waitendtext
.Ariana:
	farwritetext ArianaRematchText
	waitendtext
.Carla:
	farwritetext CarlaRematchText
	waitendtext
.Clarissa:
	farwritetext ClarissaRematchText
	waitendtext
.Jenny:
	farwritetext JennyRematchText
	waitendtext
.Sophie:
	farwritetext SophieRematchText
	waitendtext
.Lois:
	farwritetext LoisRematchText
	waitendtext

GiftFScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_LADY_LACEY, .Lacey
	ifequalfwd PHONE_PKMN_RANGER_ARIANA, .Ariana
	ifequalfwd PHONE_LASS_CARLA, .Carla
	ifequalfwd PHONE_MAID_CLARISSA, .Clarissa
	ifequalfwd PHONE_BACKPACKER_JENNY, .Jenny
	ifequalfwd PHONE_MAID_SOPHIE, .Sophie
	ifequalfwd PHONE_PARASOL_LADY_LOIS, .Lois
	
.Lacey:
	farwritetext LaceyGiftText
	promptbutton
	end
.Ariana:
	farwritetext ArianaGiftText
	promptbutton
	end
.Carla:
	farwritetext CarlaGiftText
	promptbutton
	end
.Clarissa:
	farwritetext ClarissaGiftText
	promptbutton
	end
.Jenny:
	farwritetext JennyGiftText
	promptbutton
	end
.Sophie:
	farwritetext SophieGiftText
	promptbutton
	end
.Lois:
	farwritetext LoisGiftText
	promptbutton
	end

PackFullFScript:
	readvar VAR_CALLERID
	ifequalfwd PHONE_LADY_LACEY, .Lacey
	ifequalfwd PHONE_PKMN_RANGER_ARIANA, .Ariana
	ifequalfwd PHONE_LASS_CARLA, .Carla
	ifequalfwd PHONE_MAID_CLARISSA, .Clarissa
	ifequalfwd PHONE_BACKPACKER_JENNY, .Jenny
	ifequalfwd PHONE_MAID_SOPHIE, .Sophie
	ifequalfwd PHONE_PARASOL_LADY_LOIS, .Lois
	
.Lacey:
	farwritetext LaceyPackFullText
	waitendtext
.Ariana:
	farwritetext ArianaPackFullText
	waitendtext
.Carla:
	farwritetext CarlaPackFullText
	waitendtext
.Clarissa:
	farwritetext ClarissaPackFullText
	waitendtext
.Jenny:
	farwritetext JennyPackFullText
	waitendtext
.Sophie:
	farwritetext SophiePackFullText
	waitendtext
.Lois:
	farwritetext LoisPackFullText
	waitendtext

RematchGiftFScript:
	end

GymStatue0Script:
	getcurlandmarkname STRING_BUFFER_3
	opentext
	farwritetext GymStatue_CityGymText
	waitendtext

GymStatue1Script:
	getcurlandmarkname STRING_BUFFER_3
	opentext
	farwritetext GymStatue_CityGymText
	promptbutton
	farwritetext GymStatue_WinningTrainersText
	waitendtext

GymStatue2Script:
	getcurlandmarkname STRING_BUFFER_3
	opentext
	farwritetext GymStatue_CityGymText
	promptbutton
	farwritetext GymStatue_TwoWinningTrainersText
	waitendtext

GymStatue3Script:
	getcurlandmarkname STRING_BUFFER_3
	opentext
	farwritetext GymStatue_CityGymText
	promptbutton
	farwritetext GymStatue_ThreeWinningTrainersText
	waitendtext

GameCornerCoinVendorScript:
	faceplayer
	opentext
	farwritetext CoinVendor_WelcomeText
	promptbutton
	checkkeyitem COIN_CASE
	iftruefwd CoinVendor_IntroScript
	farwritetext CoinVendor_NoCoinCaseText
	waitendtext

CoinVendor_IntroScript:
	farwritetext CoinVendor_IntroText

.loop
	special Special_DisplayMoneyAndCoinBalance
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .Buy50
	ifequalfwd $2, .Buy500
	sjumpfwd .Cancel

.Buy50:
	checkcoins MAX_COINS - 50
	ifequalfwd HAVE_MORE, .CoinCaseFull
	checkmoney YOUR_MONEY, 1000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	givecoins 50
	takemoney YOUR_MONEY, 1000
	waitsfx
	playsound SFX_TRANSACTION
	farwritetext CoinVendor_Buy50CoinsText
	waitbutton
	sjump .loop

.Buy500:
	checkcoins MAX_COINS - 500
	ifequalfwd HAVE_MORE, .CoinCaseFull
	checkmoney YOUR_MONEY, 10000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	givecoins 500
	takemoney YOUR_MONEY, 10000
	waitsfx
	playsound SFX_TRANSACTION
	farwritetext CoinVendor_Buy500CoinsText
	waitbutton
	sjump .loop

.NotEnoughMoney:
	farwritetext CoinVendor_NotEnoughMoneyText
	waitendtext

.CoinCaseFull:
	farwritetext CoinVendor_CoinCaseFullText
	waitendtext

.Cancel:
	farwritetext CoinVendor_CancelText
	waitendtext

.MenuDataHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 4, 15, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db " 50 :  ¥1000@"
	db "500 : ¥10000@"
	db "Cancel@"

HappinessCheckScript:
	faceplayer
	opentext
	special GetFirstPokemonHappiness
	ifless 50, .Unhappy
	ifless 150, .KindaHappy
	farwritetext HappinessText3
	waitendtext

.KindaHappy:
	farwritetext HappinessText2
	waitendtext

.Unhappy:
	farwritetext HappinessText1
	waitendtext

Movement_ContestResults_WalkAfterWarp:
	step_right
	step_down
	turn_head_up
	step_end

CutTreeScript:
	farsjump AskCutTreeScript

VendingMachineScript:
	opentext
	farwritetext VendingMachineText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .FreshWater
	ifequalfwd $2, .SodaPop
	ifequalfwd $3, .Lemonade
	endtext

.FreshWater:
	checkmoney YOUR_MONEY, 200
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalsefwd .NotEnoughSpace
	takemoney YOUR_MONEY, 200
	getitemname FRESH_WATER, STRING_BUFFER_3
	scall .VendItem
	random $20
	ifnotequal $0, .Start
	giveitem FRESH_WATER
	iffalse .Start
	getitemname FRESH_WATER, STRING_BUFFER_3
	sjumpfwd .ExtraItem

.SodaPop:
	checkmoney YOUR_MONEY, 300
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalsefwd .NotEnoughSpace
	takemoney YOUR_MONEY, 300
	getitemname SODA_POP, STRING_BUFFER_3
	scall .VendItem
	random $20
	ifnotequal $0, .Start
	giveitem SODA_POP
	iffalse .Start
	getitemname SODA_POP, STRING_BUFFER_3
	sjumpfwd .ExtraItem

.Lemonade:
	checkmoney YOUR_MONEY, 350
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalsefwd .NotEnoughSpace
	takemoney YOUR_MONEY, 350
	getitemname LEMONADE, STRING_BUFFER_3
	scall .VendItem
	random $20
	ifnotequal $0, .Start
	giveitem LEMONADE
	iffalse .Start
	getitemname LEMONADE, STRING_BUFFER_3
	sjumpfwd .ExtraItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	farwritetext VendingMachineClangText
	special ShowItemIcon
	promptbutton
	itemnotify
	end

.ExtraItem:
	pause 10
	playsound SFX_ENTER_DOOR
	farwritetext VendingMachineScoreText
	special ShowItemIcon
	promptbutton
	itemnotify
	sjump .Start

.NotEnoughMoney:
	farwritetext VendingMachineNoMoneyText
	waitbutton
	sjump .Start

.NotEnoughSpace:
	farwritetext VendingMachineNoSpaceText
	waitbutton
	sjump .Start

.MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 19, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Fresh Water  ¥200@"
	db "Soda Pop     ¥300@"
	db "Lemonade     ¥350@"
	db "Cancel@"

TreeGrottoScript:
	scall _HiddenGrottoInitScript
	iffalse_endtext
	closetext
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	pause 15
	callasm _HiddenGrottoBackupMap
	warpfacing UP, HIDDEN_TREE_GROTTO, 4, 15
	end

CaveGrottoScript:
	scall _HiddenGrottoInitScript
	iffalse_endtext
	closetext
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	pause 15
	callasm _HiddenGrottoBackupMap
	warpfacing UP, HIDDEN_CAVE_GROTTO, 35, 85
	end

_HiddenGrottoInitScript:
	callasm .StoreCurHiddenGrotto
	opentext
	farwritetext HiddenGrottoText
	yesorno
	end

.StoreCurHiddenGrotto:
	ldh a, [hScriptVar]
	ld [wCurHiddenGrotto], a
	ret

_HiddenGrottoBackupMap:
	ld a, [wMapGroup]
	ld [wBackupMapGroup], a
	ld a, [wMapNumber]
	ld [wBackupMapNumber], a
	ret

KantoPostGymEventsScript:
	end
	
ScalingMartScript:
	opentext
	checkflag ENGINE_LEGENDBADGE
	iffalsefwd .check_jet
	checkflag ENGINE_TOXICBADGE
	iffalsefwd .seven_badge
	pokemart MARTTYPE_STANDARD, MART_EIGHT_BADGES
	sjump .done
.check_jet
	checkflag ENGINE_JETBADGE
	iffalsefwd .check_garnish
	checkflag ENGINE_TOXICBADGE
	iffalsefwd .five_badge
.seven_badge
	pokemart MARTTYPE_STANDARD, MART_SEVEN_BADGES
	sjump .done
.check_garnish
	checkflag ENGINE_GARNISHBADGE
	iffalsefwd .check_basic
	checkflag ENGINE_TOXICBADGE
	iftruefwd .five_badge
	checkflag ENGINE_BASICBADGE
	iffalsefwd .four_badge
.five_badge
	pokemart MARTTYPE_STANDARD, MART_FIVE_BADGES
	sjump .done
.check_basic
	checkflag ENGINE_BASICBADGE
	iffalsefwd .check_toxic
	checkflag ENGINE_TOXICBADGE
	iftrue .five_badge
.four_badge
	pokemart MARTTYPE_STANDARD, MART_FOUR_BADGES
	sjump .done
.check_toxic
	checkflag ENGINE_TOXICBADGE
	iftrue .four_badge
	checkflag ENGINE_INSECTBADGE
	iffalsefwd .check_spooky
	pokemart MARTTYPE_STANDARD, MART_THREE_BADGES
	sjump .done
.check_spooky
	checkflag ENGINE_SPOOKYBADGE
	iffalsefwd .check_wave
	pokemart MARTTYPE_STANDARD, MART_TWO_BADGES
	sjump .done
.check_wave
	checkflag ENGINE_WAVEBADGE
	iffalsefwd .check_dex
	pokemart MARTTYPE_STANDARD, MART_ONE_BADGE
	sjump .done
.check_dex
	checkflag ENGINE_POKEDEX
	iffalsefwd .no_dex
	pokemart MARTTYPE_STANDARD, MART_NO_BADGES
	sjump .done
.no_dex
	pokemart MARTTYPE_STANDARD, MART_NO_DEX
.done
	closetext
	end
