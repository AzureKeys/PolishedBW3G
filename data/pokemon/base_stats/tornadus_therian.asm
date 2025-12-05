	db  79, 100,  80, 121, 110,  90   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db FLYING, FLYING   ; type
	db 3   ; catch rate
	db 255   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F0, HATCH_UNKNOWN   ; gender ratio, step cycles to hatch

	abilities_for TORNADUS_THERIAN, REGENERATOR, REGENERATOR, REGENERATOR
	db GROWTH_SLOW   ; growth rate
	dn EGG_NONE, EGG_NONE   ; egg groups

	ev_yield 3 Spe

	  ; tm/hm learnset
	tmhm BULK_UP,      HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       PSYCHIC,      \  ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  SANDSTORM,    AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  \ ;11
		 DARK_PULSE,   \ ;12
		 ACROBATICS,   \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \  ;14
		 FLY,          STRENGTH
	  ; end
