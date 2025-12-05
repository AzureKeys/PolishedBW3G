	db  50,  50,  62,  65,  40,  62   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db POISON, POISON   ; type
	db 190   ; catch rate
	db 66   ; base exp
	db SILK_SCARF, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST   ; gender ratio, step cycles to hatch

	abilities_for TRUBBISH, STENCH, STICKY_HOLD, AFTERMATH
	db GROWTH_MEDIUM_FAST   ; growth rate
	dn EGG_MINERAL, EGG_MINERAL   ; egg groups

	ev_yield 1 Spe

	  ; tm/hm learnset
	tmhm TOXIC,        VENOSHOCK,    HIDDEN_POWER, \  ;2
	     SUNNY_DAY,    SLEEP_TALK,   \  ;3
	     PROTECT,      RAIN_DANCE,   \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
		 SLUDGE_BOMB,  \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
		 THIEF,        \ ;10
		 DARK_PULSE,   \ ;12
		 EXPLOSION,    \ ;13
	     PAYBACK,      POISON_JAB,   SWAGGER  ;14
	  ; end
