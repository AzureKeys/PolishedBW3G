	db  73,  67,  75, 109,  81, 100  ; 505 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, FAIRY  ; type
	db 75  ; catch rate
	db 178  ; base exp
	db ALWAYS_ITEM_2, ASPEAR_BERRY  ; held items
	dn GENDER_F75, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for NINETALES_ALOLAN, SNOW_CLOAK, SNOW_CLOAK, SNOW_WARNING
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe, 1 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    ROAR,         \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, DREAM_EATER,  \ ;10
	     ENERGY_BALL,  \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 AQUA_TAIL,    ICE_FANG,     \ ;T2
		 ICY_WIND,     \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 PLAY_ROUGH,   DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HEAL_BELL,    PAIN_SPLIT ;T7
	  ; end

