	db  61,  84,  65,  70,  70,  70  ; 420 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, DRAGON  ; type
	db 45  ; catch rate
	db 144  ; base exp
	db NO_ITEM, DRAGON_SCALE  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for DRAGONAIR, SHED_SKIN, SHED_SKIN, MARVEL_SCALE
	db GROWTH_SLOW  ; growth rate
	dn EGG_WATER_1, EGG_DRAGON  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DRAGON_PULSE, \ ;12
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 SURF,         WATERFALL,    \ ;HM
		 AQUA_TAIL,    SHOCK_WAVE,   \ ;T2
		 ICY_WIND,     \ ;T3
		 OUTRAGE,      \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
