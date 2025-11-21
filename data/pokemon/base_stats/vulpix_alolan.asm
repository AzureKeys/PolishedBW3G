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
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
