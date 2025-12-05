	db  50,  85,  55,  90,  65,  65  ; 410 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, PSYCHIC  ; type
	db 190  ; catch rate
	db 152  ; base exp
	db NO_ITEM, MARANGABERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for PONYTA_GALARIAN, RUN_AWAY, PASTEL_VEIL, ANTICIPATION
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       PSYCHIC,      \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, \ ;10
	     WILD_CHARGE,  \ ;12
		 SWAGGER,      \ ;14
		 STRENGTH
	 ; end
