	db  90, 120,  75,  45,  60,  60  ; 450 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FAIRY, FAIRY  ; type
	db 75  ; catch rate
	db 178  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F75, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GRANBULL, INTIMIDATE, QUICK_FEET, RATTLED
	db GROWTH_FAST  ; growth rate
	dn EGG_GROUND, EGG_FAIRY  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     BULK_UP,      HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   DAZZLINGLEAM, \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILD_CHARGE,  \ ;12
		 WATER_PULSE,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   THUNDER_WAVE, \ ;15
		 STRENGTH,     \ ;HM
		 FIRE_FANG,    FIRE_PUNCH,   OVERHEAT,     \ ;T1
		 THUNDER_FANG, THUNDERPUNCH, SHOCK_WAVE,   ICE_FANG,     \ ;T2
		 ICE_PUNCH,    SEISMIC_TOSS, \ ;T3
		 LOW_KICK,     DYNAMICPUNCH, \ ;T4
		 OUTRAGE,      \ ;T5
		 PLAY_ROUGH,   DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  SUPER_FANG,   HYPER_VOICE,  HEAL_BELL ;T7
	 ; end
