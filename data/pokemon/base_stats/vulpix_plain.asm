	db  38,  41,  40,  65,  50,  65   ; 299 BST
	  ;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE   ; type
	db 190   ; catch rate
	db 63   ; base exp
	db ALWAYS_ITEM_2, ASPEAR_BERRY   ; held items
	dn GENDER_F75, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for VULPIX, FLASH_FIRE, FLASH_FIRE, DROUGHT
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 1 Spe

	  ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      SAFEGUARD,    \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     ENERGY_BALL,  \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  \ ;13
		 PAYBACK,      SWAGGER,      \ ;14
		 FIRE_FANG,    OVERHEAT,     \ ;T1
		 ZEN_HEADBUTT, \ ;T4
		 DOUBLE_EDGE,  PAIN_SPLIT ;T7
	  ; end
