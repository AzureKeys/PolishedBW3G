	db  20,  25,  45,  60,  70,  90  ; 310 BST
	 ;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FAIRY  ; type
	db 145  ; catch rate
	db 78  ; base exp
	db NO_ITEM, LEPPA_BERRY  ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW  ; gender ratio, step cycles to hatch

	abilities_for MIME_JR_, SOUNDPROOF, FILTER, TECHNICIAN
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 SDf

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
		 RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   \ ;11
	     SWAGGER,      \ ;14
		 THUNDER_WAVE ;15
	 ; end
