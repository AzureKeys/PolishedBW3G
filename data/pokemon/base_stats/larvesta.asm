	db  55,  85,  55,  60,  50,  55  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db BUG, FIRE  ; type
	db 45  ; catch rate
	db 72  ; base exp
	db SILVERPOWDER, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for LARVESTA, FLAME_BODY, FLAME_BODY, SWARM
	db GROWTH_SLOW  ; growth rate
	dn EGG_BUG, EGG_BUG  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         \ ;9
		 WILD_CHARGE,  \ ;12
		 WILL_O_WISP,  ACROBATICS,   \ ;13
	     U_TURN,       SWAGGER,      \ ;14
		 GIGA_DRAIN,   FIRE_FANG,    OVERHEAT,     \ ;T1
		 SIGNAL_BEAM,  \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 DOUBLE_EDGE ;T7
	 ; end
