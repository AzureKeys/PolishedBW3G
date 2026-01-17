	db  50,  80,  95,  10,  10,  45  ; 290 BST
	 ;   hp  atk  def  spe  sat  sdf

	db ROCK, ROCK  ; type
	db 255  ; catch rate
	db 68  ; base exp
	db NO_ITEM, NO_ITEM  ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST  ; gender ratio, step cycles to hatch

	abilities_for BONSLY, STURDY, ROCK_HEAD, RATTLED
	db GROWTH_MEDIUM_FAST  ; growth rate
	dn EGG_NONE, EGG_NONE  ; egg groups

	ev_yield 1 Def

	 ; tm/hm learnset
	tmhm CALM_MIND,    \ ;1
	     HIDDEN_POWER, \ ;2
	     SUNNY_DAY,    SLEEP_TALK,   \ ;3
	     PROTECT,      \ ;4
		 BULLDOZE,     \ ;5
	     EARTHQUAKE,   RETURN,       DIG,          \ ;6
	     BRICK_BREAK,  DOUBLE_TEAM,  \ ;7
		 SANDSTORM,    \ ;8
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \ ;9
		 THIEF,        ROCK_SLIDE,   \ ;10
		 EXPLOSION,    \ ;13
	     SWAGGER,      \ ;14
		 STONE_EDGE,   \ ;15
		 LOW_KICK,     \ ;T4
		 EARTH_POWER,  ROLLOUT,      \ ;T5
		 SUCKER_PUNCH, \ ;T6
		 DOUBLE_EDGE ;T7
	 ; end
