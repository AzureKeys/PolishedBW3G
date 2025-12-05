	db  55,  40,  50,  40,  65,  85  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, GHOST  ; type
	db 190  ; catch rate
	db 67  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for FRILLISH, WATER_ABSORB, CURSED_BODY, DAMP
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 1 SDf

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 ENERGY_BALL,  SCALD,        \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  WATER_PULSE,  \ ;13
	     SWAGGER,      \ ;14
		 SURF,         WATERFALL
	 ; end
