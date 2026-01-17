	db  80,  80,  80,  80,  80,  80  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, ICE  ; type
	db 75  ; catch rate
	db 187  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GLALIE, INNER_FOCUS, ICE_BODY, MOODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_FAIRY, EGG_MINERAL  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DARK_PULSE,   HEX,          \ ;12
		 WATER_PULSE,  EXPLOSION,    \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 GYRO_BALL,    \ ;15
		 ICE_FANG,     \ ;T2
		 ICY_WIND,     SIGNAL_BEAM,  \ ;T3
		 ROLLOUT,      \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG ;T7
	 ; end
