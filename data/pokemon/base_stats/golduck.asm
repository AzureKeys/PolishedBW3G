	db  80,  82,  78,  85,  95,  80  ; 500 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 75  ; catch rate
	db 174  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GOLDUCK, DAMP, CLOUD_NINE, SWIFT_SWIM
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_GROUND  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   PSYSHOCK,     CALM_MIND,    \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  SCALD,        \ ;11
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SURF,         STRENGTH,     WATERFALL
	 ; end
