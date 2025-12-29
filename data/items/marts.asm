Marts:
	table_width 2
	dw MartNoDex
	dw MartNoBadges
	dw MartOneBadge
	dw MartTwoBadges
	dw MartThreeBadges
	dw MartFourBadges
	dw MartFiveBadges
	dw MartSevenBadges
	dw MartEightBadges
	dw BattleTowerMart1
	dw BattleTowerMart2
	dw BattleTowerMart3
	dw BattleFactoryMart1
	dw BattleFactoryMart2
	dw BattleFactoryMart3
	assert_table_length NUM_MARTS

MartNoDex:
	db 3 ; # items
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db -1

MartNoBadges:
	db 4 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db -1

MartOneBadge:
	db 8 ; # items
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db ESCAPE_ROPE
	db REPEL
	db -1

MartTwoBadges:
	db 11 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db ESCAPE_ROPE
	db REPEL
	db -1

MartThreeBadges:
	db 13 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db REVIVE
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db -1

MartFourBadges:
	db 14 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db -1

MartFiveBadges:
	db 12 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db FULL_HEAL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1

MartSevenBadges:
	db 13 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db FULL_HEAL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1

MartEightBadges:
	db 14 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db REVIVE
	db FULL_HEAL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1

BattleTowerMart1:
	db 7 ; # items
	db CHOICE_BAND,  48
	db CHOICE_SCARF, 48
	db CHOICE_SPECS, 48
	db EXPERT_BELT,  32
	db MUSCLE_BAND,  32
	db WISE_GLASSES, 32
	db METRONOME_I,  32
	db -1

BattleTowerMart2:
	db 9 ; # items
	db RARE_CANDY,   16
	db PP_MAX,       64
	db ABILITY_CAP,  32
	db WEAK_POLICY,  48
	db BLUNDRPOLICY, 48
	db SCOPE_LENS,   16
	db WIDE_LENS,    16
	db ZOOM_LENS,    16
	db BRIGHTPOWDER, 24
	db -1

BattleTowerMart3:
	db 7 ; # items
	db MACHO_BRACE,  16
	db POWER_WEIGHT, 24
	db POWER_BRACER, 24
	db POWER_BELT,   24
	db POWER_LENS,   24
	db POWER_BAND,   24
	db POWER_ANKLET, 24
	db -1

BattleFactoryMart1:
	db 9 ; # items
	db FOCUS_BAND,   16
	db FOCUS_SASH,   48
	db ASSAULT_VEST, 48
	db PROTECT_PADS, 16
	db ROCKY_HELMET, 48
	db SAFE_GOGGLES, 32
	db HEAVY_BOOTS,  48
	db PUNCHINGLOVE, 16
	db COVERT_CLOAK, 16
	db -1

BattleFactoryMart2:
	db 8 ; # items
	db EJECT_BUTTON, 32
	db EJECT_PACK,   32
	db RED_CARD,     24
	db IRON_BALL,    32
	db LAGGING_TAIL, 24
	db FLAME_ORB,    32
	db TOXIC_ORB,    32
	db BLACK_SLUDGE, 32
	db -1

BattleFactoryMart3:
	db 8 ; # items
	db CLEAR_AMULET, 16
	db BINDING_BAND, 32
	db GRIP_CLAW,    32
	db LOADED_DICE,  16
	db THROAT_SPRAY, 24
	db ROOM_SERVICE, 24
	db LIFE_ORB,     48
	db MINT_LEAF,    32
	db -1
