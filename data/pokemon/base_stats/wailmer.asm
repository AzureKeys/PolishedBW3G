	db 130,  70,  35,  60,  70,  35   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER   ; type
	db 125   ; catch rate
	db 80   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_SLOWEST   ; gender ratio, step cycles to hatch

	abilities_for WAILMER, WATER_VEIL, OBLIVIOUS, PRESSURE
	db GROWTH_MEDIUM_SLOW   ; growth rate
	dn EGG_GROUND, EGG_WATER_2   ; egg groups

	ev_yield 1 HP

	  ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HAIL,         HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \  ;14
		 SURF,         STRENGTH,     WATERFALL,    \ ;HM
		 AQUA_TAIL,    \ ;T2
		 ICY_WIND,     \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 ROLLOUT,      \ ;T5
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	  ; end
