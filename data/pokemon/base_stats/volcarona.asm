	db  85,  60,  65, 100, 135, 105   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db BUG, FIRE   ; type
	db 15   ; catch rate
	db 248   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_SLOWEST   ; gender ratio, step cycles to hatch

	abilities_for VOLCARONA, FLAME_BODY, FLAME_BODY, SWARM
	db GROWTH_SLOW   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 3 SAt

	  ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       FLAME_CHARGE, REST,         \ ;9
		 WILD_CHARGE,  \ ;12
		 WILL_O_WISP,  ACROBATICS,   \ ;13
	     POISON_JAB,   GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 FLY
	 ; end
