	db  95, 105,  85,  45, 125,  75  ; 530 BST
	 ;   hp  atk  def  spe  sat  sdf

	db GRASS, DRAGON  ; type
	db 45  ; catch rate
	db 212  ; base exp
	db NO_ITEM, SITRUS_BERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for EXEGGUTOR_ALOLAN, FRISK, FRISK, HARVEST
	db GROWTH_SLOW  ; growth rate
	dn EGG_PLANT, EGG_PLANT  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      TRICK_ROOM,   \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       PSYCHIC,      \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DREAM_EATER,  \ ;10
		 SKILL_SWAP,   ENERGY_BALL,  \ ;11
		 DRAGON_PULSE, \ ;12
		 EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 STRENGTH
	 ; end
