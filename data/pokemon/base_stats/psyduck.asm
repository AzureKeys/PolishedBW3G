	db  50,  52,  48,  55,  65,  50  ; 320 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 190  ; catch rate
	db 80  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for PSYDUCK, DAMP, CLOUD_NINE, SWIFT_SWIM
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_GROUND  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   PSYSHOCK,     CALM_MIND,    \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 SKILL_SWAP,   SCALD,        \ ;11
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     SWAGGER,      \ ;14
		 SURF,         STRENGTH,     WATERFALL,    \ ;HM
		 AQUA_TAIL,    \ ;T2
		 ICE_PUNCH,    ICY_WIND,     SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, ZEN_HEADBUTT, \ ;T4
		 KNOCK_OFF,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
