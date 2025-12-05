	db  38,  41,  40,  65,  50,  65   ; 299 BST
	  ;   hp  atk  def  spe  sat  sdf

	db ICE, ICE   ; type
	db 190   ; catch rate
	db 63   ; base exp
	db ALWAYS_ITEM_2, ASPEAR_BERRY   ; held items
	dn GENDER_F75, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for VULPIX_ALOLAN, SNOW_CLOAK, SNOW_CLOAK, SNOW_WARNING
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 1 Spe

	  ; tm/hm learnset
	tmhm ROAR,         \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \ ;3
	     PROTECT,      RAIN_DANCE,   SAFEGUARD,    \ ;4
		 IRON_TAIL,    \ ;5
	     RETURN,       DIG,          \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 DAZZLINGLEAM, \ ;10
	     ENERGY_BALL,  \ ;11
		 DARK_PULSE,   HEX,          \ ;12
		 PAYBACK,      SWAGGER ;14
	  ; end
