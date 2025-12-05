	db  55,  70,  40,  40,  60,  40  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, ICE  ; type
	db 120  ; catch rate
	db 61  ; base exp
	db ASPEAR_BERRY, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for CUBCHOO, SNOW_CLOAK, SLUSH_RUSH, RATTLED
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 BULLDOZE,     \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
		 AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 X_SCISSOR,    \ ;12
		 WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     SWAGGER,      \ ;14
		 CUT,          SURF,         STRENGTH
	 ; end
