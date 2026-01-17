	db  50,  53,  48,  64,  53,  48  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE  ; type
	db 190  ; catch rate
	db 63  ; base exp
	db ORAN_BERRY, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for PANSEAR, GLUTTONY, GLUTTONY, BLAZE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     THIEF,        \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILL_O_WISP,  ACROBATICS,   SHADOW_CLAW,  \ ;13
		 PAYBACK,      SWAGGER,      \ ;14
		 CUT,          \ ;HM
		 FIRE_FANG,    FIRE_PUNCH,   OVERHEAT,     \ ;T1
		 GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     \ ;T4
		 KNOCK_OFF,    SUCKER_PUNCH ;T6
	 ; end
