	db  65,  65,  60, 110, 130,  95  ; 525 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, PSYCHIC  ; type
	db 45  ; catch rate
	db 197  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_SLOWER  ; gender ratio, step cycles to hatch

	abilities_for ESPEON, SYNCHRONIZE, SYNCHRONIZE, MAGIC_BOUNCE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 CUT
	 ; end
