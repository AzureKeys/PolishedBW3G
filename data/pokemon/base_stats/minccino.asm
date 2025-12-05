	db  55,  50,  40,  75,  40,  40  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 255  ; catch rate
	db 60  ; base exp
	db CHESTO_BERRY, NO_ITEM  ; held items
	dn GENDER_F75, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for MINCCINO, CUTE_CHARM, TECHNICIAN, SKILL_LINK
	db GROWTH_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 IRON_TAIL,    THUNDERBOLT,  \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, \ ;10
	     U_TURN,       SWAGGER,      \ ;14
		 THUNDER_WAVE ;15
	 ; end
