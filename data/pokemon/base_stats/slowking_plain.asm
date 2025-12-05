	db  95,  75,  80,  30, 100, 110  ; 490 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, PSYCHIC  ; type
	db 70  ; catch rate
	db 164  ; base exp
	db NO_ITEM, KINGS_ROCK  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SLOWKING, OBLIVIOUS, OWN_TEMPO, REGENERATOR
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MONSTER, EGG_WATER_1  ; egg groups

	ev_yield 3 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     BULLDOZE,     IRON_TAIL,    \ ;5
		 EARTHQUAKE,   RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   DREAM_EATER,  \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 SURF,         STRENGTH,     WATERFALL
	 ; end
