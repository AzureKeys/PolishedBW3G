	db  50,  50,  50,  50,  50,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, ICE  ; type
	db 190  ; catch rate
	db 74  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SNORUNT, INNER_FOCUS, ICE_BODY, MOODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FAIRY, EGG_MINERAL  ; egg groups

	ev_yield 1 HP

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
	     RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 HEX,          \ ;12
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 ICE_FANG,     \ ;T2
		 ICY_WIND,     \ ;T3
		 ROLLOUT,      \ ;T5
		 DOUBLE_EDGE ;T7
	 ; end
