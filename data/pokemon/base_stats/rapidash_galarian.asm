	db  65, 100,  70, 105,  80,  80  ; 500 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FAIRY  ; type
	db 60  ; catch rate
	db 192  ; base exp
	db NO_ITEM, MARANGABERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for RAPIDASH_GALARIAN, RUN_AWAY, PASTEL_VEIL, ANTICIPATION
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      TRICK_ROOM,   \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, \ ;10
	     WILD_CHARGE,  \ ;12
		 GIGA_IMPACT,  SWAGGER,      \ ;14
		 SWORDS_DANCE, \ ;15
		 STRENGTH,     \ ;HM
		 LOW_KICK,     ZEN_HEADBUTT, \ ;T4
		 PLAY_ROUGH ;T6
	 ; end
