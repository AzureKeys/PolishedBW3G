	db  95,  65, 110,  65,  60, 130   ; 525 BST
	  ;   hp  atk  def  spe  sat  sdf

	db DARK, DARK   ; type
	db 45   ; catch rate
	db 197   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F12_5, HATCH_SLOWER   ; gender ratio, step cycles to hatch

	abilities_for UMBREON, SYNCHRONIZE, SYNCHRONIZE, INNER_FOCUS
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 2 SDf

	  ; tm/hm learnset
	tmhm CALM_MIND,    ROAR,         \ ;1
	     TOXIC,        HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
		 DARK_PULSE,   \ ;12
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 CUT,          \ ;HM
		 KNOCK_OFF,    SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  HEAL_BELL ;T7
	 ; end
