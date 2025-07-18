	pushc no_ngrams

SECTION "PsychicInverGroup", ROMX
PsychicInverGroup:

	def_trainer_class INVER
	def_trainer 1, "Inver"
	tr_mon 65, EXEGGUTOR @ FIGY_BERRY, MALE
		tr_extra HARVEST, SATK_UP_ATK_DOWN
		tr_moves PSYCHIC_M, SUNNY_DAY, HP_FIRE, SOLAR_BEAM
	tr_mon 65, WEAVILE, MALE
		tr_extra PICKPOCKET, ATK_UP_SATK_DOWN
		tr_moves NIGHT_SLASH, ICE_PUNCH, SLASH, SWORDS_DANCE
	tr_mon 65, PARASECT @ KINGS_ROCK, MALE
		tr_extra EFFECT_SPORE, ATK_UP_SATK_DOWN
if DEF(FAITHFUL)
		tr_moves LEECH_LIFE, SEED_BOMB, SLUDGE_BOMB, SLASH
else
		tr_moves LEECH_LIFE, SEED_BOMB, SLUDGE_BOMB, CUT
endc
	tr_mon 65, RATTATA @ EVIOLITE, MALE
		tr_extra HUSTLE, DEF_UP_ATK_DOWN
		tr_moves RECOVER, TRI_ATTACK, THUNDER_WAVE, SHADOW_BALL
	tr_mon 65, SNORLAX @ LEFTOVERS, MALE
		tr_extra IMMUNITY, ATK_UP_SATK_DOWN
		tr_moves CURSE, REST, SLEEP_TALK, RETURN
	tr_mon 65, RATTATA @ WIDE_LENS, FEMALE
if DEF(FAITHFUL)
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
else
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
endc
		tr_moves PSYCHIC_M, BLIZZARD, NASTY_PLOT, SING
	tr_mon 65, RATTATA @ FOCUS_SASH, MALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_moves PSYCHIC_M, ENERGY_BALL, FOCUS_BLAST, NASTY_PLOT
	end_trainer

	assert (_tr_mons == NUM_INVER_MONS), "{d:_tr_mons} != {NUM_INVER_MONS}"

	popc
