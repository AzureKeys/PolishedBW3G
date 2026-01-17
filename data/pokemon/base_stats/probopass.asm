	db  60,  55, 145,  40,  75, 150  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, STEEL  ; type
	db 60  ; catch rate
	db 198  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for PROBOPASS, STURDY, MAGNET_PULL, SAND_FORCE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 1 Def, 2 SDf

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   DAZZLINGLEAM, \ ;10
		 EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_PUNCH,   \ ;T1
		 THUNDERPUNCH, SHOCK_WAVE,   \ ;T2
		 ICE_PUNCH,    \ ;T3
		 DYNAMICPUNCH, \ ;T4
		 EARTH_POWER,  ROLLOUT,      ANCIENTPOWER, \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	 ; end
