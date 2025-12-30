PlayersHouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PlayersHouse2FInitializeRoom
	callback MAPCALLBACK_TILES, PlayersHouse2FSetSpawn

	def_warp_events
	warp_event  7,  0, PLAYERS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_UP, PlayersHousePC
	bg_event  3,  1, BGEVENT_READ, PlayersHouseRadio
	bg_event  5,  1, BGEVENT_READ, PokemonJournalProfElmScript
	bg_event  6,  0, BGEVENT_IFSET, PlayersHousePoster

	def_object_events
	object_event  4,  2, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GameConsole, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  4,  4, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll1, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  5,  4, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll2, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  0,  1, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BigDoll, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL

PlayersHouse2FInitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	endcallback

PlayersHouse2FSetSpawn:
	special ToggleMaptileDecorations
	endcallback

Doll1:
	describedecoration 1

Doll2:
	describedecoration 2

BigDoll:
	describedecoration 3

GameConsole:
	describedecoration 4

PlayersHousePoster:
	dw EVENT_PLAYERS_ROOM_POSTER
	describedecoration 0

PlayersHouseRadio:

;if DEF(DEBUG)

	opentext
	; time
	special Special_SetDayOfWeek
	special Special_InitialClearDSTFlag
	; full pokegear
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_EXPN_CARD
	; pokedex
	setflag ENGINE_POKEDEX
;	setflag ENGINE_UNOWN_DEX
	; judge machine
	setflag ENGINE_JUDGE_MACHINE
	; all key items
for x, 1, NUM_KEY_ITEMS + 1
if x != MACHINE_PART
	givekeyitem x
endc
endr
	; all tms+hms
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr
	; useful items
for x, POKE_BALL, CHERISH_BALL + 1
if x != PARK_BALL && x != SAFARI_BALL
	giveitem x, 99
endc
endr
	giveitem MAX_POTION, 99
	giveitem FULL_RESTORE, 99
	giveitem MAX_REVIVE, 99
	giveitem MAX_ELIXIR, 99
	giveitem HP_UP, 99
	giveitem PROTEIN, 99
	giveitem IRON, 99
	giveitem CARBOS, 99
	giveitem CALCIUM, 99
	giveitem ZINC, 99
	giveitem RARE_CANDY, 99
	giveitem PP_UP, 99
	giveitem PP_MAX, 99
	giveitem SACRED_ASH, 99
	giveitem MAX_REPEL, 99
	giveitem MAX_REPEL, 99
	giveitem ESCAPE_ROPE, 99
	giveitem ABILITY_CAP, 99
	giveitem LEAF_STONE, 99
	giveitem FIRE_STONE, 99
	giveitem WATER_STONE, 99
	giveitem THUNDERSTONE, 99
	giveitem ICE_STONE, 99
	giveitem MOON_STONE, 99
	giveitem SUN_STONE, 99
	giveitem DUSK_STONE, 99
	giveitem SHINY_STONE, 99
	giveitem ODD_SOUVENIR, 99
	giveitem EXP_SHARE, 99
	giveitem LEFTOVERS, 99
	giveitem MULCH, 99
	giveitem SWEET_HONEY, 99
	giveitem HEART_SCALE, 99
	giveitem RED_SHARD, 99
	giveitem BLUE_SHARD, 99
	giveitem GREEN_SHARD, 99
	giveitem YELLOW_SHARD, 99
	giveitem GOLD_LEAF, 99
	giveitem MINT_LEAF, 99
	giveitem BOTTLE_CAP, 99
	giveitem BIG_NUGGET, 99
	giveitem ARMOR_SUIT, 1
	; all decorations except Diploma
for x, EVENT_DECO_BED_1, EVENT_DECO_BIG_LAPRAS_DOLL + 1
	setevent x
