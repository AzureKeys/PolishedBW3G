	db  70, 110, 100,  50,  50,  60  ; 440 BST
	 ;   hp  atk  def  spe  sat  sdf

	db STEEL, STEEL  ; type
	db 90  ; catch rate
	db 148  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for PERRSERKER, BATTLE_ARMOR, TOUGH_CLAWS, STEELY_SPIRIT
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_GROUND, EGG_GROUND  ; egg groups

	ev_yield 2 Atk

	 ; tm/hm learnset
	tmhm HONE_CLAWS,   \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   HYPER_BEAM,   \ ;3
	     PROTECT,      RAIN_DANCE,   \ ;4
		 IRON_TAIL,    THUNDERBOLT,  THUNDER,      \ ;5
	     RETURN,       DIG,          SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  FLASH_CANNON, \ ;7
		 AERIAL_ACE,   \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        \ ;10
		 FALSE_SWIPE,  \ ;11
		 X_SCISSOR,    DARK_PULSE,   \ ;12
		 SHADOW_CLAW,  \ ;13
	     PAYBACK,      GIGA_IMPACT,  U_TURN,       SWAGGER,      \ ;14
		 GYRO_BALL,    SWORDS_DANCE, \ ;15
		 CUT,          \ ;HM
		 SEED_BOMB,    \ ;T1
		 ICY_WIND,     GUNK_SHOT,    SEISMIC_TOSS, \ ;T3
		 OUTRAGE,      \ ;T5
		 KNOCK_OFF,    IRON_HEAD,    PLAY_ROUGH,   \ ;T6
		 DOUBLE_EDGE,  HYPER_VOICE ;T7
	 ; end
