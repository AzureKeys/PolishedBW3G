	db  60,  85,  69,  77,  60,  69   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL   ; type
	db 255   ; catch rate
	db 147   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_FAST   ; gender ratio, step cycles to hatch

	abilities_for WATCHOG, ILLUMINATE, KEEN_EYE, ANALYTIC
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 2 Atk

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DREAM_EATER,  \ ;10
		 FOCUS_BLAST,  \ ;11
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH
	 ; end