endr
	; max money
	givemoney YOUR_MONEY, 1000000
	givemoney YOUR_MONEY, 1000000
	givemoney YOUR_MONEY, 1000000
	givemoney YOUR_MONEY, 1000000
	givemoney YOUR_MONEY, 1000000
	givemoney YOUR_MONEY, 1000000
	givemoney YOUR_MONEY, 1000000
	givemoney YOUR_MONEY, 1000000
	givemoney YOUR_MONEY, 1000000
	givemoney YOUR_MONEY, 999999
	givecoins 50000
	loadmem wBattlePoints+0, 0
	loadmem wBattlePoints+1, 250
	; all badges
	setflag ENGINE_WAVEBADGE
	setflag ENGINE_SPOOKYBADGE
	setflag ENGINE_INSECTBADGE
	setflag ENGINE_TOXICBADGE
	setflag ENGINE_BASICBADGE
	setflag ENGINE_GARNISHBADGE
	setflag ENGINE_JETBADGE
	setflag ENGINE_LEGENDBADGE
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
	setevent EVENT_BEAT_MARLON
	setevent EVENT_BEAT_SHAUNTAL
	setevent EVENT_BEAT_BURGH
	setevent EVENT_BEAT_ROXIE
	setevent EVENT_BEAT_CHEREN
	setevent EVENT_BEAT_CILAN
	setevent EVENT_BEAT_SKYLA
	setevent EVENT_BEAT_DRAYDEN
	setevent EVENT_BEAT_POKEMON_LEAGUE
	setevent EVENT_BATTLE_TOWER_OPEN
	clearevent EVENT_BATTLE_TOWER_CLOSED
	; fly anywhere
	setflag ENGINE_FLYPOINT_HUMILAU
	setflag ENGINE_FLYPOINT_LACUNOSA
	setflag ENGINE_FLYPOINT_UNDELLA
	; post-e4
	setflag ENGINE_CREDITS_SKIP
	; good party
	givepoke KYUREM, KYUREM_WHITE_FORM, 100, BRIGHTPOWDER
	loadmem wPartyMon1EVs+0, 252
	loadmem wPartyMon1EVs+1, 252
	loadmem wPartyMon1EVs+2, 252
	loadmem wPartyMon1EVs+3, 252
	loadmem wPartyMon1EVs+4, 252
	loadmem wPartyMon1EVs+5, 252
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	loadmem wPartyMon1Personality, ABILITY_2 | NAT_SATK_UP_ATK_DOWN
	loadmem wPartyMon1Stats+0, HIGH(999)
	loadmem wPartyMon1Stats+1, LOW(999)
	loadmem wPartyMon1Stats+2, HIGH(999)
	loadmem wPartyMon1Stats+3, LOW(999)
	loadmem wPartyMon1Stats+4, HIGH(999)
	loadmem wPartyMon1Stats+5, LOW(999)
	loadmem wPartyMon1Stats+6, HIGH(999)
	loadmem wPartyMon1Stats+7, LOW(999)
	loadmem wPartyMon1Stats+8, HIGH(999)
	loadmem wPartyMon1Stats+9, LOW(999)
	loadmem wPartyMon1Moves+0, BRINE
	loadmem wPartyMon1Moves+1, RAZOR_SHELL
	loadmem wPartyMon1Moves+2, THUNDER_FANG
	loadmem wPartyMon1Moves+3, SHOCK_WAVE
	; hm slave
	givepoke KYUREM, KYUREM_BLACK_FORM, 100, LEFTOVERS
	loadmem wPartyMon2Moves+0, POISON_FANG
	loadmem wPartyMon2Moves+1, ICE_FANG
	loadmem wPartyMon2Moves+2, SIGNAL_BEAM
	loadmem wPartyMon2Moves+3, QUIVER_DANCE
	loadmem wPartyMon2PP+0, 15
	loadmem wPartyMon2PP+1, 15
	loadmem wPartyMon2PP+2, 10
	loadmem wPartyMon2PP+3, 10
	loadmem wPartyMon2PokerusStatus, 1
	; variant form test
	givepoke UNFEZANT, UNFEZANT_FEMALE_FORM, 50
	loadmem wPartyMon3Shiny, SHINY_MASK
	loadmem wPartyMon3PokerusStatus, POKERUS_CURED
	; ext species test
	givepoke DUDUNSPARCE, DUDUNSPARCE_THREE_SEGMENT_FORM, 50
	; evolve during battle
	givepoke PUPITAR, 54
	loadmem wPartyMon5Exp+2, LOW(207967)
	loadmem wPartyMon5Exp+1, HIGH(207967)
	loadmem wPartyMon5Exp+0, 207967 >> 16
	; fill pokedex
	callasm FillPokedex
;	; new bark events
	addcellnum PHONE_MOM
	setmapscene PLAYERS_HOUSE_1F, $1
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	addcellnum PHONE_BIANCA
	addcellnum PHONE_CHEREN
	addcellnum PHONE_BILL
	warpfacing DOWN, ROUTE_22, 7, 9
	closetext
	end

FillPokedex:
	ld hl, wPokedexSeen
	call .Fill
	ld hl, wPokedexCaught
.Fill:
	ld a, %11111111
	ld bc, NUM_UNIQUE_POKEMON / 8
	rst ByteFill
if NUM_UNIQUE_POKEMON % 8
	ld [hl], 2**(NUM_UNIQUE_POKEMON % 8) - 1
endc
	ret

;else

	checkevent EVENT_GOT_A_POKEMON
	iftruefwd .NormalRadio
	opentext
	writetext PlayerRadioText4
	pause 45
	endtext
	end

.NormalRadio:
	jumpstd radio1

;endc

PokemonJournalProfElmScript:
	setflag ENGINE_READ_PROF_ELM_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "#mon Prof.Elm!"

	para "Prof.Elm was the"
	line "top student of"
	cont "Prof.Oak."

	para "They're said to"
	line "often argue about"
	cont "research."
	done

PlayersHousePC:
	opentext
	special Special_PlayersHousePC
	iftruefwd .Warp
	endtext
.Warp:
	warp NONE, 0, 0
	end

PlayerRadioText1:
	text "Prof.Oak's #mon"
	line "Talk! Please tune"
	cont "in next time!"
	done

PlayerRadioText2:
	text "#mon Channel!"
	done

PlayerRadioText3:
	text "This is DJ Mary,"
	line "your co-host!"
	done

PlayerRadioText4:
	text "#mon!"
	line "#mon Channel…"
	done
