	db  50,  65,  65, 100,  90,  90  ; 460 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ICE, PSYCHIC  ; type
	db 45  ; catch rate
	db 136  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch

	abilities_for MR__MIME_GALARIAN, VITAL_SPIRIT, SCREEN_CLEANER, ICE_BODY
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE  ; egg groups

	ev_yield 2 Spe

	 ; tm/hm learnset
	tmhm PSYSHOCK,     CALM_MIND,    \ ;1
	     HAIL,         HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \ ;3
	     LIGHT_SCREEN, PROTECT,      RAIN_DANCE,   TRICK_ROOM,   SAFEGUARD,    \ ;4
	     SOLAR_BEAM,   THUNDERBOLT,  THUNDER,      \ ;5
		 RETURN,       PSYCHIC,      SHADOW_BALL,  \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  REFLECT,      \ ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        DAZZLINGLEAM, DREAM_EATER,  \ ;10
		 SKILL_SWAP,   FOCUS_BLAST,  ENERGY_BALL,  \ ;11
	     PAYBACK,      GIGA_IMPACT,  SWAGGER,      \ ;14
		 THUNDER_WAVE ;15
	 ; end
