	db  45,  75,  60,  50,  40,  30  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db DRAGON, DRAGON  ; type
	db 45  ; catch rate
	db 60  ; base exp
	db NO_ITEM, DRAGON_FANG  ; held items
	dn GENDER_F50, HATCH_SLOWEST  ; gender ratio, step cycles to hatch

	abilities_for BAGON, ROCK_HEAD, ROCK_HEAD, SHEER_FORCE
	db GROWTH_SLOW  ; growth rate
	dn EGG_DRAGON, EGG_DRAGON  ; egg groups

	ev_yield 1 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   DRAGON_CLAW,  ROAR,         \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
	     RETURN,       \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLAMETHROWER, \ ;7
		 FIRE_BLAST,   AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 ROCK_SLIDE,   \ ;10
		 DRAGON_PULSE, \ ;12
		 SHADOW_CLAW,  \ ;13
	     SWAGGER,      \ ;14
		 CUT,          STRENGTH,     \ ;HM
		 FIRE_FANG,    \ ;T1
		 THUNDER_FANG, \ ;T2
		 ZEN_HEADBUTT, \ ;T4
		 OUTRAGE,      \ ;T5
		 IRON_HEAD,    \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	 ; end
