	db  45,  55,  39,  42,  35,  39  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 255  ; catch rate
	db 51  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for PATRAT, RUN_AWAY, KEEN_EYE, ANALYTIC
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
	     SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          \ ;HM
		 SEED_BOMB,    \ ;T1
		 AQUA_TAIL,    SHOCK_WAVE,   \ ;T2
		 GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     ZEN_HEADBUTT, \ ;T4
		 SUCKER_PUNCH, \ ;T6
		 SUPER_FANG ;T7
	 ; end
