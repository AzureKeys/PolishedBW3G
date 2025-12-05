	db  50,  53,  48,  64,  53,  48  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 190  ; catch rate
	db 63  ; base exp
	db ORAN_BERRY, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for PANPOUR, GLUTTONY, GLUTTONY, TORRENT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FOCUS_BLAST,  SCALD,        \ ;11
		 ACROBATICS,   WATER_PULSE,  SHADOW_CLAW,  \ ;13
	     PAYBACK,      SWAGGER,      \ ;14
		 CUT,          SURF,         WATERFALL
	 ; end
