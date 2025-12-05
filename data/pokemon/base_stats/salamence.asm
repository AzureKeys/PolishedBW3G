	db  95, 135,  80, 100, 110,  80  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, FLYING  ; type
	db 45  ; catch rate
	db 255  ; base exp
	db NO_ITEM, DRAGON_FANG  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for SALAMENCE, INTIMIDATE, INTIMIDATE, MOXIE
	db GROWTH_SLOW  ; growth rate
	dn EGG_DRAGON, EGG_DRAGON  ; egg groups

	ev_yield 3 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     IRON_TAIL,    \ ;5
	     EARTHQUAKE,   RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 STEEL_WING,   ROCK_SLIDE,   \ ;10
		 DRAGON_PULSE, \ ;12
		 SHADOW_CLAW,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 CUT,          FLY,          STRENGTH
	 ; end
