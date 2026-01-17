	db  45,  65,  34,  45,  40,  34  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC  ; type
	db 235  ; catch rate
	db 53  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for SHINX, RIVALRY, INTIMIDATE, GUTS
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 WILD_CHARGE,  \ ;12
	     SWAGGER,      \ ;14
		 VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_FANG,    \ ;T1
		 THUNDER_FANG, SHOCK_WAVE,   ICE_FANG,     \ ;T2
		 SIGNAL_BEAM,  \ ;T3
		 PLAY_ROUGH,   \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
