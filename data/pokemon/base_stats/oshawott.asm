	db  55,  55,  45,  45,  63,  45  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, WATER  ; type
	db 45  ; catch rate
	db 62  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for OSHAWOTT, TORRENT, TORRENT, SHELL_ARMOR
	db GROWTH_MEDIUM_SLOW  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 SAt

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SWIFT,        AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FALSE_SWIPE,  SCALD,        \ ;11
		 X_SCISSOR,    \ ;12
		 WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 CUT,          SURF,         WATERFALL
	 ; end
