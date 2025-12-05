	db 100, 150, 120,  90, 120, 100   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db DRAGON, ELECTRIC   ; type
	db 3   ; catch rate
	db 255   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN   ; gender ratio, step cycles to hatch

	abilities_for ZEKROM, PRESSURE, PRESSURE, PRESSURE
	  ;abilities_for ZEKROM, TERAVOLT, TERAVOLT, TERAVOLT
	db GROWTH_SLOW   ; growth rate
	dn EGG_NONE, EGG_NONE   ; egg groups

	ev_yield 3 Atk

	  ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \  ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \  ;4
		 THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \  ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      FLASH_CANNON, \  ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \  ;9
		 STEEL_WING,   ROCK_SLIDE,   \ ;10
		 FOCUS_BLAST,  \ ;11
		 WILD_CHARGE,  DRAGON_PULSE, \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \  ;14
		 STONE_EDGE,   VOLT_SWITCH,  THUNDER_WAVE, \ ;15
		 CUT,          FLY,          STRENGTH
	  ; end
