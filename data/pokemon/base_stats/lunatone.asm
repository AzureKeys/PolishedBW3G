	db  90,  55,  65,  70,  95,  85  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, PSYCHIC  ; type
	db 45  ; catch rate
	db 161  ; base exp
	db STARDUST, MOON_STONE  ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for LUNATONE, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_FAST  ; growth rate
	dn EGG_MINERAL, EGG_MINERAL  ; egg groups

	ev_yield 2 SAt

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     BULLDOZE,     \ ;5
		 EARTHQUAKE,   RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     DOUBLE_TEAM,  REFLECT,      \ ;7
		 SANDSTORM,    SWIFT,        \ ;8
	     SUBSTITUTE,   FACADE,       REST,         \ ;9
		 ROCK_SLIDE,   DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
		 ACROBATICS,   EXPLOSION,    \ ;13
	     GIGA_IMPACT,  SWAGGER,      \ ;14
		 STONE_EDGE,   GYRO_BALL ;15
	 ; end
