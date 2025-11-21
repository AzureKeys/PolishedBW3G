	db  75, 100,  63, 116,  80,  63   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC   ; type
	db 75   ; catch rate
	db 174   ; base exp
	db CHERI_BERRY, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for ZEBSTRIKA, LIGHTNING_ROD, MOTOR_DRIVE, SAP_SIPPER
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_GROUND, EGG_GROUND   ; egg groups

	ev_yield 2 Spe

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
