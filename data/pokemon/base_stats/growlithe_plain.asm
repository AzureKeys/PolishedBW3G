	db  55,  70,  45,  60,  70,  50  ; 350 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE  ; type
	db 190  ; catch rate
	db 91  ; base exp
	db ALWAYS_ITEM_2, ASPEAR_BERRY  ; held items
	dn GENDER_F25, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GROWLITHE, INTIMIDATE, FLASH_FIRE, JUSTIFIED
	db GROWTH_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      SAFEGUARD,    \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     THIEF,        \ ;10
		 WILD_CHARGE,  \ ;12
		 WILL_O_WISP,  \ ;13
		 SWAGGER,      \ ;14
		 STRENGTH
	 ; end
