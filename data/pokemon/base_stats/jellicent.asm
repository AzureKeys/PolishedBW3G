	db 100,  60,  70,  60,  85, 105  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db WATER, GHOST  ; type
	db 60  ; catch rate
	db 168  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for JELLICENT, WATER_ABSORB, CURSED_BODY, DAMP
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE  ; egg groups

	ev_yield 2 SDf

	 ; tm/hm learnset
	tmhm HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  \ ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 ENERGY_BALL,  SCALD,        \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 WILL_O_WISP,  WATER_PULSE,  \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 SURF,         WATERFALL,    \ ;HM
		 GIGA_DRAIN,   \ ;T1
		 SHOCK_WAVE,   \ ;T2
		 ICY_WIND,     \ ;T3
		 TRICK,        \ ;T5
		 PAIN_SPLIT ;T7
	 ; end
