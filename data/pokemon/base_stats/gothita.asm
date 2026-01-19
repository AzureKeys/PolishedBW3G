	db  45,  30,  50,  45,  55,  65  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, PSYCHIC  ; type
	db 200  ; catch rate
	db 58  ; base exp
	db PERSIM_BERRY, SPELL_TAG  ; held items
	dn GENDER_F75, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for GOTHITA, FRISK, COMPETITIVE, SHADOW_TAG
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 1 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     THUNDERBOLT,  \ ;5
		 RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   ENERGY_BALL,  \ ;11
		 DARK_PULSE,   \ ;12
	     PAYBACK,      SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 SHOCK_WAVE,   \ ;T2
		 ICY_WIND,     SIGNAL_BEAM,  SEISMIC_TOSS, \ ;T3
		 ZEN_HEADBUTT, \ ;T4
		 TRICK,        \ ;T5
		 SUCKER_PUNCH, DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HEAL_BELL ;T7
	 ; end
