	db  85,  60,  65, 100, 135, 105   ; 310 BST
	  ;   hp  atk  def  spe  sat  sdf

	db BUG, FIRE   ; type
	db 15   ; catch rate
	db 248   ; base exp
	db NO_ITEM, NO_ITEM   ; held items
	dn GENDER_F50, HATCH_SLOWEST   ; gender ratio, step cycles to hatch

	abilities_for VOLCARONA, FLAME_BODY, FLAME_BODY, SWARM
	db GROWTH_SLOW   ; growth rate
	dn EGG_BUG, EGG_BUG   ; egg groups

	ev_yield 3 SAt

	  ; tm/hm learnset
	tmhm HIDDEN_POWER, \  ;2
	     SLEEP_TALK,   \  ;3
	     PROTECT,      \  ;4
	     RETURN,       \  ;6
	     DOUBLE_TEAM,  \  ;7
	     SUBSTITUTE,   FACADE,       REST,         ATTRACT,      \  ;9
	     SWAGGER  ;14
	  ; end
