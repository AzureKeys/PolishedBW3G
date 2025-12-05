	db 130,  85,  80,  60,  85,  95  ; 535 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, ICE  ; type
	db 45  ; catch rate
	db 219  ; base exp
	db ALWAYS_ITEM_2, MYSTIC_WATER  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for LAPRAS, WATER_ABSORB, SHELL_ARMOR, HYDRATION
	db GROWTH_SLOW  ; growth rate
	dn EGG_MONSTER, EGG_WATER_1  ; egg groups

	ev_yield 2 HP

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 BULLDOZE,     SOLAR_BEAM,   IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     EARTHQUAKE,   RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DREAM_EATER,  \ ;10
		 DRAGON_PULSE, \ ;12
		 WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SURF,         STRENGTH,     WATERFALL
	 ; end
