	db  30,  56,  35,  72,  25,  35  ; 253 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DARK, NORMAL  ; type
	db 255  ; catch rate
	db 57  ; base exp
	db NO_ITEM, PECHA_BERRY  ; held items
	dn GENDER_F50, HATCH_FAST  ; gender ratio, step cycles to hatch

	abilities_for RATTATA_ALOLAN, GLUTTONY, HUSTLE, THICK_FAT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 1 Spe

	 ; tm/hm learnset
	tmhm HIDDEN_POWER, \
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     \
	     PROTECT,      RAIN_DANCE,   \
		 IRON_TAIL,    \
	     RETURN,       DIG,          SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
		 SLUDGE_BOMB,  SWIFT,        \
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \
		 THIEF,        \
		 DARK_PULSE,   \
		 SHADOW_CLAW,  \
	     PAYBACK,      U_TURN,       SWAGGER,      \
		 CUT
	 ; end
