	db  60,  60,  50,  75,  40,  50  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db NORMAL, GRASS  ; type
	db 190  ; catch rate
	db 67  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for DEERLING, CHLOROPHYLL, SAP_SIPPER, SERENE_GRACE
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 BULLDOZE,     SOLAR_BEAM,   \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ENERGY_BALL,  \ ;11
		 WILD_CHARGE,  \ ;12
	     SWAGGER,      \ ;14
		 THUNDER_WAVE, \ ;15
		 SEED_BOMB,    GIGA_DRAIN,   \ ;T1
		 ZEN_HEADBUTT, \ ;T4
		 PLAY_ROUGH,   \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
