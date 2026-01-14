if DEF(FAITHFUL)
	db  75,  71,  70,  77,  40,  80  ; 413 BST
	 ;   hp  atk  def  spe  sat  sdf
else
	db  85,  81,  70,  87,  40,  80  ; 443 BST
	 ;   hp  atk  def  spe  sat  sdf
endc

	db DARK, NORMAL  ; type
	db 90  ; catch rate
	db 116  ; base exp
	db NO_ITEM, PECHA_BERRY  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for RATICATE_ALOLAN, GLUTTONY, HUSTLE, THICK_FAT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     BULK_UP,      VENOSHOCK,    HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 DARK_PULSE,   \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          STRENGTH,     \ ;HM
		 SHOCK_WAVE,   \ ;T2
		 ICY_WIND,     \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG ;T7
	 ; end
