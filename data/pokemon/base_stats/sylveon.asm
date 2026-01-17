	db  95,  65,  65,  60, 110, 130  ; 525 BST
	 ;   hp  atk  def  spe  sat  sdf

	db FAIRY, FAIRY  ; type
	db 45  ; catch rate
	db 196  ; base exp
	db NO_ITEM, PINK_BOW  ; held items
	dn GENDER_F12_5, HATCH_SLOWER  ; gender ratio, step cycles to hatch

	abilities_for SYLVEON, CUTE_CHARM, CUTE_CHARM, PIXILATE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, \ ;10
		 SKILL_SWAP,   \ ;11
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 CUT,          \ ;HM
		 PLAY_ROUGH,   DRAINING_KISS, \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE,  HEAL_BELL ;T7
	 ; end
