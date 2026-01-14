	db  50,  85,  55,  90,  65,  65  ; 410 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE  ; type
	db 190  ; catch rate
	db 152  ; base exp
	db NO_ITEM, MARANGABERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for PONYTA, RUN_AWAY, FLASH_FIRE, FLAME_BODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    \ ;5
	     RETURN,       \ ;6
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \ ;7
		 FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         ATTRACT,      \ ;9
	     WILD_CHARGE,  \ ;12
		 WILL_O_WISP,  \ ;13
		 SWAGGER,      \ ;14
		 STRENGTH,     \ ;HM
		 OVERHEAT,     \ ;T1
		 LOW_KICK,     \ ;T4
		 PLAY_ROUGH,   \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
