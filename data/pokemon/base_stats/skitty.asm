	db  50,  45,  45,  50,  35,  35  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL  ; type
	db 255  ; catch rate
	db 52  ; base exp
	db PECHA_BERRY, LEPPA_BERRY  ; held items
	dn GENDER_F75, HATCH_FAST  ; gender ratio, step cycles to hatch

	 ;abilities_for SKITTY, CUTE_CHARM, NORMALIZE, WONDER_SKIN
	abilities_for SKITTY, CUTE_CHARM, CUTE_CHARM, WONDER_SKIN
	db GROWTH_FAST  ; growth rate
	dn EGG_GROUND, EGG_FAIRY  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 SOLAR_BEAM,   IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DREAM_EATER,  \ ;10
		 WILD_CHARGE,  \ ;12
		 WATER_PULSE,  \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 THUNDER_WAVE ;15
	 ; end
