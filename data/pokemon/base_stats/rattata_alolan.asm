	db  30,  56,  35,  72,  25,  35  ; 253 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, NORMAL  ; type
	db 255  ; catch rate
	db 57  ; base exp
	db NO_ITEM, PECHA_BERRY  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for RATTATA_ALOLAN, GLUTTONY, HUSTLE, THICK_FAT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 DARK_PULSE,   \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      U_TURN,       SWAGGER,      \ ;14
		 CUT,          \ ;HM
		 SHOCK_WAVE,   \ ;T2
		 ICY_WIND,     \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG ;T7
	 ; end
