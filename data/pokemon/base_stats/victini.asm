	db 100, 100, 100, 100, 100, 100   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FIRE   ; type
	db 3   ; catch rate
	db 255   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN   ; gender ratio, step cycles to hatch

	abilities_for VICTINI, PRESSURE, PRESSURE, PRESSURE
	  ;abilities_for VICTINI, VICTORY_STAR, VICTORY_STAR, VICTORY_STAR
	db GROWTH_SLOW   ; growth rate
	dn EGG_NONE, EGG_NONE   ; egg groups

	ev_yield 3 HP

	  ; tm/hm learnset
	tmhm PSYSHOCK,     \ ;1
	     HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     LIGHT_SCREEN, PROTECT,      TRICK_ROOM,   SAFEGUARD,    \  ;4
		 SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \  ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \  ;7
		 FIRE_BLAST,   SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         \  ;9
		 DAZZLINGLEAM, \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  ENERGY_BALL,  \ ;11
		 WILD_CHARGE,  \ ;12
		 WILL_O_WISP,  \ ;13
	     GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 THUNDER_WAVE ;15
	  ; end
