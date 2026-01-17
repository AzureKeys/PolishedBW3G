	db  75, 105,  75,  45, 105,  75  ; 480 BST
	 ;   hp  atk  def  spe  sat  sdf

if DEF(FAITHFUL)
	db WATER, WATER  ; type
else
	db WATER, FIRE  ; type
endc
	db 75  ; catch rate
	db 164  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for OCTILLERY, SUCTION_CUPS, SNIPER, MOODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_WATER_1, EGG_WATER_2  ; egg groups

	ev_yield 1 Atk, 1 SAt

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  FLASH_CANNON, FLAMETHROWER, \ ;7
		 SLUDGE_BOMB,  FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 ENERGY_BALL,  SCALD,        \ ;11
		 WATER_PULSE,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 SURF,         WATERFALL,    \ ;HM
		 SEED_BOMB,    \ ;T1
		 ICY_WIND,     SIGNAL_BEAM,  GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 DOUBLE_EDGE ;T7
	 ; end
