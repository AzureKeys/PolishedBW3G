INCLUDE "data/trainers/party_pointers.asm"
INCLUDE "data/trainers/macros.asm"

; All trainers follow a basic structure (<> is mandatory, [] is optional):
	; def_trainer <TRAINER_CONSTANT>, <Name>
	; tr_mon <LEVEL>, [Nickname], <SPECIES/SPECIES @ ITEM>, [GENDER+FORM]
		; tr_extra [ABILITY], [RATTATARE], [SHINY]
		; tr_dvs <SPREAD>
		; tr_evs <SPREAD>
		; tr_moves <MOVE1>, [MOVE2], [MOVE3], [MOVE4]
	; end_trainer
	; def_trainer, tr_mon and end_trainer are required. Other fields are
	; optional and can be skipped. For full information about what each
	; parameter does, see data/trainers/macros.asm.

; TODO: boss trainers need better movesets, held items, RATTATAres, and abilities

	def_trainer_class TRAINER_NONE

SECTION "CarrieGroup", ROMX
CarrieGroup:

	def_trainer_class CARRIE
	def_trainer 1, "Carrie"
	tr_mon 60, RATTATA @ SITRUS_BERRY
		tr_moves GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	tr_mon 60, RATTATA @ QUICK_CLAW
		tr_moves SUNNY_DAY, THUNDERPUNCH, FLAMETHROWER, SUBSTITUTE
	tr_mon 60, RATTATA @ LUM_BERRY
		tr_moves SURF, CRUNCH, ICE_PUNCH, ROCK_SLIDE
	tr_mon 60, SKARMORY @ ROCKY_HELMET
		tr_moves SPIKES, ROOST, DRILL_PECK, STEEL_WING
	tr_mon 60, HOUNDOOM @ POISON_BARB
		tr_moves NASTY_PLOT, FIRE_BLAST, DARK_PULSE, SLUDGE_BOMB
	tr_mon 60, WIGGLYTUFF @ CHESTO_BERRY
		tr_moves HYPER_VOICE, DAZZLINGLEAM, REST, FLAMETHROWER
	end_trainer


SECTION "CalGroup", ROMX
CalGroup:

	def_trainer_class CAL
	def_trainer 1, "Cal"
	tr_mon 60, RATTATA @ QUICK_CLAW
		tr_moves SUNNY_DAY, THUNDERPUNCH, FLAMETHROWER, SUBSTITUTE
	tr_mon 60, RATTATA @ SITRUS_BERRY
		tr_moves GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	tr_mon 60, RATTATA @ LUM_BERRY
		tr_moves SURF, CRUNCH, ICE_PUNCH, ROCK_SLIDE
	tr_mon 60, STEELIX @ CHESTO_BERRY
		tr_moves IRON_TAIL, ROCK_SLIDE, EARTHQUAKE, REST
	tr_mon 60, WEAVILE @ LEFTOVERS
		tr_moves ICE_PUNCH, SWORDS_DANCE, FEINT_ATTACK, PROTECT
	tr_mon 60, CLEFABLE @ PINK_BOW
		tr_moves SING, HEALINGLIGHT, TACKLE, MOONBLAST
	end_trainer


SECTION "JackyGroup", ROMX
JackyGroup:

	def_trainer_class JACKY
	def_trainer 1, "Jacky"
	tr_mon 60, RATTATA @ LUM_BERRY
		tr_moves SURF, CRUNCH, ICE_PUNCH, ROCK_SLIDE
	tr_mon 60, RATTATA @ SITRUS_BERRY
		tr_moves GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	tr_mon 60, RATTATA @ QUICK_CLAW
		tr_moves SUNNY_DAY, THUNDERPUNCH, FLAMETHROWER, SUBSTITUTE
	tr_mon 60, MAGNETON @ EVIOLITE
		tr_moves THUNDERBOLT, FLASH_CANNON, THUNDER_WAVE, LIGHT_SCREEN
	tr_mon 60, RATTATA @ LEFTOVERS
		tr_moves EXPLOSION, POISON_JAB, TOXIC_SPIKES, DARK_PULSE
	tr_mon 60, TOGETIC @ WIDE_LENS
		tr_moves DAZZLINGLEAM, TACKLE, ANCIENTPOWER, EXTRASENSORY
	end_trainer


SECTION "MarlonGroup", ROMX
MarlonGroup:

	def_trainer_class MARLON
	def_trainer 1, "Marlon"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer

	def_trainer 2, "Marlon"
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves AIR_SLASH, PSYCHIC_M, HYPNOSIS, DREAM_EATER
	end_trainer


SECTION "ShauntalGroup", ROMX
ShauntalGroup:

	def_trainer_class SHAUNTAL
	def_trainer 1, "Shauntal"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer

	def_trainer 2, "Shauntal"
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves AIR_SLASH, PSYCHIC_M, HYPNOSIS, DREAM_EATER
	end_trainer


SECTION "BurghGroup", ROMX
BurghGroup:

	def_trainer_class BURGH
	def_trainer 1, "Burgh"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer

	def_trainer 2, "Burgh"
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves AIR_SLASH, PSYCHIC_M, HYPNOSIS, DREAM_EATER
	end_trainer


SECTION "RoxieGroup", ROMX
RoxieGroup:

	def_trainer_class ROXIE
	def_trainer 1, "Roxie"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer

	def_trainer 2, "Roxie"
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves AIR_SLASH, PSYCHIC_M, HYPNOSIS, DREAM_EATER
	end_trainer


SECTION "CherenGroup", ROMX
CherenGroup:

	def_trainer_class CHEREN
	def_trainer 1, "Cheren"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer

	def_trainer 2, "Cheren"
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves AIR_SLASH, PSYCHIC_M, HYPNOSIS, DREAM_EATER
	end_trainer


SECTION "CilanGroup", ROMX
CilanGroup:

	def_trainer_class CILAN
	def_trainer 1, "Cilan"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer

	def_trainer 2, "Cilan"
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves AIR_SLASH, PSYCHIC_M, HYPNOSIS, DREAM_EATER
	end_trainer


SECTION "SkylaGroup", ROMX
SkylaGroup:

	def_trainer_class SKYLA
	def_trainer 1, "Skyla"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer

	def_trainer 2, "Skyla"
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves AIR_SLASH, PSYCHIC_M, HYPNOSIS, DREAM_EATER
	end_trainer


SECTION "DraydenGroup", ROMX
DraydenGroup:

	def_trainer_class DRAYDEN
	def_trainer 1, "Drayden"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer

	def_trainer 2, "Drayden"
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves AIR_SLASH, PSYCHIC_M, HYPNOSIS, DREAM_EATER
	end_trainer


SECTION "MarshalGroup", ROMX
MarshalGroup:

	def_trainer_class MARSHAL
	def_trainer 1, "Marshal"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer


SECTION "GrimsleyGroup", ROMX
GrimsleyGroup:

	def_trainer_class GRIMSLEY
	def_trainer 1, "Grimsley"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer


SECTION "ElesaGroup", ROMX
ElesaGroup:

	def_trainer_class ELESA
	def_trainer 1, "Elesa"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer


SECTION "ColressGroup", ROMX
ColressGroup:

	def_trainer_class COLRESS
	def_trainer 1, "Colress"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer


SECTION "ChampionGroup", ROMX
ChampionGroup:

	def_trainer_class CHAMPION
	def_trainer JUNIPER_SNIVY, "Juniper"
	tr_mon 57, RATTATA @ MUSCLE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	end_trainer

	def_trainer JUNIPER_TEPIG, "Juniper"
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves AIR_SLASH, PSYCHIC_M, HYPNOSIS, DREAM_EATER
	end_trainer

	def_trainer JUNIPER_OSHAWOTT, "Juniper"
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves AIR_SLASH, PSYCHIC_M, HYPNOSIS, DREAM_EATER
	end_trainer


SECTION "Infer0Group", ROMX
Infer0Group:

	def_trainer_class INFER0
	def_trainer INFER1_SNIVY, "girl"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER1_TEPIG, "girl"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER1_OSHAWOTT, "girl"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer


SECTION "Infer1Group", ROMX
Infer1Group:

	def_trainer_class INFER1
	def_trainer INFER2_SNIVY, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER2_TEPIG, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER2_OSHAWOTT, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer
	
	def_trainer INFER3_SNIVY, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER3_TEPIG, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER3_OSHAWOTT, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer
	
	def_trainer INFER4_SNIVY, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER4_TEPIG, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER4_OSHAWOTT, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer
	
	def_trainer INFER5_SNIVY, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER5_TEPIG, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER5_OSHAWOTT, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer


SECTION "InferSageGroup", ROMX
InferSageGroup:

	def_trainer_class INFER_SAGE
	def_trainer INFER_SAGE_SNIVY, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER_SAGE_TEPIG, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER_SAGE_OSHAWOTT, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer


SECTION "Infer2Group", ROMX
Infer2Group:

	def_trainer_class INFER2
	def_trainer INFER7_SNIVY, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER7_TEPIG, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer INFER7_OSHAWOTT, "Infer"
	tr_mon 4, RATTATA
	tr_mon 5, RATTATA @ ORAN_BERRY
	end_trainer


SECTION "YoungsterGroup", ROMX
YoungsterGroup:

	def_trainer_class YOUNGSTER
	def_trainer YOUNGSTER_R13, "Dan"
	tr_mon 5, RATTATA, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
	end_trainer

	def_trainer YOUNGSTER_OUTSKIRTS, ""
	tr_mon 15, RATTATA @ ORAN_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 48 Atk, 48 Spe
	end_trainer

	def_trainer YOUNGSTER_ASPERTIA_GYM, ""
	tr_mon 25, RATICATE @ ORAN_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 80 Atk, 80 Spe
		tr_moves LEER, QUICK_ATTACK, TACKLE, SCARY_FACE
	end_trainer

	def_trainer YOUNGSTER_PINWHEEL, "Joey"
	tr_mon 30, RATICATE @ SITRUS_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 112 Atk, 112 Spe
		tr_moves LEER, QUICK_ATTACK, TACKLE, PURSUIT
	end_trainer

	def_trainer YOUNGSTER_DREAMYARD, "Joey"
	tr_mon 40, RATICATE @ SITRUS_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 160 Atk, 160 Spe
		tr_moves HYPER_BEAM, QUICK_ATTACK, TACKLE, PURSUIT
	end_trainer

	def_trainer DAN_REMATCH_1, "Mikey"
	tr_mon 2, RATTATA
	tr_mon 4, RATTATA
	end_trainer

	def_trainer DAN_REMATCH_2, "Albert"
	tr_mon 8, RATTATA
	tr_mon 10, ZUBAT
	end_trainer

	def_trainer DAN_REMATCH_3, "Gordon"
	tr_mon 11, RATTATA
	end_trainer

	def_trainer DAN_REMATCH_4, "Warren"
	tr_mon 56, RATTATA
	tr_mon 60, RATICATE
	end_trainer

	def_trainer DAN_REMATCH_5, "Jimmy"
	tr_mon 60, RATICATE
	tr_mon 60, RATTATA
	tr_mon 60, PARASECT
	end_trainer

	def_trainer DAN_REMATCH_6, "Owen"
	tr_mon 53, GROWLITHE
	tr_mon 54, GROWLITHE
	end_trainer


SECTION "YoungsterDGroup", ROMX
YoungsterDGroup:

	def_trainer_class YOUNGSTER_D
	def_trainer YOUNGSTER_LOSTLORN, "Dan"
	tr_mon 5, RATTATA, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
	end_trainer

	def_trainer YOUNGSTER_DESERT, ""
	tr_mon 15, RATTATA @ ORAN_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 48 Atk, 48 Spe
	end_trainer

	def_trainer YOUNGSTER_NACRENE_OUTSKIRT, ""
	tr_mon 25, RATICATE @ ORAN_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 80 Atk, 80 Spe
		tr_moves LEER, QUICK_ATTACK, TACKLE, SCARY_FACE
	end_trainer

	def_trainer YOUNGSTER_R2, "Joey"
	tr_mon 30, RATICATE @ SITRUS_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 112 Atk, 112 Spe
		tr_moves LEER, QUICK_ATTACK, TACKLE, PURSUIT
	end_trainer


SECTION "LassGroup", ROMX
LassGroup:

	def_trainer_class LASS
	def_trainer LASS_R13, "Dana"
	tr_mon 19, FLAAFFY
		tr_moves TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	tr_mon 19, PSYDUCK
		tr_moves TACKLE, LEER, DISABLE, CONFUSION
	end_trainer

	def_trainer LASS_LOSTLORN, "Dana"
	tr_mon 21, FLAAFFY
		tr_moves TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	tr_mon 21, PSYDUCK
		tr_moves TACKLE, LEER, DISABLE, CONFUSION
	end_trainer

	def_trainer LASS_DESERT, "Dana"
	tr_mon 29, PSYDUCK
		tr_moves TACKLE, DISABLE, CONFUSION, SCREECH
	tr_mon 29, FLAAFFY
		tr_moves TACKLE, THUNDERSHOCK, THUNDER_WAVE, THUNDERBOLT
	end_trainer

	def_trainer LASS_NACRENE_OUTSKIRT, "Dana"
	tr_mon 32, PSYDUCK
		tr_moves TACKLE, DISABLE, CONFUSION, SCREECH
	tr_mon 32, FLAAFFY
		tr_moves TACKLE, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
	end_trainer

	def_trainer LASS_CELESTIAL_TOWER, "Dana"
	tr_mon 36, AMPHAROS
		tr_moves SWIFT, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
	tr_mon 36, GOLDUCK
		tr_moves DISABLE, SURF, PSYCHIC_M, SCREECH
	end_trainer


SECTION "LassDGroup", ROMX
LassDGroup:

	def_trainer_class LASS_D
	def_trainer LASS_REVERSAL, "Dana"
	tr_mon 19, FLAAFFY
		tr_moves TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	tr_mon 19, PSYDUCK
		tr_moves TACKLE, LEER, DISABLE, CONFUSION
	end_trainer

	def_trainer LASS_ASPERTIA_GYM, "Dana"
	tr_mon 21, FLAAFFY
		tr_moves TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	tr_mon 21, PSYDUCK
		tr_moves TACKLE, LEER, DISABLE, CONFUSION
	end_trainer

	def_trainer LASS_PINWHEEL, "Dana"
	tr_mon 29, PSYDUCK
		tr_moves TACKLE, DISABLE, CONFUSION, SCREECH
	tr_mon 29, FLAAFFY
		tr_moves TACKLE, THUNDERSHOCK, THUNDER_WAVE, THUNDERBOLT
	end_trainer

	def_trainer LASS_R2, "Dana"
	tr_mon 32, PSYDUCK
		tr_moves TACKLE, DISABLE, CONFUSION, SCREECH
	tr_mon 32, FLAAFFY
		tr_moves TACKLE, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
	end_trainer

	def_trainer CARLA_REMATCH_1, "Dana"
	tr_mon 36, AMPHAROS
		tr_moves SWIFT, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
	tr_mon 36, GOLDUCK
		tr_moves DISABLE, SURF, PSYCHIC_M, SCREECH
	end_trainer

	def_trainer CARLA_REMATCH_2, "Dana"
	tr_mon 36, AMPHAROS
		tr_moves SWIFT, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
	tr_mon 36, GOLDUCK
		tr_moves DISABLE, SURF, PSYCHIC_M, SCREECH
	end_trainer

	def_trainer CARLA_REMATCH_3, "Dana"
	tr_mon 36, AMPHAROS
		tr_moves SWIFT, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
	tr_mon 36, GOLDUCK
		tr_moves DISABLE, SURF, PSYCHIC_M, SCREECH
	end_trainer


SECTION "AceTrainerMGroup", ROMX
AceTrainerMGroup:

	def_trainer_class ACE_TRAINERM
	def_trainer ACE_TRAINERM_PWT, "Gaven"
	tr_mon 39, RATTATA
		tr_moves WRAP, TOXIC, ACID, RAZOR_LEAF
	tr_mon 39, RATTATA
		tr_moves BUBBLE_BEAM, STOMP, DIG, PROTECT
	tr_mon 39, FLAREON
		tr_moves MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERM_CHARGESTONE_1, "Gaven"
	tr_mon 41, RATTATA
		tr_moves WRAP, TOXIC, ACID, RAZOR_LEAF
	tr_mon 41, RATTATA
		tr_moves BUBBLE_BEAM, STOMP, DIG, PROTECT
	tr_mon 41, FLAREON
		tr_moves MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERM_MISTRALTON_CAVE, "Gaven"
	tr_mon 45, RATTATA
		tr_moves GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	tr_mon 45, RATTATA @ KINGS_ROCK
		tr_moves SURF, STOMP, DIG, BLIZZARD
	tr_mon 45, FLAREON
		tr_moves FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERM_R23_1, "Nick"
	tr_mon 26, RATTATA
		tr_moves EMBER, TACKLE, THRASH, SCARY_FACE
	tr_mon 26, RATTATA
		tr_moves DEFENSE_CURL, WATER_GUN, BITE, CURSE
	tr_mon 26, RATTATA
		tr_moves LEECH_SEED, POISONPOWDER, SLEEP_POWDER, RAZOR_LEAF
	end_trainer

	def_trainer ACE_TRAINERM_VICTORY_ROAD_INT_1, "Aaron"
	tr_mon 28, RATTATA
	tr_mon 28, RATTATA
	tr_mon 28, RATTATA
	end_trainer

	def_trainer ACE_TRAINERM_VICTORY_ROAD_EXT_1, "Cody"
	tr_mon 36, HORSEA
	tr_mon 37, SEADRA
	tr_mon 38, YANMA
	end_trainer


SECTION "AceTrainerMDGroup", ROMX
AceTrainerMDGroup:

	def_trainer_class ACE_TRAINERM_D
	def_trainer ACE_TRAINERM_GIANT_CHASM, "Gaven"
	tr_mon 39, RATTATA
		tr_moves WRAP, TOXIC, ACID, RAZOR_LEAF
	tr_mon 39, RATTATA
		tr_moves BUBBLE_BEAM, STOMP, DIG, PROTECT
	tr_mon 39, FLAREON
		tr_moves MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERM_CHARGESTONE_2, "Gaven"
	tr_mon 41, RATTATA
		tr_moves WRAP, TOXIC, ACID, RAZOR_LEAF
	tr_mon 41, RATTATA
		tr_moves BUBBLE_BEAM, STOMP, DIG, PROTECT
	tr_mon 41, FLAREON
		tr_moves MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERM_R23_2, "Nick"
	tr_mon 26, RATTATA
		tr_moves EMBER, TACKLE, THRASH, SCARY_FACE
	tr_mon 26, RATTATA
		tr_moves DEFENSE_CURL, WATER_GUN, BITE, CURSE
	tr_mon 26, RATTATA
		tr_moves LEECH_SEED, POISONPOWDER, SLEEP_POWDER, RAZOR_LEAF
	end_trainer

	def_trainer ACE_TRAINERM_VICTORY_ROAD_INT_2, "Aaron"
	tr_mon 28, RATTATA
	tr_mon 28, RATTATA
	tr_mon 28, RATTATA
	end_trainer

	def_trainer ACE_TRAINERM_VICTORY_ROAD_EXT_2, "Cody"
	tr_mon 36, HORSEA
	tr_mon 37, SEADRA
	tr_mon 38, YANMA
	end_trainer


SECTION "AceTrainerFGroup", ROMX
AceTrainerFGroup:

	def_trainer_class ACE_TRAINERF
	def_trainer ACE_TRAINERF_CHARGESTONE_1, "Gaven"
	tr_mon 39, RATTATA
		tr_moves WRAP, TOXIC, ACID, RAZOR_LEAF
	tr_mon 39, RATTATA
		tr_moves BUBBLE_BEAM, STOMP, DIG, PROTECT
	tr_mon 39, FLAREON
		tr_moves MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERF_MISTRALTON_CAVE, "Gaven"
	tr_mon 41, RATTATA
		tr_moves WRAP, TOXIC, ACID, RAZOR_LEAF
	tr_mon 41, RATTATA
		tr_moves BUBBLE_BEAM, STOMP, DIG, PROTECT
	tr_mon 41, FLAREON
		tr_moves MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERF_R23_2, "Gaven"
	tr_mon 45, RATTATA
		tr_moves GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	tr_mon 45, RATTATA @ KINGS_ROCK
		tr_moves SURF, STOMP, DIG, BLIZZARD
	tr_mon 45, FLAREON
		tr_moves FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERF_VICTORY_ROAD_INT_1, "Nick"
	tr_mon 26, RATTATA
		tr_moves EMBER, TACKLE, THRASH, SCARY_FACE
	tr_mon 26, RATTATA
		tr_moves DEFENSE_CURL, WATER_GUN, BITE, CURSE
	tr_mon 26, RATTATA
		tr_moves LEECH_SEED, POISONPOWDER, SLEEP_POWDER, RAZOR_LEAF
	end_trainer

	def_trainer ACE_TRAINERF_VICTORY_ROAD_EXT_1, "Aaron"
	tr_mon 28, RATTATA
	tr_mon 28, RATTATA
	tr_mon 28, RATTATA
	end_trainer


SECTION "AceTrainerFDGroup", ROMX
AceTrainerFDGroup:

	def_trainer_class ACE_TRAINERF_D
	def_trainer ACE_TRAINERF_GIANT_CHASM, "Gaven"
	tr_mon 39, RATTATA
		tr_moves WRAP, TOXIC, ACID, RAZOR_LEAF
	tr_mon 39, RATTATA
		tr_moves BUBBLE_BEAM, STOMP, DIG, PROTECT
	tr_mon 39, FLAREON
		tr_moves MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERF_PWT, "Gaven"
	tr_mon 41, RATTATA
		tr_moves WRAP, TOXIC, ACID, RAZOR_LEAF
	tr_mon 41, RATTATA
		tr_moves BUBBLE_BEAM, STOMP, DIG, PROTECT
	tr_mon 41, FLAREON
		tr_moves MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERF_CHARGESTONE_2, "Gaven"
	tr_mon 45, RATTATA
		tr_moves GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	tr_mon 45, RATTATA @ KINGS_ROCK
		tr_moves SURF, STOMP, DIG, BLIZZARD
	tr_mon 45, FLAREON
		tr_moves FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERF_R23_1, "Gaven"
	tr_mon 45, RATTATA
		tr_moves GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	tr_mon 45, RATTATA @ KINGS_ROCK
		tr_moves SURF, STOMP, DIG, BLIZZARD
	tr_mon 45, FLAREON
		tr_moves FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer ACE_TRAINERF_VICTORY_ROAD_INT_2, "Nick"
	tr_mon 26, RATTATA
		tr_moves EMBER, TACKLE, THRASH, SCARY_FACE
	tr_mon 26, RATTATA
		tr_moves DEFENSE_CURL, WATER_GUN, BITE, CURSE
	tr_mon 26, RATTATA
		tr_moves LEECH_SEED, POISONPOWDER, SLEEP_POWDER, RAZOR_LEAF
	end_trainer

	def_trainer ACE_TRAINERF_VICTORY_ROAD_EXT_2, "Aaron"
	tr_mon 28, RATTATA
	tr_mon 28, RATTATA
	tr_mon 28, RATTATA
	end_trainer


SECTION "ArtistGroup", ROMX
ArtistGroup:

	def_trainer_class ARTIST
	def_trainer ARTIST_R5, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer ARTIST_R3, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer


SECTION "BackersMGroup", ROMX
BackersMGroup:

	def_trainer_class BACKERSM
	def_trainer BACKERSM_R16, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKERSM_R11, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer


SECTION "BackersFGroup", ROMX
BackersFGroup:

	def_trainer_class BACKERSF
	def_trainer BACKERSF_R5, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKERSF_R11, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer


SECTION "BackpackerMGroup", ROMX
BackpackerMGroup:

	def_trainer_class BACKPACKERM
	def_trainer BACKPACKERM_REVERSAL, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKPACKERM_R16, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer
	
	def_trainer BACKPACKERM_DESERT, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKPACKERM_R2, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer
	
	def_trainer BACKPACKERM_R18, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKPACKERM_GIANT_CHASM, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer
	
	def_trainer BACKPACKERM_RELIC_PASSAGE, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKPACKERM_R7, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer
	
	def_trainer BACKPACKERM_R23, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKPACKERM_VICTORY_ROAD_INT, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer
	
	def_trainer PARKER_REMATCH_1, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer PARKER_REMATCH_2, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer


SECTION "BackpackerFGroup", ROMX
BackpackerFGroup:

	def_trainer_class BACKPACKERF
	def_trainer BACKPACKERF_REVERSAL, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKPACKERF_R16, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer
	
	def_trainer BACKPACKERF_DESERT, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKPACKERF_R2, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer
	
	def_trainer BACKPACKERF_R18, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKPACKERF_GIANT_CHASM, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer
	
	def_trainer BACKPACKERF_RELIC_PASSAGE, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKPACKERF_R7, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer
	
	def_trainer BACKPACKERF_R23, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BACKPACKERF_VICTORY_ROAD_EXT, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer
	
	def_trainer JENNY_REMATCH_1, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer
	
	def_trainer JENNY_REMATCH_2, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer
	
	def_trainer JENNY_REMATCH_3, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer


SECTION "BakerGroup", ROMX
BakerGroup:

	def_trainer_class BAKER
	def_trainer BAKER_R5, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer

	def_trainer BAKER_R19, "Alina"
	tr_mon 57, RATTATA @ MIRACLE_SEED
		tr_dvs DVS_HP_GRASS ; green
		tr_moves SPORE, FLAMETHROWER, SOLAR_BEAM, GIGA_DRAIN
	end_trainer


SECTION "BlackbeltGroup", ROMX
BlackbeltGroup:

	def_trainer_class BLACKBELT_T
	def_trainer BLACKBELT_REVERSAL, "Kenji"
	tr_mon 39, RATTATA
	end_trainer

	def_trainer BLACKBELT_WELLSPRING_1, "Yoshi"
	tr_mon 27, "Bruce", RATTATA
		tr_moves DOUBLE_KICK, BULK_UP, HI_JUMP_KICK, FOCUS_ENERGY
	end_trainer

	def_trainer BLACKBELT_WELLSPRING_2, "Lao"
	tr_mon 27, "Jackie", RATTATA
		tr_moves AERIAL_ACE, THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH
	end_trainer

	def_trainer BLACKBELT_R1, "Nob"
	tr_mon 25, RATTATA
		tr_moves LEER, FOCUS_ENERGY, BRICK_BREAK, SEISMIC_TOSS
	tr_mon 25, RATTATA
		tr_moves LEER, BRICK_BREAK, SEISMIC_TOSS, ROCK_SLIDE
	end_trainer

	def_trainer BLACKBELT_R18, "Lung"
	tr_mon 23, MANKEY
	tr_mon 23, MANKEY
	tr_mon 25, PRIMEAPE
	end_trainer

	def_trainer BLACKBELT_R21, "Wai"
	tr_mon 46, RATTATA
	tr_mon 48, RATTATA
	tr_mon 50, RATTATA
	end_trainer

	def_trainer BLACKBELT_SEASIDE_CAVE_1, "Inigo"
	tr_mon 59, PRIMEAPE
	tr_mon 59, PRIMEAPE
	tr_mon 60, RATTATA
	end_trainer

	def_trainer BLACKBELT_SEASIDE_CAVE_2, "Manford"
	tr_mon 63, POLIWRATH
	end_trainer

	def_trainer BLACKBELT_NACRENE_OUTSKIRT, "Ander"
	tr_mon 61, PRIMEAPE
	tr_mon 57, GRAVELER
	tr_mon 62, RATTATA
	end_trainer

	def_trainer BLACKBELT_VICTORY_ROAD_EXT, "Takeo"
	tr_mon 52, RATTATA
	tr_mon 54, HERACROSS
	tr_mon 56, POLIWRATH
	end_trainer


SECTION "BattleGirlGroup", ROMX
BattleGirlGroup:

	def_trainer_class BATTLE_GIRL
	def_trainer BATTLE_GIRL_REVERSAL, "Subaru"
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA
	tr_mon LEVEL_FROM_BADGES + 7, RATTATA
	tr_mon LEVEL_FROM_BADGES + 8, PRIMEAPE
	end_trainer

	def_trainer BATTLE_GIRL_WELLSPRING, "Diane"
	tr_mon LEVEL_FROM_BADGES + 8, RATTATA
	tr_mon LEVEL_FROM_BADGES + 8, RATTATA
	end_trainer

	def_trainer BATTLE_GIRL_R1, "Kagami"
	tr_mon LEVEL_FROM_BADGES + 5, PRIMEAPE
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	tr_mon LEVEL_FROM_BADGES + 7, RATTATA
	end_trainer

	def_trainer BATTLE_GIRL_R18, "Nozomi"
	tr_mon 36, RATTATA
	tr_mon 36, RATTATA
	tr_mon 37, RATTATA
	end_trainer

	def_trainer BATTLE_GIRL_SEASIDE_CAVE_1, "Ronda"
	tr_mon 37, RATTATA
	tr_mon 39, RATTATA
	tr_mon 38, RATTATA
	end_trainer

	def_trainer BATTLE_GIRL_SEASIDE_CAVE_2, "Padma"
	tr_mon LEVEL_FROM_BADGES + 7, RATTATA
	tr_mon LEVEL_FROM_BADGES + 8, RATTATA
	tr_mon LEVEL_FROM_BADGES + 9, RATTATA
	end_trainer

	def_trainer BATTLE_GIRL_CHARGESTONE, "Emy"
	tr_mon LEVEL_FROM_BADGES + 8, PRIMEAPE @ PROTECT_PADS, FEMALE
		tr_extra DEFIANT, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_moves TACKLE, GUNK_SHOT, BULK_UP, NIGHT_SLASH
	tr_mon LEVEL_FROM_BADGES + 10, RATTATA @ PROTECT_PADS, MALE
		tr_extra HUSTLE, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_moves PLAY_ROUGH, SLASH, BELLY_DRUM, NIGHT_SLASH
	end_trainer

	def_trainer BATTLE_GIRL_NACRENE_OUTSKIRT, "Sasha"
	tr_mon 52, PRIMEAPE
	tr_mon 55, RATTATA
	tr_mon 54, RAPIDASH
	end_trainer

	def_trainer BATTLE_GIRL_R23, "Emy"
	tr_mon LEVEL_FROM_BADGES + 8, PRIMEAPE @ PROTECT_PADS, FEMALE
		tr_extra DEFIANT, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_moves TACKLE, GUNK_SHOT, BULK_UP, NIGHT_SLASH
	tr_mon LEVEL_FROM_BADGES + 10, RATTATA @ PROTECT_PADS, MALE
		tr_extra HUSTLE, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_moves PLAY_ROUGH, SLASH, BELLY_DRUM, NIGHT_SLASH
	end_trainer

	def_trainer BATTLE_GIRL_VICTORY_ROAD_EXT, "Sasha"
	tr_mon 52, PRIMEAPE
	tr_mon 55, RATTATA
	tr_mon 54, RAPIDASH
	end_trainer


SECTION "BikerGroup", ROMX
BikerGroup:

	def_trainer_class BIKER
	def_trainer BIKER_R5, "Dwayne"
	tr_mon 54, KOFFING
	tr_mon 55, WEEZING
	tr_mon 56, KOFFING
	tr_mon 57, WEEZING
	end_trainer

	def_trainer BIKER_R4, "Harris"
	tr_mon 57, FLAREON
	end_trainer

	def_trainer BIKER_R9_1, "Zeke"
	tr_mon 55, KOFFING
	tr_mon 56, WEEZING
	end_trainer

	def_trainer BIKER_R9_2, "Charles"
	tr_mon 54, KOFFING
	tr_mon 54, RATTATA
	tr_mon 57, WEEZING
	end_trainer


SECTION "RoughneckGroup", ROMX
RoughneckGroup:

	def_trainer_class ROUGHNECK
	def_trainer ROUGHNECK_R4, "Brian"
	tr_mon 55, RATTATA
	tr_mon 55, WEEZING
	tr_mon 55, WEEZING
	end_trainer

	def_trainer ROUGHNECK_DESERT, "Theron"
	tr_mon 55, MUK
	tr_mon 55, POLIWRATH
	end_trainer

	def_trainer ROUGHNECK_R9_1, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer

	def_trainer ROUGHNECK_R9_2, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer


SECTION "CyclistMGroup", ROMX
CyclistMGroup:

	def_trainer_class CYCLISTM
	def_trainer CYCLISTM_OUTSKIRTS, "Brian"
	tr_mon 55, RATTATA
	tr_mon 55, WEEZING
	tr_mon 55, WEEZING
	end_trainer

	def_trainer CYCLISTM_R16, "Theron"
	tr_mon 55, MUK
	tr_mon 55, POLIWRATH
	end_trainer

	def_trainer FREDDY_REMATCH_1, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer

	def_trainer FREDDY_REMATCH_2, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer

	def_trainer FREDDY_REMATCH_3, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer

	def_trainer FREDDY_REMATCH_4, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer

	def_trainer FREDDY_REMATCH_5, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer


SECTION "CyclistFGroup", ROMX
CyclistFGroup:

	def_trainer_class CYCLISTF
	def_trainer CYCLISTF_OUTSKIRTS, "Brian"
	tr_mon 55, RATTATA
	tr_mon 55, WEEZING
	tr_mon 55, WEEZING
	end_trainer

	def_trainer CYCLISTF_R16, "Theron"
	tr_mon 55, MUK
	tr_mon 55, POLIWRATH
	end_trainer


SECTION "DancerGroup", ROMX
DancerGroup:

	def_trainer_class DANCER
	def_trainer DANCER_R5_1, "Brian"
	tr_mon 55, RATTATA
	tr_mon 55, WEEZING
	tr_mon 55, WEEZING
	end_trainer

	def_trainer DANCER_R5_2, "Theron"
	tr_mon 55, MUK
	tr_mon 55, POLIWRATH
	end_trainer

	def_trainer ERIC_REMATCH_1, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer

	def_trainer ERIC_REMATCH_2, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer

	def_trainer ERIC_REMATCH_3, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer

	def_trainer ERIC_REMATCH_4, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer

	def_trainer ERIC_REMATCH_5, "Markey"
	tr_mon 57, RATTATA
	tr_mon 56, HOUNDOOM
	end_trainer


SECTION "DepotAgentGroup", ROMX
DepotAgentGroup:

	def_trainer_class DEPOT_AGENT
	def_trainer DEPOT_AGENT_R19_1, "Brian"
	tr_mon 55, RATTATA
	tr_mon 55, WEEZING
	tr_mon 55, WEEZING
	end_trainer

	def_trainer DEPOT_AGENT_R19_2, "Theron"
	tr_mon 55, MUK
	tr_mon 55, POLIWRATH
	end_trainer


SECTION "DoctorGroup", ROMX
DoctorGroup:

	def_trainer_class DOCTOR
	def_trainer DOCTOR_OUTSKIRTS, "Beatrice"
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	end_trainer

	def_trainer DOCTOR_R17, "Keiko"
	tr_mon LEVEL_FROM_BADGES + 0, RATTATA
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	end_trainer

	def_trainer DOCTOR_CHARGESTONE, "Joy"
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA
	end_trainer

	def_trainer DOCTOR_SEASIDE_CAVE, "Winifred"
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA
	end_trainer


SECTION "NurseGroup", ROMX
NurseGroup:

	def_trainer_class NURSE
	def_trainer NURSE_DESERT, "Beatrice"
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	end_trainer

	def_trainer NURSE_RELIC_PASSAGE, "Keiko"
	tr_mon LEVEL_FROM_BADGES + 0, RATTATA
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	end_trainer

	def_trainer NURSE_CELESTIAL_TOWER, "Joy"
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA
	end_trainer

	def_trainer NURSE_VICTORY_ROAD, "Winifred"
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA
	end_trainer

	def_trainer NURSE_TWIST_MOUNTAIN, "Winifred"
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA
	end_trainer


SECTION "FisherGroup", ROMX
FisherGroup:

	def_trainer_class FISHER
	def_trainer FISHER_UNDELLA_1, "Ralph"
	tr_mon 11, RATTATA
	end_trainer

	def_trainer FISHER_R4_1, "Ralph"
	tr_mon 17, RATTATA
	end_trainer

	def_trainer FISHER_R3_1, "Ralph"
	tr_mon 17, RATTATA
	tr_mon 19, RATTATA
	end_trainer

	def_trainer FISHER_R17_1, "Ralph"
	tr_mon 30, RATTATA
	tr_mon 32, RATTATA
	end_trainer

	def_trainer FISHER_R8, "Ralph"
	tr_mon 36, RATTATA
		tr_moves TOXIC, TACKLE, SURF, PIN_MISSILE
	tr_mon 36, LANTURN
		tr_moves REVERSAL, WATERFALL, THUNDERBOLT, CONFUSE_RAY
	tr_mon 39, RATTATA
		tr_moves WATERFALL, AGILITY, FURY_STRIKES, POISON_JAB
	end_trainer

	def_trainer FISHER_MOOR_OF_ICIRRUS_1, "Tully"
	tr_mon 30, RATTATA
	end_trainer


SECTION "FisherDGroup", ROMX
FisherDGroup:

	def_trainer_class FISHER_D
	def_trainer FISHER_UNDELLA_2, "Ralph"
	tr_mon 11, RATTATA
	end_trainer

	def_trainer FISHER_R4_2, "Ralph"
	tr_mon 17, RATTATA
	end_trainer

	def_trainer FISHER_R3_2, "Ralph"
	tr_mon 17, RATTATA
	tr_mon 19, RATTATA
	end_trainer

	def_trainer FISHER_R17_2, "Ralph"
	tr_mon 30, RATTATA
	tr_mon 32, RATTATA
	end_trainer

	def_trainer FISHER_MOOR_OF_ICIRRUS_2, "Tully"
	tr_mon 30, RATTATA
	end_trainer


SECTION "GentlemanGroup", ROMX
GentlemanGroup:

	def_trainer_class GENTLEMAN
	def_trainer GENTLEMAN_R3, "Preston"
	tr_mon 18, GROWLITHE
	tr_mon 18, SKARMORY
	end_trainer

	def_trainer GENTLEMAN_R2, "Edward"
	tr_mon 49, PERSIAN
	end_trainer

	def_trainer GENTLEMAN_CELESTIAL_TOWER, "Gregory"
	tr_mon 56, PIKACHU
	tr_mon 53, FLAAFFY
	tr_mon 53, CHINCHOU
	end_trainer


SECTION "GuitaristGroup", ROMX
GuitaristGroup:

	def_trainer_class GUITARIST
	def_trainer GUITARIST_VIRBANK_GYM_1, "Janet"
	tr_mon 56, PIKACHU, FEMALE | PIKACHU_SURF_FORM
		tr_moves IRON_TAIL, EXTREMESPEED, SURF, THUNDERBOLT
	tr_mon 54, ELECTABUZZ, FEMALE
		tr_moves LIGHT_SCREEN, THUNDERPUNCH, TACKLE, SCREECH
	tr_mon 55, RAICHU, FEMALE | ALOLAN_FORM
		tr_moves EXTREMESPEED, SURF, THUNDERBOLT, AGILITY
	end_trainer

	def_trainer GUITARIST_VIRBANK_GYM_2, "Morgan"
	tr_mon 55, RATTATA
	tr_mon 55, JOLTEON
	end_trainer

	def_trainer GUITARIST_CHARGESTONE_1, "Ritsuko"
	tr_mon 56, JOLTEON
	tr_mon 58, JOLTEON
	end_trainer

	def_trainer GUITARIST_CHARGESTONE_2, "Wanda"
	tr_mon 53, MAGNEMITE
	tr_mon 54, RATTATA
	tr_mon 55, MAGNETON
	end_trainer


SECTION "HarlequinGroup", ROMX
HarlequinGroup:

	def_trainer_class HARLEQUIN
	def_trainer HARLEQUIN_CASTELIA_GYM_1, "Janet"
	tr_mon 56, PIKACHU, FEMALE | PIKACHU_SURF_FORM
		tr_moves IRON_TAIL, EXTREMESPEED, SURF, THUNDERBOLT
	tr_mon 54, ELECTABUZZ, FEMALE
		tr_moves LIGHT_SCREEN, THUNDERPUNCH, TACKLE, SCREECH
	tr_mon 55, RAICHU, FEMALE | ALOLAN_FORM
		tr_moves EXTREMESPEED, SURF, THUNDERBOLT, AGILITY
	end_trainer

	def_trainer HARLEQUIN_CASTELIA_GYM_2, "Morgan"
	tr_mon 55, RATTATA
	tr_mon 55, JOLTEON
	end_trainer

	def_trainer HARLEQUIN_CASTELIA_GYM_3, "Ritsuko"
	tr_mon 56, JOLTEON
	tr_mon 58, JOLTEON
	end_trainer

	def_trainer HARLEQUIN_CASTELIA_GYM_4, "Wanda"
	tr_mon 53, MAGNEMITE
	tr_mon 54, RATTATA
	tr_mon 55, MAGNETON
	end_trainer

	def_trainer HARLEQUIN_CASTELIA_GYM_5, "Ritsuko"
	tr_mon 56, JOLTEON
	tr_mon 58, JOLTEON
	end_trainer

	def_trainer HARLEQUIN_R7, "Wanda"
	tr_mon 53, MAGNEMITE
	tr_mon 54, RATTATA
	tr_mon 55, MAGNETON
	end_trainer


SECTION "HexManiacGroup", ROMX
HexManiacGroup:

	def_trainer_class HEX_MANIAC
	def_trainer HEX_MANIAC_LENTIMAS_GYM_1, "Tamara"
	tr_mon 16, GASTLY
	tr_mon 18, MISDREAVUS
	end_trainer

	def_trainer HEX_MANIAC_LENTIMAS_GYM_2, "Ashley"
	tr_mon LEVEL_FROM_BADGES + 5, HAUNTER
	tr_mon LEVEL_FROM_BADGES + 6, MISMAGIUS
	end_trainer

	def_trainer HEX_MANIAC_LENTIMAS_GYM_3, "Amy"
	tr_mon 53, MISDREAVUS
	tr_mon 56, GENGAR
	tr_mon 53, HAUNTER
	tr_mon 56, MISMAGIUS
	end_trainer

	def_trainer HEX_MANIAC_LENTIMAS_GYM_4, "Luna"
	tr_mon 54, RATTATA
		tr_moves PSYCHIC_M, SHADOW_BALL, CONFUSE_RAY, FUTURE_SIGHT
	tr_mon 56, NINETALES
		tr_moves PSYCHIC_M, SHADOW_BALL, CONFUSE_RAY, FLAMETHROWER
	end_trainer

	def_trainer HEX_MANIAC_DESERT, "Natalie"
	tr_mon 54, RATTATA
	tr_mon 54, RATTATA
	tr_mon 56, RATTATA
	end_trainer

	def_trainer HEX_MANIAC_PINWHEEL, "Vivian"
	tr_mon 54, HAUNTER
	tr_mon 52, HAUNTER
	tr_mon 54, HAUNTER
	tr_mon 56, RATTATA
	end_trainer

	def_trainer HEX_MANIAC_RELIC_PASSAGE, "Esther"
	tr_mon 62, MISMAGIUS
	tr_mon 62, MISMAGIUS
	end_trainer

	def_trainer HEX_MANIAC_CELESTIAL_TOWER_1, "Matilda"
	tr_mon LEVEL_FROM_BADGES + 3, RATTATA
	tr_mon LEVEL_FROM_BADGES + 4, MISDREAVUS
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	end_trainer

	def_trainer HEX_MANIAC_CELESTIAL_TOWER_2, "Bethany"
	tr_mon 53, HAUNTER
	tr_mon 55, GENGAR
	tr_mon 54, MISDREAVUS
	end_trainer

	def_trainer HEX_MANIAC_VICTORY_ROAD_INT, "Coryn"
	tr_mon 53, MISMAGIUS
	tr_mon 52, ESPEON
	tr_mon 55, GENGAR
	end_trainer


SECTION "HikerGroup", ROMX
HikerGroup:

	def_trainer_class HIKER
	def_trainer HIKER_REVERSAL_1, "Anthony"
	tr_mon 12, GEODUDE
	tr_mon 12, RATTATA
	end_trainer

	def_trainer HIKER_WELLSPRING, "Anthony"
	tr_mon 16, GEODUDE
	tr_mon 18, RATTATA
	end_trainer

	def_trainer HIKER_R18, "Anthony"
	tr_mon 25, GRAVELER
	tr_mon 27, GRAVELER
	tr_mon 29, RATTATA
	end_trainer

	def_trainer HIKER_RELIC_PASSAGE_1, "Anthony"
	tr_mon 30, GRAVELER
	tr_mon 30, GRAVELER
	tr_mon 32, RATTATA
	end_trainer

	def_trainer HIKER_CHARGESTONE_2, "Anthony"
	tr_mon 34, GRAVELER
		tr_moves MAGNITUDE, MUD_SLAP, SANDSTORM, ROCK_SLIDE
	tr_mon 36, GOLEM
		tr_moves BULLDOZE, EXPLOSION, DEFENSE_CURL, ROLLOUT
	tr_mon 34, RATTATA
		tr_moves BRICK_BREAK, BULLET_PUNCH, HEADBUTT, DIG
	end_trainer

	def_trainer HIKER_MISTRALTON_CAVE_1, "Parry"
	tr_mon 30, ONIX
	end_trainer

	def_trainer HIKER_TWIST_MOUNTAIN_1, "Parry"
	tr_mon 36, ONIX
	tr_mon 35, PILOSWINE
	end_trainer


SECTION "HikerDGroup", ROMX
HikerDGroup:

	def_trainer_class HIKER_D
	def_trainer HIKER_REVERSAL_2, "Anthony"
	tr_mon 12, GEODUDE
	tr_mon 12, RATTATA
	end_trainer

	def_trainer HIKER_GIANT_CHASM, "Anthony"
	tr_mon 16, GEODUDE
	tr_mon 18, RATTATA
	end_trainer

	def_trainer HIKER_RELIC_PASSAGE_2, "Anthony"
	tr_mon 30, GRAVELER
	tr_mon 30, GRAVELER
	tr_mon 32, RATTATA
	end_trainer

	def_trainer HIKER_CHARGESTONE_1, "Anthony"
	tr_mon 34, GRAVELER
		tr_moves MAGNITUDE, MUD_SLAP, SANDSTORM, ROCK_SLIDE
	tr_mon 36, GOLEM
		tr_moves BULLDOZE, EXPLOSION, DEFENSE_CURL, ROLLOUT
	tr_mon 34, RATTATA
		tr_moves BRICK_BREAK, BULLET_PUNCH, HEADBUTT, DIG
	end_trainer

	def_trainer HIKER_CHARGESTONE_3, "Anthony"
	tr_mon 25, GRAVELER
	tr_mon 27, GRAVELER
	tr_mon 29, RATTATA
	end_trainer

	def_trainer HIKER_MISTRALTON_CAVE_2, "Parry"
	tr_mon 30, ONIX
	end_trainer

	def_trainer HIKER_TWIST_MOUNTAIN_2, "Parry"
	tr_mon 36, ONIX
	tr_mon 35, PILOSWINE
	end_trainer


SECTION "HoopsterGroup", ROMX
HoopsterGroup:

	def_trainer_class HOOPSTER
	def_trainer HOOPSTER_VILLAGE_BRIDGE_1, "Anthony"
	tr_mon 12, GEODUDE
	tr_mon 12, RATTATA
	end_trainer

	def_trainer HOOPSTER_VILLAGE_BRIDGE_2, "Anthony"
	tr_mon 16, GEODUDE
	tr_mon 18, RATTATA
	end_trainer


SECTION "JanitorGroup", ROMX
JanitorGroup:

	def_trainer_class JANITOR
	def_trainer JANITOR_CASTELIA_SEWERS_1, "Anthony"
	tr_mon 12, GEODUDE
	tr_mon 12, RATTATA
	end_trainer

	def_trainer JANITOR_CASTELIA_SEWERS_2, "Anthony"
	tr_mon 16, GEODUDE
	tr_mon 18, RATTATA
	end_trainer
	
	def_trainer JANITOR_CASTELIA_SEWERS_3, "Anthony"
	tr_mon 12, GEODUDE
	tr_mon 12, RATTATA
	end_trainer

	def_trainer JANITOR_CASTELIA_SEWERS_4, "Anthony"
	tr_mon 16, GEODUDE
	tr_mon 18, RATTATA
	end_trainer


SECTION "LadyGroup", ROMX
LadyGroup:

	def_trainer_class LADY
	def_trainer LADY_R4, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer LADY_R19, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer LACEY_REMATCH_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer LACEY_REMATCH_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer LACEY_REMATCH_3, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer LACEY_REMATCH_4, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "LinebackerGroup", ROMX
LinebackerGroup:

	def_trainer_class LINEBACKER
	def_trainer LINEBACKER_R5, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer LINEBACKER_VILLAGE_BRIDGE, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer DEAN_REMATCH_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "MaidGroup", ROMX
MaidGroup:

	def_trainer_class MAID
	def_trainer MAID_R19, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer MAID_R1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer MAID_CELESTIAL_TOWER, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer SOPHIE_REMATCH_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer SOPHIE_REMATCH_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer SOPHIE_REMATCH_3, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer SOPHIE_REMATCH_4, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer CLARISSA_REMATCH_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer CLARISSA_REMATCH_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer CLARISSA_REMATCH_3, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "MusicianGroup", ROMX
MusicianGroup:

	def_trainer_class MUSICIAN
	def_trainer MUSICIAN_VIRBANK_GYM_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer MUSICIAN_VIRBANK_GYM_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer MUSICIAN_VILLAGE_BRIDGE, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "NurseryAideGroup", ROMX
NurseryAideGroup:

	def_trainer_class NURSERY_AIDE
	def_trainer NURSERY_AIDE_MARINE_TUBE, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer NURSERY_AIDE_R14, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer NURSERY_AIDE_R20, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer NURSERY_AIDE_R7, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "ParasolLadyGroup", ROMX
ParasolLadyGroup:

	def_trainer_class PARASOL_LADY
	def_trainer PARASOL_LADY_NACRENE_OUTSKIRT, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PARASOL_LADY_R6_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PARASOL_LADY_R6_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PARASOL_LADY_R8, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer LOIS_REMATCH_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "PilotGroup", ROMX
PilotGroup:

	def_trainer_class PILOT
	def_trainer PILOT_MISTRALTON_GYM_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PILOT_MISTRALTON_GYM_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PILOT_MISTRALTON_GYM_3, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PILOT_MISTRALTON_GYM_4, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PILOT_MISTRALTON_GYM_5, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "PkmnBreederMGroup", ROMX
PkmnBreederMGroup:

	def_trainer_class PKMN_BREEDERM
	def_trainer PKMN_BREEDERM_LOSTLORN, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_BREEDERM_R19, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_BREEDERM_R6, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_BREEDERM_R7, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "PkmnBreederFGroup", ROMX
PkmnBreederFGroup:

	def_trainer_class PKMN_BREEDERF
	def_trainer PKMN_BREEDERF_LOSTLORN, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_BREEDERF_R19, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_BREEDERF_R6, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_BREEDERF_R7, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "PkmnRangerMGroup", ROMX
PkmnRangerMGroup:

	def_trainer_class PKMN_RANGERM
	def_trainer PKMN_RANGERM_OUTSKIRTS, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_DESERT, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_PINWHEEL_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_PINWHEEL_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_R3, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_R1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_R6, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_CHARGESTONE, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_R8, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_MOOR_OF_ICIRRUS, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_R23, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERM_VICTORY_ROAD_INT, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "PkmnRangerFGroup", ROMX
PkmnRangerFGroup:

	def_trainer_class PKMN_RANGERF
	def_trainer PKMN_RANGERF_OUTSKIRTS, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_DESERT, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_PINWHEEL_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_PINWHEEL_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_R3, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_R1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_R6, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_CHARGESTONE, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_R8, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_MOOR_OF_ICIRRUS, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_R23, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PKMN_RANGERF_VICTORY_ROAD_INT, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer ARIANA_REMATCH_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer ARIANA_REMATCH_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer ARIANA_REMATCH_3, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "PolicemanGroup", ROMX
PolicemanGroup:

	def_trainer_class POLICEMAN
	def_trainer POLICEMAN_R4_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer POLICEMAN_R4_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer POLICEMAN_R2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "PreschoolerMGroup", ROMX
PreschoolerMGroup:

	def_trainer_class PRESCHOOLERM
	def_trainer PRESCHOOLERM_MARINE_TUBE, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PRESCHOOLERM_R14_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PRESCHOOLERM_R14_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "PreschoolerFGroup", ROMX
PreschoolerFGroup:

	def_trainer_class PRESCHOOLERF
	def_trainer PRESCHOOLERF_MARINE_TUBE, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PRESCHOOLERF_R14_1, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer
	
	def_trainer PRESCHOOLERF_R14_2, "Jessica"
	tr_mon 55, RATTATA @ NUGGET
	tr_mon 54, RATTATA @ NUGGET
	end_trainer


SECTION "PsychicMGroup", ROMX
PsychicMGroup:

	def_trainer_class PSYCHICM_T
	def_trainer PSYCHICM_RELIC_CASTLE, "Nathan"
	tr_mon 26, RATTATA
	end_trainer

	def_trainer PSYCHICM_PINWHEEL, "Franklin"
	tr_mon 53, RATTATA
	tr_mon 56, RATTATA
	end_trainer

	def_trainer PSYCHICM_RELIC_PASSAGE, "Herman"
	tr_mon 53, EXEGGCUTE
	tr_mon 53, EXEGGCUTE
	tr_mon 55, EXEGGUTOR
	end_trainer

	def_trainer PSYCHICM_CELESTIAL_TOWER, "Fidel"
	tr_mon 57, RATTATA
	end_trainer

	def_trainer PSYCHICM_DREAMYARD, "Greg"
	tr_mon 17, RATTATA
		tr_moves HYPNOSIS, DISABLE, DREAM_EATER
	end_trainer

	def_trainer PSYCHICM_VICTORY_ROAD_INT, "Norman"
	tr_mon 17, SLOWPOKE
		tr_moves TACKLE, GROWL, WATER_GUN
	tr_mon 20, SLOWPOKE
		tr_moves CURSE, BODY_SLAM, WATER_GUN, CONFUSION
	end_trainer


SECTION "PsychicFGroup", ROMX
PsychicFGroup:

	def_trainer_class PSYCHICF_T
	def_trainer PSYCHICF_RELIC_CASTLE_1, "Nathan"
	tr_mon 26, RATTATA
	end_trainer

	def_trainer PSYCHICF_RELIC_CASTLE_2, "Franklin"
	tr_mon 53, RATTATA
	tr_mon 56, RATTATA
	end_trainer

	def_trainer PSYCHICF_RELIC_PASSAGE, "Herman"
	tr_mon 53, EXEGGCUTE
	tr_mon 53, EXEGGCUTE
	tr_mon 55, EXEGGUTOR
	end_trainer

	def_trainer PSYCHICF_CELESTIAL_TOWER, "Fidel"
	tr_mon 57, RATTATA
	end_trainer

	def_trainer PSYCHICF_DREAMYARD, "Greg"
	tr_mon 17, RATTATA
		tr_moves HYPNOSIS, DISABLE, DREAM_EATER
	end_trainer

	def_trainer PSYCHICF_VICTORY_ROAD_INT, "Norman"
	tr_mon 17, SLOWPOKE
		tr_moves TACKLE, GROWL, WATER_GUN
	tr_mon 20, SLOWPOKE
		tr_moves CURSE, BODY_SLAM, WATER_GUN, CONFUSION
	end_trainer


SECTION "RichBoyGroup", ROMX
RichBoyGroup:

	def_trainer_class RICH_BOY
	def_trainer RICH_BOY_R4, "Winston"
	tr_mon 46, RATTATA
	tr_mon 44, RATTATA
	tr_mon 45, AMPHAROS
	end_trainer

	def_trainer RICH_BOY_NACRENE_OUTSKIRT, "Gerald"
	tr_mon 42, AZUMARILL @ NUGGET
	tr_mon 40, RATTATA @ NUGGET
	end_trainer


SECTION "SchoolKidMGroup", ROMX
SchoolKidMGroup:

	def_trainer_class SCHOOL_KIDM
	def_trainer SCHOOL_KIDM_R13, "Jack"
	tr_mon 12, RATTATA
	tr_mon 15, RATTATA
	end_trainer

	def_trainer SCHOOL_KIDM_OUTSKIRTS, "Jack"
	tr_mon 14, RATTATA
	tr_mon 17, RATTATA
	end_trainer

	def_trainer SCHOOL_KIDM_LOSTLORN, "Jack"
	tr_mon 28, RATTATA
	tr_mon 31, RATTATA
	end_trainer

	def_trainer SCHOOL_KIDM_R20_1, "Jack"
	tr_mon 30, RATTATA
	tr_mon 33, GROWLITHE
	tr_mon 33, RATTATA
	end_trainer

	def_trainer SCHOOL_KIDM_R20_2, "Jack"
	tr_mon 35, RATTATA
		tr_moves SCREECH, SONIC_BOOM, ROLLOUT, LIGHT_SCREEN
	tr_mon 35, GROWLITHE
		tr_moves SUNNY_DAY, LEER, TAKE_DOWN, FLAME_CHARGE
	tr_mon 37, RATTATA
		tr_moves SOLAR_BEAM, SLEEP_POWDER, ACID, HEALINGLIGHT
	end_trainer

	def_trainer SCHOOL_KIDM_R20_3, "Alan"
	tr_mon 17, TANGELA
	end_trainer

	def_trainer SCHOOL_KIDM_DREAMYARD, "Alan"
	tr_mon 17, TANGELA
	tr_mon 17, YANMA
	end_trainer

	def_trainer SCHOOL_KIDM_R7, "Alan"
	tr_mon 20, RATTATA
	tr_mon 22, TANGELA
	tr_mon 20, RATTATA
	tr_mon 25, YANMA
	end_trainer


SECTION "SchoolKidFGroup", ROMX
SchoolKidFGroup:

	def_trainer_class SCHOOL_KIDF
	def_trainer SCHOOL_KIDF_R13, "Molly"
	tr_mon 7, "Teddy", RATTATA
	tr_mon 6, RATTATA
	end_trainer

	def_trainer SCHOOL_KIDF_REVERSAL, "Eliza"
	tr_mon 18, "Silver", RATTATA @ SILVER_LEAF
	tr_mon 16, "Lady", RATTATA
	tr_mon 17, "Tret", RATTATA @ ORAN_BERRY
	end_trainer

	def_trainer SCHOOL_KIDF_LOSTLORN, "Faith"
	tr_mon 57, RATTATA
	tr_mon 58, RATTATA
	tr_mon 59, "Audrey", RATTATA
	end_trainer

	def_trainer SCHOOL_KIDF_R20_1, "Sarah"
	tr_mon LEVEL_FROM_BADGES + 2, "Charmer", RATTATA
	tr_mon LEVEL_FROM_BADGES + 0, RATTATA
	tr_mon LEVEL_FROM_BADGES + 1, MARILL
	end_trainer

	def_trainer SCHOOL_KIDF_R20_2, "Sarah"
	tr_mon LEVEL_FROM_BADGES + 2, "Charmer", RATTATA
	tr_mon LEVEL_FROM_BADGES + 0, RATTATA
	tr_mon LEVEL_FROM_BADGES + 1, MARILL
	end_trainer

	def_trainer SCHOOL_KIDF_R20_3, "Sarah"
	tr_mon LEVEL_FROM_BADGES + 2, "Charmer", RATTATA
	tr_mon LEVEL_FROM_BADGES + 0, RATTATA
	tr_mon LEVEL_FROM_BADGES + 1, MARILL
	end_trainer

	def_trainer SCHOOL_KIDF_DREAMYARD, "Isabel"
	tr_mon LEVEL_FROM_BADGES + 2, "Turtle", RATTATA
	tr_mon LEVEL_FROM_BADGES + 0, RATTATA
	tr_mon LEVEL_FROM_BADGES + 1, PIKACHU
	end_trainer

	def_trainer SCHOOL_KIDF_R7, "Imogen"
	tr_mon 13, "Garlic", RATTATA
	tr_mon 11, POLIWAG
	end_trainer


SECTION "ScientistMGroup", ROMX
ScientistMGroup:

	def_trainer_class SCIENTISTM
	def_trainer SCIENTISTM_CASTELIA_SEWERS, "Lowell"
	tr_mon 60, ARCANINE
	end_trainer

	def_trainer SCIENTISTM_R6, "Dennett"
	tr_mon 60, NINETALES
	end_trainer

	def_trainer SCIENTISTM_CHARGESTONE, "Linden"
	tr_mon 60, MAGMAR
	end_trainer

	def_trainer SCIENTISTM_DREAMYARD, "Oskar"
	tr_mon 64, RATTATA
	tr_mon 62, NINETALES
	tr_mon 60, MAGNEZONE
	end_trainer

	def_trainer SCIENTISTM_VICTORY_ROAD_EXT, "Braydon"
	tr_mon 60, MAGNETON
	tr_mon 62, MAGNEZONE
	tr_mon 63, RATTATA
	end_trainer

	def_trainer MARCO_REMATCH_1, "Carl"
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	tr_mon LEVEL_FROM_BADGES + 6, MAGNETON
	end_trainer

	def_trainer MARCO_REMATCH_2, "Dexter"
	tr_mon 54, MAGNETON
	tr_mon 55, RATTATA
	end_trainer
	

SECTION "PlasmaScientistMGroup", ROMX
PlasmaScientistMGroup:

	def_trainer_class PLASMA_SCIENTISTM
	def_trainer SCIENTISTM_VIRBANK_COMPLEX, "Ross"
	tr_mon 30, KOFFING, MALE
	tr_mon 30, GRIMER, MALE | ALOLAN_FORM
	end_trainer

	def_trainer SCIENTISTM_P2, "Mitch"
	tr_mon 25, DITTO
	tr_mon 25, RATTATA
	end_trainer


SECTION "ScientistFGroup", ROMX
ScientistFGroup:

	def_trainer_class SCIENTISTF
	def_trainer SCIENTISTF_CASTELIA_SEWERS, "Lowell"
	tr_mon 60, ARCANINE
	end_trainer

	def_trainer SCIENTISTF_R6, "Dennett"
	tr_mon 60, NINETALES
	end_trainer

	def_trainer SCIENTISTF_CHARGESTONE, "Linden"
	tr_mon 60, MAGMAR
	end_trainer

	def_trainer SCIENTISTF_DREAMYARD, "Oskar"
	tr_mon 64, RATTATA
	tr_mon 62, NINETALES
	tr_mon 60, MAGNEZONE
	end_trainer

	def_trainer SCIENTISTF_VICTORY_ROAD_EXT, "Braydon"
	tr_mon 60, MAGNETON
	tr_mon 62, MAGNEZONE
	tr_mon 63, RATTATA
	end_trainer
	

SECTION "PlasmaScientistFGroup", ROMX
PlasmaScientistFGroup:

	def_trainer_class PLASMA_SCIENTISTF
	def_trainer SCIENTISTF_VIRBANK_COMPLEX_1, "Ross"
	tr_mon 30, KOFFING, MALE
	tr_mon 30, GRIMER, MALE | ALOLAN_FORM
	end_trainer

	def_trainer SCIENTISTF_VIRBANK_COMPLEX_2, "Mitch"
	tr_mon 25, DITTO
	tr_mon 25, RATTATA
	end_trainer
	

SECTION "SmasherGroup", ROMX
SmasherGroup:

	def_trainer_class SMASHER
	def_trainer SMASHER_VILLAGE_BRIDGE_1, "Ross"
	tr_mon 30, KOFFING, MALE
	tr_mon 30, GRIMER, MALE | ALOLAN_FORM
	end_trainer

	def_trainer SMASHER_VILLAGE_BRIDGE_2, "Mitch"
	tr_mon 25, DITTO
	tr_mon 25, RATTATA
	end_trainer
	

SECTION "SocialiteGroup", ROMX
SocialiteGroup:

	def_trainer_class SOCIALITE
	def_trainer SOCIALITE_R3, "Ross"
	tr_mon 30, KOFFING, MALE
	tr_mon 30, GRIMER, MALE | ALOLAN_FORM
	end_trainer

	def_trainer SOCIALITE_R2, "Mitch"
	tr_mon 25, DITTO
	tr_mon 25, RATTATA
	end_trainer

	def_trainer SOCIALITE_CELESTIAL_TOWER, "Mitch"
	tr_mon 25, DITTO
	tr_mon 25, RATTATA
	end_trainer


SECTION "SwimmerMGroup", ROMX
SwimmerMGroup:

	def_trainer_class SWIMMERM
	def_trainer SWIMMER_M_HUMILAU_GYM, "Harold"
	tr_mon 60, REMORAID
	tr_mon 58, SEADRA
	end_trainer

	def_trainer SWIMMER_M_R17_1, "Simon"
	tr_mon 20, RATTATA
	tr_mon 20, RATTATA
	end_trainer

	def_trainer SWIMMER_M_R21_1, "Randall"
	tr_mon 18, RATTATA
	tr_mon 20, RATTATA
	tr_mon 18, RATTATA
	end_trainer


SECTION "SwimmerMDGroup", ROMX
SwimmerMDGroup:

	def_trainer_class SWIMMERM_D
	def_trainer SWIMMER_M_R17_2, "Harold"
	tr_mon 60, REMORAID
	tr_mon 58, SEADRA
	end_trainer

	def_trainer SWIMMER_M_R21_2, "Simon"
	tr_mon 20, RATTATA
	tr_mon 20, RATTATA
	end_trainer

	def_trainer SWIMMER_M_R21_3, "Randall"
	tr_mon 18, RATTATA
	tr_mon 20, RATTATA
	tr_mon 18, RATTATA
	end_trainer


SECTION "SwimmerFGroup", ROMX
SwimmerFGroup:

	def_trainer_class SWIMMERF
	def_trainer SWIMMER_F_R17_1, "Elaine"
	tr_mon 21, STARYU
	end_trainer

	def_trainer SWIMMER_F_R21_1, "Paula"
	tr_mon 19, STARYU
	tr_mon 19, RATTATA
	end_trainer

	def_trainer SWIMMER_F_R21_2, "Kaylee"
	tr_mon 18, RATTATA
	tr_mon 20, RATTATA
	tr_mon 20, RATTATA
	end_trainer


SECTION "SwimmerFDGroup", ROMX
SwimmerFDGroup:

	def_trainer_class SWIMMERF_D
	def_trainer SWIMMER_F_HUMILAU_GYM, "Elaine"
	tr_mon 21, STARYU
	end_trainer

	def_trainer SWIMMER_F_R17_2, "Paula"
	tr_mon 19, STARYU
	tr_mon 19, RATTATA
	end_trainer

	def_trainer SWIMMER_F_R21_3, "Kaylee"
	tr_mon 18, RATTATA
	tr_mon 20, RATTATA
	tr_mon 20, RATTATA
	end_trainer
	

SECTION "TwinsGroup", ROMX
TwinsGroup:

	def_trainer_class TWINS
	def_trainer TWINS_MARINE_TUBE, "Amy & Mimi"
	tr_mon 13, RATTATA
	tr_mon 13, RATTATA
	end_trainer

	def_trainer TWINS_R20, "Amy & Mimi"
	tr_mon 10, RATTATA
	tr_mon 10, RATTATA
	end_trainer

	def_trainer TWINS_R2, "Tori & Til"
	tr_mon 16, MARILL
		tr_moves DEFENSE_CURL, ROLLOUT, BUBBLE_BEAM, DIZZY_PUNCH
	tr_mon 16, MAREEP
		tr_moves GROWL, THUNDER_WAVE, THUNDERSHOCK, MUD_SLAP
	end_trainer

	def_trainer TWINS_R1, "Tori & Til"
	tr_mon 16, MAREEP
		tr_moves GROWL, THUNDER_WAVE, THUNDERSHOCK, MUD_SLAP
	tr_mon 16, MARILL
		tr_moves DEFENSE_CURL, ROLLOUT, BUBBLE_BEAM, DIZZY_PUNCH
	end_trainer

	def_trainer TWINS_R7, "Lo & Zoe"
	tr_mon 59, RATTATA
	tr_mon 59, RATTATA
	end_trainer


SECTION "VeteranMGroup", ROMX
VeteranMGroup:

	def_trainer_class VETERANM
	def_trainer VETERANM_OPELUCID_GYM_1, "Matthew"
	tr_mon 41, RATTATA @ KINGS_ROCK
		tr_moves SCARY_FACE, METAL_CLAW, CRUNCH, WATERFALL
	tr_mon 40, AMPHAROS @ MAGNET
		tr_moves THUNDER_WAVE, CONFUSE_RAY, DRAGON_PULSE, THUNDERBOLT
	tr_mon 38, RATTATA @ LEFTOVERS
		tr_moves BELLY_DRUM, PLAY_ROUGH, SLASH, STRENGTH
	tr_mon 38, RATTATA @ QUICK_CLAW
		tr_moves REFLECT, PSYCHIC_M, SHADOW_BALL, AIR_SLASH
	tr_mon 39, ARCANINE @ CHARCOAL
		tr_moves FLAME_CHARGE, FLAMETHROWER, DOUBLE_KICK, TAKE_DOWN
	tr_mon 37, SANDSLASH @ HARD_STONE
		tr_moves SLASH, EARTHQUAKE, DEFENSE_CURL, ROLLOUT
	end_trainer

	def_trainer VETERANM_OPELUCID_GYM_2, "Remy"
	tr_mon 42, RATTATA @ MYSTIC_WATER
		tr_moves SURF, AQUA_TAIL, ICE_BEAM, BODY_SLAM
	tr_mon 41, NINETALES @ CHARCOAL
		tr_moves FLAMETHROWER, SHADOW_BALL, CONFUSE_RAY, EXTRASENSORY
	tr_mon 39, RATTATA @ MIRACLE_SEED
		tr_moves SLUDGE_BOMB, SEED_BOMB, SLEEP_POWDER, SWORDS_DANCE
	tr_mon 39, RAICHU @ SILK_SCARF
		tr_moves SURF, THUNDERBOLT, EXTREMESPEED, NASTY_PLOT
	tr_mon 40, RATTATA @ TWISTEDSPOON
		tr_moves TRI_ATTACK, PSYBEAM, RECOVER, REFLECT
	tr_mon 38, SKARMORY @ SHARP_BEAK
		tr_moves DRILL_PECK, SWIFT, STEEL_WING, BRICK_BREAK
	end_trainer

	def_trainer VETERANM_OPELUCID_GYM_3, "Barkhorn"
	tr_mon LEVEL_FROM_BADGES + 5, PUPITAR @ ROCKY_HELMET, MALE
		tr_extra SHED_SKIN, ATK_UP_SATK_DOWN
		tr_evs 232 HP
		tr_moves SANDSTORM, ROCK_SLIDE, PURSUIT, OUTRAGE
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA @ ROCKY_HELMET, MALE
		tr_extra HUSTLE, ATK_UP_SATK_DOWN
		tr_evs 232 HP
		tr_moves SPIKES, EXPLOSION, SANDSTORM, DIG
	tr_mon LEVEL_FROM_BADGES + 6, SKARMORY @ ROCKY_HELMET, MALE
		tr_extra STURDY
		tr_evs 232 HP
		tr_moves SPIKES, ROAR, TOXIC, PROTECT
	tr_mon LEVEL_FROM_BADGES + 7, UMBREON @ ROCKY_HELMET, MALE
		tr_extra SYNCHRONIZE
		tr_evs 232 HP
		tr_moves TOXIC, CONFUSE_RAY, FEINT_ATTACK, PROTECT
	end_trainer

	def_trainer VETERANM_R23, "En"
	tr_mon 60, DRAGONITE @ MUSCLE_BAND
		tr_moves DRAGON_CLAW, DRAGON_DANCE, FLY, EARTHQUAKE
	tr_mon 60, RATTATA @ QUICK_CLAW
		tr_moves ICE_BEAM, BRAVE_BIRD, ROOST, U_TURN
	tr_mon 60, RATTATA @ WISE_GLASSES
		tr_moves THUNDERBOLT, AIR_SLASH, ROOST, EXTRASENSORY
	tr_mon 60, RATTATA @ FOCUS_BAND
		tr_moves FLAMETHROWER, BRAVE_BIRD, WILL_O_WISP, ANCIENTPOWER
	tr_mon 60, ARCANINE @ SHELL_BELL
		tr_moves FLARE_BLITZ, WILD_CHARGE, CLOSE_COMBAT, EXTREMESPEED
	tr_mon 60, SNORLAX @ LEFTOVERS
		tr_moves BODY_SLAM, CRUNCH, REST, CURSE
	end_trainer
	
	def_trainer VETERANM_VICTORY_ROAD_INT_1, "Matthew"
	tr_mon 41, RATTATA @ KINGS_ROCK
		tr_moves SCARY_FACE, METAL_CLAW, CRUNCH, WATERFALL
	tr_mon 40, AMPHAROS @ MAGNET
		tr_moves THUNDER_WAVE, CONFUSE_RAY, DRAGON_PULSE, THUNDERBOLT
	tr_mon 38, RATTATA @ LEFTOVERS
		tr_moves BELLY_DRUM, PLAY_ROUGH, SLASH, STRENGTH
	tr_mon 38, RATTATA @ QUICK_CLAW
		tr_moves REFLECT, PSYCHIC_M, SHADOW_BALL, AIR_SLASH
	tr_mon 39, ARCANINE @ CHARCOAL
		tr_moves FLAME_CHARGE, FLAMETHROWER, DOUBLE_KICK, TAKE_DOWN
	tr_mon 37, SANDSLASH @ HARD_STONE
		tr_moves SLASH, EARTHQUAKE, DEFENSE_CURL, ROLLOUT
	end_trainer

	def_trainer VETERANM_VICTORY_ROAD_INT_2, "Remy"
	tr_mon 42, RATTATA @ MYSTIC_WATER
		tr_moves SURF, AQUA_TAIL, ICE_BEAM, BODY_SLAM
	tr_mon 41, NINETALES @ CHARCOAL
		tr_moves FLAMETHROWER, SHADOW_BALL, CONFUSE_RAY, EXTRASENSORY
	tr_mon 39, RATTATA @ MIRACLE_SEED
		tr_moves SLUDGE_BOMB, SEED_BOMB, SLEEP_POWDER, SWORDS_DANCE
	tr_mon 39, RAICHU @ SILK_SCARF
		tr_moves SURF, THUNDERBOLT, EXTREMESPEED, NASTY_PLOT
	tr_mon 40, RATTATA @ TWISTEDSPOON
		tr_moves TRI_ATTACK, PSYBEAM, RECOVER, REFLECT
	tr_mon 38, SKARMORY @ SHARP_BEAK
		tr_moves DRILL_PECK, SWIFT, STEEL_WING, BRICK_BREAK
	end_trainer

	def_trainer VETERANM_VICTORY_ROAD_EXT_1, "Barkhorn"
	tr_mon LEVEL_FROM_BADGES + 5, PUPITAR @ ROCKY_HELMET, MALE
		tr_extra SHED_SKIN, ATK_UP_SATK_DOWN
		tr_evs 232 HP
		tr_moves SANDSTORM, ROCK_SLIDE, PURSUIT, OUTRAGE
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA @ ROCKY_HELMET, MALE
		tr_extra HUSTLE, ATK_UP_SATK_DOWN
		tr_evs 232 HP
		tr_moves SPIKES, EXPLOSION, SANDSTORM, DIG
	tr_mon LEVEL_FROM_BADGES + 6, SKARMORY @ ROCKY_HELMET, MALE
		tr_extra STURDY
		tr_evs 232 HP
		tr_moves SPIKES, ROAR, TOXIC, PROTECT
	tr_mon LEVEL_FROM_BADGES + 7, UMBREON @ ROCKY_HELMET, MALE
		tr_extra SYNCHRONIZE
		tr_evs 232 HP
		tr_moves TOXIC, CONFUSE_RAY, FEINT_ATTACK, PROTECT
	end_trainer

	def_trainer VETERANM_VICTORY_ROAD_EXT_2, "En"
	tr_mon 60, DRAGONITE @ MUSCLE_BAND
		tr_moves DRAGON_CLAW, DRAGON_DANCE, FLY, EARTHQUAKE
	tr_mon 60, RATTATA @ QUICK_CLAW
		tr_moves ICE_BEAM, BRAVE_BIRD, ROOST, U_TURN
	tr_mon 60, RATTATA @ WISE_GLASSES
		tr_moves THUNDERBOLT, AIR_SLASH, ROOST, EXTRASENSORY
	tr_mon 60, RATTATA @ FOCUS_BAND
		tr_moves FLAMETHROWER, BRAVE_BIRD, WILL_O_WISP, ANCIENTPOWER
	tr_mon 60, ARCANINE @ SHELL_BELL
		tr_moves FLARE_BLITZ, WILD_CHARGE, CLOSE_COMBAT, EXTREMESPEED
	tr_mon 60, SNORLAX @ LEFTOVERS
		tr_moves BODY_SLAM, CRUNCH, REST, CURSE
	end_trainer

	def_trainer VETERANM_TWIST_MOUNTAIN_1, "Barkhorn"
	tr_mon LEVEL_FROM_BADGES + 5, PUPITAR @ ROCKY_HELMET, MALE
		tr_extra SHED_SKIN, ATK_UP_SATK_DOWN
		tr_evs 232 HP
		tr_moves SANDSTORM, ROCK_SLIDE, PURSUIT, OUTRAGE
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA @ ROCKY_HELMET, MALE
		tr_extra HUSTLE, ATK_UP_SATK_DOWN
		tr_evs 232 HP
		tr_moves SPIKES, EXPLOSION, SANDSTORM, DIG
	tr_mon LEVEL_FROM_BADGES + 6, SKARMORY @ ROCKY_HELMET, MALE
		tr_extra STURDY
		tr_evs 232 HP
		tr_moves SPIKES, ROAR, TOXIC, PROTECT
	tr_mon LEVEL_FROM_BADGES + 7, UMBREON @ ROCKY_HELMET, MALE
		tr_extra SYNCHRONIZE
		tr_evs 232 HP
		tr_moves TOXIC, CONFUSE_RAY, FEINT_ATTACK, PROTECT
	end_trainer

	def_trainer VETERANM_TWIST_MOUNTAIN_2, "En"
	tr_mon 60, DRAGONITE @ MUSCLE_BAND
		tr_moves DRAGON_CLAW, DRAGON_DANCE, FLY, EARTHQUAKE
	tr_mon 60, RATTATA @ QUICK_CLAW
		tr_moves ICE_BEAM, BRAVE_BIRD, ROOST, U_TURN
	tr_mon 60, RATTATA @ WISE_GLASSES
		tr_moves THUNDERBOLT, AIR_SLASH, ROOST, EXTRASENSORY
	tr_mon 60, RATTATA @ FOCUS_BAND
		tr_moves FLAMETHROWER, BRAVE_BIRD, WILL_O_WISP, ANCIENTPOWER
	tr_mon 60, ARCANINE @ SHELL_BELL
		tr_moves FLARE_BLITZ, WILD_CHARGE, CLOSE_COMBAT, EXTREMESPEED
	tr_mon 60, SNORLAX @ LEFTOVERS
		tr_moves BODY_SLAM, CRUNCH, REST, CURSE
	end_trainer


SECTION "VeteranFGroup", ROMX
VeteranFGroup:

	def_trainer_class VETERANF
	def_trainer VETERANF_SEASIDE_CAVE, "Joanne"
	tr_mon 41, RATTATA @ MIRACLE_SEED
		tr_moves GROWTH, SLUDGE_BOMB, PETAL_DANCE, SLEEP_POWDER
	tr_mon 38, RATTATA @ QUICK_CLAW
		tr_moves ROOST, FLY, SWIFT, ROAR
	tr_mon 39, SCYTHER @ EVIOLITE
		tr_moves SLASH, AERIAL_ACE, SWORDS_DANCE, PURSUIT
	tr_mon 38, ELECTABUZZ @ MAGNET
		tr_moves THUNDERBOLT, BULK_UP, BRICK_BREAK, LIGHT_SCREEN
	tr_mon 40, POLIWRATH @ KINGS_ROCK
		tr_moves WATERFALL, SURF, STRENGTH, BODY_SLAM
	tr_mon 37, FLAREON @ CHARCOAL
		tr_moves TACKLE, FLAME_CHARGE, QUICK_ATTACK, IRON_TAIL
	end_trainer

	def_trainer VETERANF_OPELUCID_GYM_1, "Jonet"
	tr_mon 41, RATTATA @ CHARCOAL
		tr_moves FLAME_CHARGE, THUNDERPUNCH, DIG, STRENGTH
	tr_mon 40, ESPEON @ NEVERMELTICE
		tr_moves PSYCHIC_M, REFLECT, SHADOW_BALL, QUICK_ATTACK
	tr_mon 39, TOGEKISS @ LEFTOVERS
		tr_moves FLY, TACKLE, AURA_SPHERE, EXTREMESPEED
	tr_mon 39, OCTILLERY @ QUICK_CLAW
		tr_moves SURF, ICE_BEAM, PSYBEAM, SEED_BOMB
	tr_mon 37, HERACROSS @ KINGS_ROCK
		tr_moves BRICK_BREAK, STRENGTH, AERIAL_ACE, DOUBLE_TEAM
	tr_mon 38, PUPITAR @ EVIOLITE
		tr_moves EARTHQUAKE, ROCK_SLIDE, SCARY_FACE, DARK_PULSE
	end_trainer

	def_trainer VETERANF_OPELUCID_GYM_2, "Litvyak"
	tr_mon LEVEL_FROM_BADGES + 11, RATTATA @ CHOICE_SPECS, FEMALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 44 Spe
		tr_moves PSYCHIC_M, SHADOW_BALL, FOCUS_BLAST, HP_FIRE
	tr_mon LEVEL_FROM_BADGES + 11, RATTATA @ CHOICE_SPECS, FEMALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 44 Spe
		tr_moves TRI_ATTACK, DARK_PULSE, ICE_BEAM, HP_GROUND
	tr_mon LEVEL_FROM_BADGES + 11, GENGAR @ CHOICE_SPECS, FEMALE
		tr_extra CURSED_BODY, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 44 Spe
		tr_moves SHADOW_BALL, THUNDERBOLT, FOCUS_BLAST, HP_ICE
	end_trainer

	def_trainer VETERANF_OPELUCID_GYM_3, "Madoka"
	tr_mon 60, TYRANITAR @ MUSCLE_BAND
		tr_moves ROCK_SLIDE, CRUNCH, IRON_HEAD, FIRE_PUNCH
	tr_mon 60, RATTATA @ LIGHT_CLAY
		tr_moves THUNDERBOLT, REFLECT, LIGHT_SCREEN, SHADOW_BALL
	tr_mon 60, RATTATA @ ASSAULT_VEST
		tr_moves FLAME_CHARGE, EXTREMESPEED, STONE_EDGE, EARTHQUAKE
	tr_mon 60, RATTATA @ SHELL_BELL
		tr_moves ICE_BEAM, SCALD, CALM_MIND, REST
	tr_mon 60, SKARMORY @ LEFTOVERS
		tr_moves BRAVE_BIRD, IRON_HEAD, ROOST, SWORDS_DANCE
	tr_mon 60, KINGDRA @ WISE_GLASSES
		tr_moves SURF, DRAGON_PULSE, ICE_BEAM, FLAMETHROWER
	end_trainer
	
	def_trainer VETERANF_VICTORY_ROAD_INT_1, "Joanne"
	tr_mon 41, RATTATA @ MIRACLE_SEED
		tr_moves GROWTH, SLUDGE_BOMB, PETAL_DANCE, SLEEP_POWDER
	tr_mon 38, RATTATA @ QUICK_CLAW
		tr_moves ROOST, FLY, SWIFT, ROAR
	tr_mon 39, SCYTHER @ EVIOLITE
		tr_moves SLASH, AERIAL_ACE, SWORDS_DANCE, PURSUIT
	tr_mon 38, ELECTABUZZ @ MAGNET
		tr_moves THUNDERBOLT, BULK_UP, BRICK_BREAK, LIGHT_SCREEN
	tr_mon 40, POLIWRATH @ KINGS_ROCK
		tr_moves WATERFALL, SURF, STRENGTH, BODY_SLAM
	tr_mon 37, FLAREON @ CHARCOAL
		tr_moves TACKLE, FLAME_CHARGE, QUICK_ATTACK, IRON_TAIL
	end_trainer

	def_trainer VETERANF_VICTORY_ROAD_INT_2, "Jonet"
	tr_mon 41, RATTATA @ CHARCOAL
		tr_moves FLAME_CHARGE, THUNDERPUNCH, DIG, STRENGTH
	tr_mon 40, ESPEON @ NEVERMELTICE
		tr_moves PSYCHIC_M, REFLECT, SHADOW_BALL, QUICK_ATTACK
	tr_mon 39, TOGEKISS @ LEFTOVERS
		tr_moves FLY, TACKLE, AURA_SPHERE, EXTREMESPEED
	tr_mon 39, OCTILLERY @ QUICK_CLAW
		tr_moves SURF, ICE_BEAM, PSYBEAM, SEED_BOMB
	tr_mon 37, HERACROSS @ KINGS_ROCK
		tr_moves BRICK_BREAK, STRENGTH, AERIAL_ACE, DOUBLE_TEAM
	tr_mon 38, PUPITAR @ EVIOLITE
		tr_moves EARTHQUAKE, ROCK_SLIDE, SCARY_FACE, DARK_PULSE
	end_trainer

	def_trainer VETERANF_VICTORY_ROAD_EXT_1, "Litvyak"
	tr_mon LEVEL_FROM_BADGES + 11, RATTATA @ CHOICE_SPECS, FEMALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 44 Spe
		tr_moves PSYCHIC_M, SHADOW_BALL, FOCUS_BLAST, HP_FIRE
	tr_mon LEVEL_FROM_BADGES + 11, RATTATA @ CHOICE_SPECS, FEMALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 44 Spe
		tr_moves TRI_ATTACK, DARK_PULSE, ICE_BEAM, HP_GROUND
	tr_mon LEVEL_FROM_BADGES + 11, GENGAR @ CHOICE_SPECS, FEMALE
		tr_extra CURSED_BODY, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 44 Spe
		tr_moves SHADOW_BALL, THUNDERBOLT, FOCUS_BLAST, HP_ICE
	end_trainer

	def_trainer VETERANF_VICTORY_ROAD_EXT_2, "Madoka"
	tr_mon 60, TYRANITAR @ MUSCLE_BAND
		tr_moves ROCK_SLIDE, CRUNCH, IRON_HEAD, FIRE_PUNCH
	tr_mon 60, RATTATA @ LIGHT_CLAY
		tr_moves THUNDERBOLT, REFLECT, LIGHT_SCREEN, SHADOW_BALL
	tr_mon 60, RATTATA @ ASSAULT_VEST
		tr_moves FLAME_CHARGE, EXTREMESPEED, STONE_EDGE, EARTHQUAKE
	tr_mon 60, RATTATA @ SHELL_BELL
		tr_moves ICE_BEAM, SCALD, CALM_MIND, REST
	tr_mon 60, SKARMORY @ LEFTOVERS
		tr_moves BRAVE_BIRD, IRON_HEAD, ROOST, SWORDS_DANCE
	tr_mon 60, KINGDRA @ WISE_GLASSES
		tr_moves SURF, DRAGON_PULSE, ICE_BEAM, FLAMETHROWER
	end_trainer

	def_trainer VETERANF_TWIST_MOUNTAIN_1, "Litvyak"
	tr_mon LEVEL_FROM_BADGES + 11, RATTATA @ CHOICE_SPECS, FEMALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 44 Spe
		tr_moves PSYCHIC_M, SHADOW_BALL, FOCUS_BLAST, HP_FIRE
	tr_mon LEVEL_FROM_BADGES + 11, RATTATA @ CHOICE_SPECS, FEMALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 44 Spe
		tr_moves TRI_ATTACK, DARK_PULSE, ICE_BEAM, HP_GROUND
	tr_mon LEVEL_FROM_BADGES + 11, GENGAR @ CHOICE_SPECS, FEMALE
		tr_extra CURSED_BODY, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 44 Spe
		tr_moves SHADOW_BALL, THUNDERBOLT, FOCUS_BLAST, HP_ICE
	end_trainer

	def_trainer VETERANF_TWIST_MOUNTAIN_2, "Madoka"
	tr_mon 60, TYRANITAR @ MUSCLE_BAND
		tr_moves ROCK_SLIDE, CRUNCH, IRON_HEAD, FIRE_PUNCH
	tr_mon 60, RATTATA @ LIGHT_CLAY
		tr_moves THUNDERBOLT, REFLECT, LIGHT_SCREEN, SHADOW_BALL
	tr_mon 60, RATTATA @ ASSAULT_VEST
		tr_moves FLAME_CHARGE, EXTREMESPEED, STONE_EDGE, EARTHQUAKE
	tr_mon 60, RATTATA @ SHELL_BELL
		tr_moves ICE_BEAM, SCALD, CALM_MIND, REST
	tr_mon 60, SKARMORY @ LEFTOVERS
		tr_moves BRAVE_BIRD, IRON_HEAD, ROOST, SWORDS_DANCE
	tr_mon 60, KINGDRA @ WISE_GLASSES
		tr_moves SURF, DRAGON_PULSE, ICE_BEAM, FLAMETHROWER
	end_trainer
	

SECTION "WaiterGroup", ROMX
WaiterGroup:

	def_trainer_class WAITER
	def_trainer WAITER_STRIATON_GYM_1, "Amy & Mimi"
	tr_mon 13, RATTATA
	tr_mon 13, RATTATA
	end_trainer

	def_trainer WAITER_STRIATON_GYM_2, "Amy & Mimi"
	tr_mon 10, RATTATA
	tr_mon 10, RATTATA
	end_trainer
	

SECTION "WaitressGroup", ROMX
WaitressGroup:

	def_trainer_class WAITRESS
	def_trainer WAITRESS_STRIATON_GYM_1, "Amy & Mimi"
	tr_mon 13, RATTATA
	tr_mon 13, RATTATA
	end_trainer

	def_trainer WAITRESS_STRIATON_GYM_2, "Amy & Mimi"
	tr_mon 10, RATTATA
	tr_mon 10, RATTATA
	end_trainer

	def_trainer WAITRESS_STRIATON_GYM_3, "Tori & Til"
	tr_mon 16, MARILL
		tr_moves DEFENSE_CURL, ROLLOUT, BUBBLE_BEAM, DIZZY_PUNCH
	tr_mon 16, MAREEP
		tr_moves GROWL, THUNDER_WAVE, THUNDERSHOCK, MUD_SLAP
	end_trainer
	

SECTION "WorkerGroup", ROMX
WorkerGroup:

	def_trainer_class WORKER
	def_trainer WORKER_CASTELIA_SEWERS_1, "Amy & Mimi"
	tr_mon 13, RATTATA
	tr_mon 13, RATTATA
	end_trainer

	def_trainer WORKER_CASTELIA_SEWERS_2, "Amy & Mimi"
	tr_mon 10, RATTATA
	tr_mon 10, RATTATA
	end_trainer

	def_trainer WORKER_CASTELIA_SEWERS_3, "Tori & Til"
	tr_mon 16, MARILL
		tr_moves DEFENSE_CURL, ROLLOUT, BUBBLE_BEAM, DIZZY_PUNCH
	tr_mon 16, MAREEP
		tr_moves GROWL, THUNDER_WAVE, THUNDERSHOCK, MUD_SLAP
	end_trainer
	
	def_trainer WORKER_RELIC_PASSAGE, "Amy & Mimi"
	tr_mon 13, RATTATA
	tr_mon 13, RATTATA
	end_trainer

	def_trainer WORKER_TWIST_MOUNTAIN_1, "Amy & Mimi"
	tr_mon 10, RATTATA
	tr_mon 10, RATTATA
	end_trainer

	def_trainer WORKER_TWIST_MOUNTAIN_2, "Tori & Til"
	tr_mon 16, MARILL
		tr_moves DEFENSE_CURL, ROLLOUT, BUBBLE_BEAM, DIZZY_PUNCH
	tr_mon 16, MAREEP
		tr_moves GROWL, THUNDER_WAVE, THUNDERSHOCK, MUD_SLAP
	end_trainer
	
	def_trainer WORKER_TWIST_MOUNTAIN_3, "Amy & Mimi"
	tr_mon 13, RATTATA
	tr_mon 13, RATTATA
	end_trainer

	def_trainer WORKER_TWIST_MOUNTAIN_4, "Amy & Mimi"
	tr_mon 10, RATTATA
	tr_mon 10, RATTATA
	end_trainer

	def_trainer WORKER_TWIST_MOUNTAIN_5, "Tori & Til"
	tr_mon 16, MARILL
		tr_moves DEFENSE_CURL, ROLLOUT, BUBBLE_BEAM, DIZZY_PUNCH
	tr_mon 16, MAREEP
		tr_moves GROWL, THUNDER_WAVE, THUNDERSHOCK, MUD_SLAP
	end_trainer


SECTION "GruntMGroup", ROMX
GruntMGroup:

	def_trainer_class GRUNTM
	def_trainer GRUNTM_REVERSAL, "Grunt"
	end_trainer

	def_trainer GRUNTM_LOSTLORN, "Grunt"
	tr_mon 8, RATTATA
	tr_mon 10, ZUBAT
	tr_mon 10, GASTLY
	end_trainer


	def_trainer GRUNTM_NIMBASA_1, "Grunt"
	tr_mon 33, RATICATE, MALE | ALOLAN_FORM
		tr_extra GLUTTONY
	tr_mon 33, SNEASEL, MALE
	end_trainer

	def_trainer GRUNTM_NIMBASA_2, "Grunt"
	tr_mon 32, GRIMER, MALE
	tr_mon 33, HOUNDOUR, MALE
	tr_mon 34, MUK, MALE | ALOLAN_FORM
	end_trainer

	def_trainer GRUNTM_NIMBASA_3, "Grunt"
	tr_mon 31, RATTATA, MALE
	tr_mon 33, HOUNDOUR, MALE
	tr_mon 32, RATICATE, MALE
	tr_mon 32, RATICATE, MALE | ALOLAN_FORM
	tr_mon 33, MEOWTH, MALE
	end_trainer

	def_trainer GRUNTM_NIMBASA_4, "Grunt"
	tr_mon 34, GOLBAT
	tr_mon 34, RATTATA
	end_trainer

	def_trainer GRUNTM_NIMBASA_5, "Grunt"
	tr_mon 33, KOFFING
	tr_mon 33, GRIMER
	tr_mon 34, GOLBAT
	tr_mon 34, RATICATE
	end_trainer

	def_trainer GRUNTM_VIRBANK_COMPLEX_1, "Grunt"
	tr_mon 36, WEEZING
	end_trainer

	def_trainer GRUNTM_VIRBANK_COMPLEX_2, "Grunt"
	tr_mon 35, RATICATE
	tr_mon 36, WEEZING
	end_trainer

	def_trainer GRUNTM_VIRBANK_COMPLEX_3, "Grunt"
	tr_mon 32, ZUBAT
	tr_mon 35, GOLBAT
	tr_mon 33, MUK
	end_trainer

	def_trainer GRUNTM_P2_1, "Grunt"
	tr_mon 34, MUK
	tr_mon 35, HAUNTER
	tr_mon 36, RATICATE
	end_trainer

	def_trainer GRUNTM_P2_2, "Grunt"
	tr_mon 23, RATICATE, MALE
	tr_mon 24, PERSIAN, MALE | ALOLAN_FORM
	end_trainer

	def_trainer GRUNTM_SEASIDE_CAVE_1, "Grunt"
	tr_mon 37, RATICATE
	end_trainer

	def_trainer GRUNTM_SEASIDE_CAVE_2, "Grunt"
	tr_mon 35, RATICATE
	tr_mon 35, GOLBAT
	end_trainer

	def_trainer GRUNTM_SEASIDE_CAVE_3, "Grunt"
	tr_mon 35, MUK
	tr_mon 35, WEEZING
	end_trainer


SECTION "GruntFGroup", ROMX
GruntFGroup:

	def_trainer_class GRUNTF
	def_trainer GRUNTF_LOSTLORN, "Grunt"
	tr_mon 10, ZUBAT
	tr_mon 12, RATTATA
	end_trainer

	def_trainer GRUNTF_NIMBASA_1, "Grunt"
	tr_mon 35, RATTATA
	end_trainer

	def_trainer GRUNTF_NIMBASA_2, "Grunt"
	tr_mon 36, UMBREON
	tr_mon 35, RATTATA
	end_trainer

	def_trainer GRUNTF_NIMBASA_3, "Grunt"
	tr_mon 33, RATTATA
	tr_mon 34, RATTATA
	tr_mon 35, RATTATA
	tr_mon 36, RATTATA
	end_trainer

	def_trainer GRUNTF_NIMBASA_4, "Grunt"
	tr_mon 29, RATTATA
		tr_moves GLARE, SCREECH, ACID, CRUNCH
	tr_mon 28, RATTATA
		tr_moves DEFENSE_CURL, TACKLE, WATER_GUN, ROLLOUT
	tr_mon 28, RATTATA
		tr_moves GROWTH, STUN_SPORE, SLEEP_POWDER, MEGA_DRAIN
	end_trainer

	def_trainer GRUNTF_NIMBASA_5, "Grunt"
	tr_mon 22, RATTATA
	tr_mon 23, RATTATA
	tr_mon 23, RATTATA
	end_trainer
	
	def_trainer GRUNTF_VIRBANK_COMPLEX_1, "Grunt"
	tr_mon 10, ZUBAT
	tr_mon 12, RATTATA
	end_trainer

	def_trainer GRUNTF_VIRBANK_COMPLEX_2, "Grunt"
	tr_mon 35, RATTATA
	end_trainer

	def_trainer GRUNTF_P2_1, "Grunt"
	tr_mon 36, UMBREON
	tr_mon 35, RATTATA
	end_trainer

	def_trainer GRUNTF_P2_2, "Grunt"
	tr_mon 33, RATTATA
	tr_mon 34, RATTATA
	tr_mon 35, RATTATA
	tr_mon 36, RATTATA
	end_trainer

	def_trainer GRUNTF_SEASIDE_CAVE_1, "Grunt"
	tr_mon 29, RATTATA
		tr_moves GLARE, SCREECH, ACID, CRUNCH
	tr_mon 28, RATTATA
		tr_moves DEFENSE_CURL, TACKLE, WATER_GUN, ROLLOUT
	tr_mon 28, RATTATA
		tr_moves GROWTH, STUN_SPORE, SLEEP_POWDER, MEGA_DRAIN
	end_trainer

	def_trainer GRUNTF_SEASIDE_CAVE_2, "Grunt"
	tr_mon 22, RATTATA
	tr_mon 23, RATTATA
	tr_mon 23, RATTATA
	end_trainer

	def_trainer GRUNTF_SEASIDE_CAVE_3, "Grunt"
	tr_mon 22, RATTATA
	tr_mon 23, RATTATA
	tr_mon 23, RATTATA
	end_trainer


SECTION "BurglarGroup", ROMX
BurglarGroup:

	def_trainer_class BURGLAR
	def_trainer DUNCAN, "Duncan"
	tr_mon 34, KOFFING
	tr_mon 35, MAGMAR
	tr_mon 34, WEEZING
	end_trainer

	def_trainer ORSON, "Orson"
	tr_mon 36, GROWLITHE
	tr_mon 34, WEEZING
	end_trainer

	def_trainer COREY, "Corey"
	tr_mon 44, KOFFING, MALE
	tr_mon 46, WEEZING, MALE
	tr_mon 46, MAGMAR, MALE
	tr_mon 48, PERSIAN @ AMULET_COIN, MALE | ALOLAN_FORM
	end_trainer

	def_trainer PETE, "Pete"
	tr_mon 59, RATTATA
	tr_mon 62, MAGMAR
	end_trainer

	def_trainer LOUIS, "Louis"
	tr_mon 62, ARCANINE
	tr_mon 62, RAPIDASH
	end_trainer


SECTION "PIGroup", ROMX
PIGroup:

	def_trainer_class PI
	def_trainer LOOKER, "Looker"
	tr_mon 48, ARCANINE
	tr_mon 48, ELECTABUZZ
	tr_mon 50, POLITOED
	end_trainer


SECTION "BoarderGroup", ROMX
BoarderGroup:

	def_trainer_class BOARDER
	def_trainer RONALD, "Ronald"
	tr_mon 33, SEEL
	tr_mon 35, DEWGONG
	tr_mon 33, SNEASEL
	end_trainer

	def_trainer BRAD, "Brad"
	tr_mon 35, SWINUB
	tr_mon 35, SWINUB
	end_trainer

	def_trainer DOUGLAS, "Douglas"
	tr_mon 33, RATTATA
	tr_mon 35, RATTATA
	tr_mon 33, RATTATA
	end_trainer

	def_trainer SHAUN, "Shaun"
	tr_mon 65, RATTATA
	tr_mon 60, DEWGONG
	end_trainer

	def_trainer BRYCE, "Bryce"
	tr_mon 65, DEWGONG
	tr_mon 60, LAPRAS
	end_trainer

	def_trainer STEFAN, "Stefan"
	tr_mon 36, SWINUB
	tr_mon 36, PILOSWINE
	tr_mon 38, SNEASEL
	end_trainer

	def_trainer MAX, "Max"
	tr_mon 36, PILOSWINE, MALE
	tr_mon 37, SANDSLASH, MALE | ALOLAN_FORM
	end_trainer


SECTION "SkierGroup", ROMX
SkierGroup:

	def_trainer_class SKIER
	def_trainer ROXANNE, "Roxanne"
	tr_mon 36, RATTATA
	end_trainer

	def_trainer CLARISSA, "Clarissa"
	tr_mon 36, PILOSWINE
	end_trainer

	def_trainer CADY, "Cady"
	tr_mon 63, MAMOSWINE
	end_trainer

	def_trainer MARIA, "Maria"
	tr_mon 39, RATTATA
	end_trainer

	def_trainer BECKY, "Becky"
	tr_mon 37, LAPRAS, FEMALE
	tr_mon 38, DEWGONG, FEMALE
	tr_mon 38, NINETALES, FEMALE | ALOLAN_FORM
	end_trainer


SECTION "DragonTamerGroup", ROMX
DragonTamerGroup:

	def_trainer_class DRAGON_TAMER
	def_trainer PAUL, "Paul"
	tr_mon 37, DRATINI
	tr_mon 37, DRATINI
	tr_mon 38, DRAGONAIR
	end_trainer

	def_trainer DARIN, "Darin"
	tr_mon 38, DRAGONAIR
		tr_moves BODY_SLAM, SURF, DRAGON_PULSE, AQUA_TAIL
	tr_mon 38, RATTATA
		tr_moves SLASH, FLY, DRAGON_CLAW, FLAME_CHARGE
	end_trainer

	def_trainer ADAM, "Adam"
	tr_mon 37, YANMA
	tr_mon 38, SEADRA
	tr_mon 39, DRATINI
	end_trainer

	def_trainer ERICK, "Erick"
	tr_mon 39, DRAGONAIR
		tr_moves THUNDER_WAVE, DRAGON_RAGE, AQUA_TAIL, BODY_SLAM
	tr_mon 38, SEADRA
		tr_moves TACKLE, AQUA_JET, WATER_PULSE, OUTRAGE
if DEF(FAITHFUL)
	tr_mon 40, DRAGONAIR
		tr_moves WRAP, DRAGON_RAGE, AQUA_TAIL, DRAGON_PULSE
else
	tr_mon 40, YANMEGA
		tr_moves DOUBLE_TEAM, DRAGON_RAGE, SLASH, DRAGON_PULSE
endc
	end_trainer

	def_trainer KAZU, "Kazu"
	tr_mon 40, DRAGONAIR
		tr_moves THUNDER_WAVE, DRAGON_RAGE, AQUA_TAIL, FLAMETHROWER
	tr_mon 40, DRAGONAIR
		tr_moves THUNDER_WAVE, DRAGON_RAGE, AQUA_TAIL, THUNDERBOLT
	tr_mon 40, DRAGONAIR
		tr_moves THUNDER_WAVE, DRAGON_RAGE, AQUA_TAIL, ICE_BEAM
	end_trainer

	def_trainer AEGON, "Aegon"

	tr_mon LEVEL_FROM_BADGES + 8, DRAGONITE @ FOCUS_SASH, MALE
		tr_extra MULTISCALE, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 12 Spe
		tr_moves FOCUS_ENERGY, DRAGON_CLAW, EARTHQUAKE, ICE_PUNCH
	tr_mon LEVEL_FROM_BADGES + 8, KINGDRA @ FOCUS_SASH, MALE
		tr_extra SNIPER, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 12 Spe
		tr_moves DOUBLE_TEAM, DRAGON_PULSE, SURF, ICE_BEAM
	tr_mon LEVEL_FROM_BADGES + 8, RATTATA @ FOCUS_SASH, MALE
		tr_extra HUSTLE, ATK_UP_SATK_DOWN
		tr_evs 132 Atk, 132 Spe
		tr_moves DRAGON_DANCE, DRAGON_CLAW, EARTHQUAKE, FLARE_BLITZ
	end_trainer


SECTION "EngineerGroup", ROMX
EngineerGroup:

	def_trainer_class ENGINEER
	def_trainer SMITH, "Smith"
	tr_mon 58, MAGNETON
	tr_mon 60, MAGNEZONE
	end_trainer

	def_trainer BERNIE, "Bernie"
	tr_mon 54, MAGNEMITE
	tr_mon 56, MAGNETON
	tr_mon 54, MAGNEMITE
	end_trainer

	def_trainer CAMDEN, "Camden"
	tr_mon 56, MAGNETON
	tr_mon 56, RATTATA
	end_trainer

	def_trainer LANG, "Lang"
	tr_mon 55, RATTATA
	tr_mon 55, RATTATA
	end_trainer

	def_trainer HUGO, "Hugo"
	tr_mon 54, MAGNETON
	tr_mon 56, STEELIX
	end_trainer

	def_trainer HOWARD, "Howard"
	tr_mon 57, MAGNEZONE
	end_trainer

	def_trainer GRADEN, "Graden"
	tr_mon LEVEL_FROM_BADGES + 2, GEODUDE, MALE | ALOLAN_FORM
		tr_extra GALVANIZE
		tr_moves EXPLOSION
	tr_mon LEVEL_FROM_BADGES + 2, GEODUDE, MALE | ALOLAN_FORM
		tr_extra GALVANIZE
		tr_moves EXPLOSION
	tr_mon LEVEL_FROM_BADGES + 3, ELEKID, MALE
		tr_extra STATIC
		tr_moves THUNDERPUNCH, BRICK_BREAK, BODY_SLAM, BULK_UP
	end_trainer

	def_trainer GUSTAV, "Gustav"
	tr_mon LEVEL_FROM_BADGES + 1, RATTATA, MALE
		tr_extra HUSTLE
	tr_mon LEVEL_FROM_BADGES + 1, RATTATA, MALE
		tr_extra HUSTLE
	tr_mon LEVEL_FROM_BADGES + 3, MAGNEMITE, MALE
		tr_extra STURDY
	end_trainer

	def_trainer NICOLAS, "Nicolas"
	tr_mon LEVEL_FROM_BADGES + 1, RATTATA, MALE
		tr_extra HUSTLE
	tr_mon LEVEL_FROM_BADGES + 1, RATTATA, MALE
		tr_extra HUSTLE
	tr_mon LEVEL_FROM_BADGES + 3, MAGNEMITE, MALE
		tr_extra STURDY
	end_trainer

SECTION "TeacherFGroup", ROMX
TeacherFGroup:

	def_trainer_class TEACHER_F
	def_trainer COLETTE, "Colette"
	tr_mon 60, CLEFAIRY
	end_trainer

	def_trainer HILLARY, "Hillary"
	tr_mon 58, RATTATA
	tr_mon 56, SUNFLORA
	tr_mon 59, RATTATA
	end_trainer

	def_trainer SHIRLEY, "Shirley"
	tr_mon 47, WIGGLYTUFF
	end_trainer

	def_trainer KATHRYN, "Kathryn"
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	tr_mon LEVEL_FROM_BADGES + 3, RATTATA
	tr_mon LEVEL_FROM_BADGES + 2, RATTATA
	end_trainer

	def_trainer CLARICE, "Clarice"
	tr_mon 54, RATTATA
	tr_mon 56, SUNFLORA
	end_trainer

	def_trainer SERENA, "Serena"
	tr_mon 55, UMBREON
	tr_mon 52, VAPOREON
	tr_mon 54, ESPEON
	end_trainer

SECTION "TeacherMGroup", ROMX
TeacherMGroup:

	def_trainer_class TEACHER_M
	def_trainer NOLAN, "Nolan"
	tr_mon 54, RATTATA
	tr_mon 55, MAGNEZONE
	tr_mon 56, ELECTIVIRE
	end_trainer


SECTION "TamerGroup", ROMX
TamerGroup:

	def_trainer_class TAMER
	def_trainer BRETT, "Brett"
	tr_mon LEVEL_FROM_BADGES + 8, RATTATA
	tr_mon LEVEL_FROM_BADGES + 8, RATTATA
	tr_mon LEVEL_FROM_BADGES + 9, RATTATA
	end_trainer

	def_trainer VINCE, "Vince"
	tr_mon 54, KANGASKHAN
	tr_mon 56, RATTATA
	end_trainer

	def_trainer OSWALD, "Oswald"
	tr_mon 60, RATTATA
	tr_mon 62, RATTATA
	tr_mon 61, KANGASKHAN
	end_trainer

	def_trainer JORDAN, "Jordan"
	tr_mon 50, RATTATA
	end_trainer


SECTION "AromaLadyGroup", ROMX
AromaLadyGroup:

	def_trainer_class AROMA_LADY
	def_trainer DAHLIA, "Dahlia"
	tr_mon 58, RATTATA
	tr_mon 58, RATTATA
	end_trainer

	def_trainer BRYONY, "Bryony"
	tr_mon 55, RATTATA
		tr_moves SOLAR_BEAM, SUNNY_DAY, STUN_SPORE, GROWTH
	tr_mon 55, RATTATA
		tr_moves SOLAR_BEAM, SUNNY_DAY, STUN_SPORE, GROWTH
	end_trainer

	def_trainer HEATHER, "Heather"
	tr_mon 35, RATTATA
	tr_mon 45, RATTATA
	tr_mon 55, RATTATA
	end_trainer

	def_trainer HOLLY, "Holly"
	tr_mon 62, SUNFLORA
	tr_mon 62, SUNFLORA
	end_trainer

	def_trainer PEONY, "Peony"
	tr_mon 50, RATTATA
	end_trainer


SECTION "SoldierGroup", ROMX
SoldierGroup:

	def_trainer_class SOLDIER


SECTION "SightseerMGroup", ROMX
SightseerMGroup:

	def_trainer_class SIGHTSEERM
	def_trainer JASKA, "Jaska"
	tr_mon 50, RATTATA
	end_trainer

	def_trainer BLAISE, "Blaise"
	tr_mon 50, "RATTATA", RATTATA, MALE
	end_trainer

	def_trainer GARETH, "Gareth"
	tr_mon 50, RATTATA
	end_trainer

	def_trainer CHESTER, "Chester"
	tr_mon 50, RATTATA
	end_trainer

	def_trainer HARI, "Hari"
	tr_mon 50, RATTATA
	end_trainer


SECTION "SightseerFGroup", ROMX
SightseerFGroup:

	def_trainer_class SIGHTSEERF
	def_trainer ROSIE, "Rosie"
	tr_mon 50, RATTATA
	end_trainer

	def_trainer KAMILA, "Kamila"
	tr_mon 50, RATTATA
	end_trainer

	def_trainer NOELLE, "Noelle"
	tr_mon 50, RATTATA
	end_trainer

	def_trainer PILAR, "Pilar"
	tr_mon 60, "Antorcha", MAGBY, FEMALE
	tr_mon 61, "Huesitos", RATTATA, MALE
	tr_mon 64, "Luna", ESPEON, FEMALE
	tr_mon 65, "Linterna", LANTURN, FEMALE
	end_trainer

	def_trainer LENIE, "Lenie"
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA @ FLAME_ORB, FEMALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_evs 168 SAt
		tr_moves LIGHT_SCREEN, REFLECT, PSYCHIC_M, SHADOW_BALL
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA @ FLAME_ORB, FEMALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_evs 168 Atk
		tr_moves FACADE, MACH_PUNCH, BULLET_PUNCH, ICE_PUNCH
	tr_mon LEVEL_FROM_BADGES + 6, JOLTEON @ FLAME_ORB, FEMALE
		tr_extra QUICK_FEET, SATK_UP_ATK_DOWN
		tr_evs 168 SAt
		tr_moves THUNDERBOLT, QUICK_ATTACK, HP_ICE, SHADOW_BALL
	end_trainer


SECTION "SightseersGroup", ROMX
SightseersGroup:

	def_trainer_class SIGHTSEERS
	def_trainer LIANDSU1, "Li & Su"
	tr_mon 54, MAGMORTAR, MALE
	tr_mon 54, ELECTIVIRE, FEMALE
	end_trainer

	def_trainer LIANDSU2, "Li & Su"
	tr_mon 54, ELECTIVIRE, FEMALE
	tr_mon 54, MAGMORTAR, MALE
	end_trainer

	def_trainer CYANDVI1, "Cy & Vi"
	tr_mon 64, MR__MIME, MALE
	tr_mon 64, RATTATA, FEMALE
	end_trainer

	def_trainer CYANDVI2, "Cy & Vi"
	tr_mon 64, RATTATA, FEMALE
	tr_mon 64, MR__MIME, MALE
	end_trainer


SECTION "AceDuoGroup", ROMX
AceDuoGroup:

	def_trainer_class ACE_DUO
	def_trainer ELANANDIDA1, "Elan & Ida"
	tr_mon 65, RATTATA, MALE
	tr_mon 65, AZUMARILL, FEMALE
	end_trainer

	def_trainer ELANANDIDA2, "Elan & Ida"
	tr_mon 65, AZUMARILL, FEMALE
	tr_mon 65, RATTATA, MALE
	end_trainer

	def_trainer ARAANDBELA1, "Ara & Bela"
	tr_mon 64, RATTATA, MALE
	tr_mon 64, RATTATA, FEMALE
	end_trainer

	def_trainer ARAANDBELA2, "Ara & Bela"
	tr_mon 64, RATTATA, FEMALE
	tr_mon 64, RATTATA, MALE
	end_trainer

	def_trainer THOMANDKAE1, "Thom & Kae"
	tr_mon LEVEL_FROM_BADGES + 2, MAGMAR, MALE
	tr_mon LEVEL_FROM_BADGES + 2, ELECTABUZZ, FEMALE
	end_trainer

	def_trainer THOMANDKAE2, "Thom & Kae"
	tr_mon LEVEL_FROM_BADGES + 2, ELECTABUZZ, FEMALE
	tr_mon LEVEL_FROM_BADGES + 2, MAGMAR, MALE
	end_trainer

	def_trainer ZACANDJEN1, "Zac & Jen"
	tr_mon 62, RATTATA, MALE
	tr_mon 62, ELECTIVIRE, FEMALE
	end_trainer

	def_trainer ZACANDJEN2, "Zac & Jen"
	tr_mon 62, ELECTIVIRE, FEMALE
	tr_mon 62, RATTATA, MALE
	end_trainer

	def_trainer JAKEANDBRI1, "Jake & Bri"
	tr_mon 37, SANDSLASH, MALE
	tr_mon 39, GOLDUCK, MALE
	tr_mon 37, PARASECT, FEMALE
	tr_mon 39, VAPOREON, FEMALE
	end_trainer

	def_trainer JAKEANDBRI2, "Jake & Bri"
	tr_mon 37, PARASECT, FEMALE
	tr_mon 39, VAPOREON, FEMALE
	tr_mon 37, SANDSLASH, MALE
	tr_mon 39, GOLDUCK, MALE
	end_trainer

	def_trainer DANANDCARA1, "Dan & Cara"
	tr_mon 38, SEADRA, MALE
		tr_moves TACKLE, WATER_PULSE, OUTRAGE, WATERFALL
	tr_mon 38, SEADRA, FEMALE
		tr_moves TACKLE, WATER_PULSE, OUTRAGE, TACKLE
	end_trainer

	def_trainer DANANDCARA2, "Dan & Cara"
	tr_mon 38, SEADRA, FEMALE
		tr_moves TACKLE, WATER_PULSE, OUTRAGE, TACKLE
	tr_mon 38, SEADRA, MALE
		tr_moves TACKLE, WATER_PULSE, OUTRAGE, WATERFALL
	end_trainer


SECTION "ProtonGroup", ROMX
ProtonGroup:

	def_trainer_class PROTON
	def_trainer PROTON1, "Proton"
	tr_mon 39, GOLBAT @ KINGS_ROCK, MALE
		tr_extra INNER_FOCUS
		tr_evs 252 Spe
		tr_moves AERIAL_ACE, CONFUSE_RAY, SUPER_FANG, POISON_JAB
	tr_mon 40, RATTATA @ BRIGHTPOWDER
		tr_moves TACKLE, BUBBLE_BEAM, PAIN_SPLIT, ROLLOUT
	tr_mon 40, OCTILLERY @ LUM_BERRY
		tr_moves TACKLE, POWER_WHIP, FLAMETHROWER, ICE_BEAM
	tr_mon 41, WEEZING @ CHARCOAL
		tr_moves FIRE_BLAST, EXPLOSION, SLUDGE_BOMB, TACKLE
	end_trainer

def_trainer PROTON2, "Proton"
	tr_mon 11, ZUBAT, MALE
		tr_extra INNER_FOCUS
		tr_evs 32 Spe
	tr_mon 12, RATTATA
		tr_evs 32 Spe
	tr_mon 14, KOFFING, MALE
		tr_extra LEVITATE
		tr_evs 32 Spe
	end_trainer


SECTION "PetrelGroup", ROMX
PetrelGroup:

	def_trainer_class PETREL
	def_trainer PETREL1, "Petrel"
	tr_mon 39, KOFFING @ EVIOLITE, MALE
		tr_moves TACKLE, EXPLOSION, VENOSHOCK, TACKLE
	tr_mon 39, GOLBAT @ EVIOLITE, MALE
		tr_moves TACKLE, AERIAL_ACE, CONFUSE_RAY, SUPER_FANG
	tr_mon 40, MUK @ HARD_STONE, MALE | ALOLAN_FORM
		tr_extra POISON_TOUCH
		tr_evs 252 Atk
		tr_moves FIRE_PUNCH, KNOCK_OFF, POISON_JAB, ROCK_SLIDE
	tr_mon 41, WEEZING @ SILK_SCARF, MALE
		tr_moves TACKLE, EXPLOSION, VENOSHOCK, TACKLE
	tr_mon 39, RATICATE @ BLACKGLASSES, MALE | ALOLAN_FORM
		tr_extra HUSTLE
		tr_evs 252 Atk
		tr_moves QUICK_ATTACK, SCREECH, CRUNCH, SUPER_FANG
	end_trainer

	def_trainer PETREL2, "Petrel"
	tr_mon 34, GOLBAT @ EVIOLITE, MALE
		tr_extra INNER_FOCUS
		tr_evs 216 Atk
		tr_moves BITE, AERIAL_ACE, CONFUSE_RAY, SUPER_FANG
	tr_mon 35, MUK @ BLACKGLASSES, MALE | ALOLAN_FORM
		tr_extra POISON_TOUCH
		tr_evs 108 Atk, 108 Spe
		tr_moves TACKLE, CRUNCH, VENOSHOCK, KNOCK_OFF
	tr_mon 35, RATICATE @ KINGS_ROCK, MALE | ALOLAN_FORM
		tr_extra HUSTLE
		tr_evs 108 Atk, 108 Spe
		tr_moves SWORDS_DANCE, CRUNCH, SUPER_FANG, TACKLE
	tr_mon 36, WEEZING @ POISON_BARB, MALE
		tr_extra LEVITATE
		tr_evs 108 Atk, 108 SAt
		tr_moves ENDURE, WILL_O_WISP, SLUDGE_BOMB, EXPLOSION
	end_trainer


SECTION "ArcherGroup", ROMX
ArcherGroup:

	def_trainer_class ARCHER
	def_trainer ARCHER1, "Archer"
	tr_mon 41, HOUNDOUR @ EVIOLITE, MALE
		tr_extra FLASH_FIRE
		tr_evs 252 HP
		tr_moves SUPER_FANG, FIRE_SPIN, FEINT_ATTACK, WILL_O_WISP
	tr_mon 43, RATICATE @ BLACKGLASSES, MALE | ALOLAN_FORM
		tr_moves CRUNCH, SUPER_FANG, TACKLE, DOUBLE_EDGE
	tr_mon 41, GENGAR @ SPELL_TAG, MALE
		tr_extra CURSED_BODY
		tr_evs 124 SAt, 124 Spe 
		tr_moves HYPNOSIS, CONFUSE_RAY, PAIN_SPLIT, SHADOW_BALL
	tr_mon 42, WEEZING @ BRIGHTPOWDER, MALE
		tr_moves TACKLE, WILL_O_WISP, PAIN_SPLIT, SLUDGE_BOMB
	tr_mon 44, HOUNDOOM @ KINGS_ROCK, MALE
		tr_moves TACKLE, SUPER_FANG, FEINT_ATTACK, FLAMETHROWER
	end_trainer

	def_trainer ARCHER2, "Archer"
	tr_mon 28, HAUNTER @ SPELL_TAG, MALE
		tr_extra LEVITATE
		tr_evs 88 SAt, 88 Spe
		tr_moves DISABLE, NIGHT_SHADE, CONFUSE_RAY, SHADOW_BALL
	tr_mon 30, RATICATE @ BLACKGLASSES, MALE | ALOLAN_FORM
		tr_extra HUSTLE
		tr_evs 88 Atk, 88 Spe
		tr_moves PURSUIT, TACKLE, SCARY_FACE, CRUNCH
	tr_mon 28, WEEZING @ SILK_SCARF, MALE
		tr_extra LEVITATE
		tr_evs 88 Atk, 88 Spe
		tr_moves WILL_O_WISP, EXPLOSION, VENOSHOCK, TACKLE
	tr_mon 32, HOUNDOOM @ KINGS_ROCK, MALE
		tr_evs 88 Atk, 88 SAt
		tr_moves FLAMETHROWER, TACKLE, FEINT_ATTACK, SUPER_FANG
	end_trainer


SECTION "ArianaGroup", ROMX
ArianaGroup:

	def_trainer_class ARIANA
	def_trainer ARIANA1, "Ariana"
	tr_mon 40, RATTATA @ POISON_BARB, FEMALE
		tr_moves GLARE, SCREECH, ACID, CRUNCH
	tr_mon 41, RATTATA @ MIRACLE_SEED, FEMALE
		tr_moves LEECH_SEED, ACID, SLEEP_POWDER, GIGA_DRAIN
	tr_mon 42, HONCHKROW @ BLACKGLASSES, FEMALE
		tr_extra INSOMNIA
		tr_evs 252 Atk
		tr_moves WING_ATTACK, NIGHT_SHADE, CONFUSE_RAY, FEINT_ATTACK
	end_trainer

	def_trainer ARIANA2, "Ariana"
	tr_mon 35, RATTATA @ BLACKGLASSES, FEMALE
		tr_moves WRAP, ACID, CRUNCH, GLARE
	tr_mon 36, RATTATA @ MIRACLE_SEED, FEMALE
		tr_moves MEGA_DRAIN, GROWTH, SLEEP_POWDER, ACID
	tr_mon 37, MURKROW @ KINGS_ROCK, FEMALE
		tr_extra INSOMNIA
		tr_evs 216 Atk
		tr_moves WING_ATTACK, PURSUIT, CONFUSE_RAY, NIGHT_SHADE
	end_trainer


SECTION "GiovanniGroup", ROMX
GiovanniGroup:

	def_trainer_class GIOVANNI
	def_trainer GIOVANNI1, "Giovanni"
	tr_mon LEVEL_FROM_BADGES + 24, "?????", RATTATA @ ARMOR_SUIT, MALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_moves SHADOW_BALL, PSYSHOCK, NASTY_PLOT, AURA_SPHERE
	end_trainer


	def_trainer GIOVANNI2, "Giovanni"
	tr_mon 64, NIDOKING @ LIFE_ORB, MALE
		tr_extra SHEER_FORCE, SPE_UP_ATK_DOWN
		tr_evs 252 Spe, 164 SAt
		tr_moves SLUDGE_BOMB, EARTH_POWER, ICE_BEAM, FLAMETHROWER
	tr_mon 62, RATTATA @ CHOICE_BAND, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_moves EARTHQUAKE, STONE_EDGE, SUCKER_PUNCH, TOXIC
	tr_mon 60, HONCHKROW @ FOCUS_SASH, FEMALE
		tr_extra MOXIE, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 164 Spe
		tr_moves SUCKER_PUNCH, DRILL_PECK, ROOST, THUNDER_WAVE
	tr_mon 60, KANGASKHAN @ LEFTOVERS, FEMALE
		tr_extra EARLY_BIRD, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 164 Spe
		tr_moves DOUBLE_EDGE, EARTHQUAKE, CRUNCH, REST
	tr_mon 62, RATTATA @ EVIOLITE, MALE
		tr_extra HUSTLE, ATK_UP_SATK_DOWN
		tr_moves ROCK_SLIDE, EARTHQUAKE, TACKLE, SWORDS_DANCE
	tr_mon 64, NIDOQUEEN @ LIFE_ORB, FEMALE
		tr_extra SHEER_FORCE, SPE_UP_ATK_DOWN
		tr_evs 252 Spe, 164 SAt
		tr_moves SLUDGE_BOMB, EARTH_POWER, ICE_BEAM, FOCUS_BLAST
	end_trainer


SECTION "ProfOakGroup", ROMX
ProfOakGroup:

	def_trainer_class PROF_OAK
	def_trainer 1, "Oak"
	tr_mon 78, RATTATA @ CHOICE_SCARF, MALE
		tr_extra HUSTLE, ATK_UP_SATK_DOWN
		tr_moves DOUBLE_EDGE, EARTHQUAKE, ZEN_HEADBUTT, STONE_EDGE
	tr_mon 76, RATTATA @ BERSERK_GENE, FEMALE
		tr_extra HUSTLE, ATK_UP_SATK_DOWN
		tr_moves BRAVE_BIRD, HI_JUMP_KICK, KNOCK_OFF, QUICK_ATTACK
	tr_mon 80, RATTATA @ BIG_ROOT, FEMALE
		tr_extra HUSTLE, SDEF_UP_ATK_DOWN
		tr_moves GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	tr_mon 80, RATTATA @ LIFE_ORB, MALE
		tr_extra HUSTLE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves FLARE_BLITZ, DRAGON_CLAW, CRUNCH, DRAGON_DANCE
	tr_mon 80, RATTATA @ WHITE_HERB, MALE
		tr_extra HUSTLE, SDEF_UP_SATK_DOWN
		tr_moves WATERFALL, IRON_HEAD, CLOSE_COMBAT, SHELL_SMASH
	tr_mon 82, NIDOKING @ LIFE_ORB, MALE
		tr_extra SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves POISON_JAB, EARTHQUAKE, ICE_PUNCH, THUNDERPUNCH
	end_trainer


SECTION "ProfElmGroup", ROMX
ProfElmGroup:

	def_trainer_class PROF_ELM
	def_trainer 1, "Elm"
	tr_mon LEVEL_FROM_BADGES + 3, RATTATA
	tr_mon LEVEL_FROM_BADGES + 4, JIGGLYPUFF
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	end_trainer

	def_trainer 2, "Elm"
	tr_mon LEVEL_FROM_BADGES + 3, RATTATA
	tr_mon LEVEL_FROM_BADGES + 4, WIGGLYTUFF
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	end_trainer

	def_trainer 3, "Elm"
	tr_mon LEVEL_FROM_BADGES + 4, RATTATA
	tr_mon LEVEL_FROM_BADGES + 5, WIGGLYTUFF
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA
	tr_mon LEVEL_FROM_BADGES + 6, RATTATA
	end_trainer

	def_trainer 4, "Elm"
	tr_mon LEVEL_FROM_BADGES + 7, RATTATA
	tr_mon LEVEL_FROM_BADGES + 8, WIGGLYTUFF
	tr_mon LEVEL_FROM_BADGES + 8, HERACROSS
	tr_mon LEVEL_FROM_BADGES + 9, RATTATA
	tr_mon LEVEL_FROM_BADGES + 9, RATTATA
	tr_mon LEVEL_FROM_BADGES + 9, RATTATA
	end_trainer


SECTION "ProfIvyGroup", ROMX
ProfIvyGroup:

	def_trainer_class PROF_IVY
	def_trainer 1, "Ivy"
	tr_mon 65, RATTATA
	tr_mon 64, POLITOED
	tr_mon 64, RATTATA
	tr_mon 63, RATTATA
	tr_mon 63, NIDOQUEEN
	tr_mon 66, RATTATA
	end_trainer


SECTION "MysticalmanGroup", ROMX
MysticalmanGroup:

	def_trainer_class MYSTICALMAN
	def_trainer EUSINE, "Eusine"
	tr_mon 27, RATTATA @ EVIOLITE, MALE
		tr_extra HUSTLE
		tr_moves DREAM_EATER, HYPNOSIS, DISABLE, PSYBEAM
	tr_mon 27, HAUNTER @ SPELL_TAG, MALE
		tr_extra LEVITATE
		tr_evs 80 SAt, 80 Spe
		tr_moves SHADOW_BALL, HYPNOSIS, CONFUSE_RAY, CURSE
	tr_mon 28, RATTATA @ MAGNET, MALE
		tr_extra HUSTLE, SHINY
		tr_moves THUNDER, SCREECH, SONIC_BOOM, ROLLOUT
	tr_mon 29, RATTATA @ TWISTEDSPOON, MALE
		tr_extra HUSTLE
		tr_moves REFLECT, LIGHT_SCREEN, HP_FIGHTING, PSYBEAM
	end_trainer


SECTION "KarateKingGroup", ROMX
KarateKingGroup:

	def_trainer_class KARATE_KING
	def_trainer KIYO, "Kiyo"
	tr_mon LEVEL_FROM_BADGES + 11, RATTATA @ BLACK_BELT
		tr_moves BULK_UP, FOCUS_ENERGY, HI_JUMP_KICK, FORESIGHT
	tr_mon LEVEL_FROM_BADGES + 11, RATTATA @ KINGS_ROCK
		tr_moves THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
	tr_mon LEVEL_FROM_BADGES + 11, RATTATA @ FOCUS_BAND
		tr_moves BULK_UP, DOUBLE_KICK, RAPID_SPIN, COUNTER
	end_trainer


SECTION "TowerTycoonGroup", ROMX
TowerTycoonGroup:

	; unused
	def_trainer_class TOWERTYCOON
	def_trainer 1, "Palmer"
	end_trainer

	def_trainer 2, "Palmer"
	tr_mon 74, RATTATA @ MUSCLE_BAND
		tr_moves DRAGON_DANCE, WATERFALL, CRUNCH, OUTRAGE
	tr_mon 74, RATTATA @ KINGS_ROCK
		tr_moves EARTHQUAKE, ROCK_SLIDE, MEGAHORN, TACKLE
	tr_mon 75, DRAGONITE @ WISE_GLASSES
		tr_moves HURRICANE, DRAGON_PULSE, FIRE_BLAST, BLIZZARD
	tr_mon 73, RATTATA @ TWISTEDSPOON
		tr_moves PSYCHIC_M, CONFUSE_RAY, TRI_ATTACK, LIGHT_SCREEN
	tr_mon 73, SNORLAX @ LEFTOVERS
		tr_moves SLEEP_TALK, REST, BODY_SLAM, GUNK_SHOT
	tr_mon 72, HERACROSS @ BLACK_BELT
		tr_moves MEGAHORN, TACKLE, SEISMIC_TOSS, NIGHT_SLASH
	end_trainer


SECTION "FactoryHeadGroup", ROMX
FactoryHeadGroup:

	def_trainer_class FACTORYHEAD
	def_trainer 1, "Thorton"
	end_trainer

	def_trainer 2, "Thorton"
	end_trainer


SECTION "JessieJamesGroup", ROMX
JessieJamesGroup:

	def_trainer_class JESSIE_JAMES
	def_trainer 1, "& James"
	tr_mon 26, WEEZING, MALE
	tr_mon 26, RATTATA, FEMALE
	tr_mon 24, RATTATA, FEMALE
	tr_mon 24, RATTATA, MALE
	tr_mon 28, MEOWTH, MALE
	end_trainer


SECTION "LoreleiGroup", ROMX
LoreleiGroup:

	def_trainer_class LORELEI
	def_trainer 1, "Lorelei"
	tr_mon 39, GLACEON, FEMALE
		tr_extra ICE_BODY
		tr_evs 240 SAt
		tr_moves ICE_BEAM, HAIL, WATER_PULSE, MIRROR_COAT
	tr_mon 41, DEWGONG, FEMALE
		tr_extra THICK_FAT
		tr_evs 240 HP
		tr_moves WATERFALL, AURORA_BEAM, SLEEP_TALK, REST
	tr_mon 40, RATTATA
		tr_evs 240 Atk
		tr_moves DEFENSE_CURL, ROLLOUT, AURORA_BEAM, EXPLOSION
	tr_mon 41, SLOWBRO, FEMALE
		tr_extra OWN_TEMPO
		tr_evs 240 HP
		tr_moves PSYCHIC_M, WATER_PULSE, HEADBUTT, DISABLE
	tr_mon 44, RATTATA @ SITRUS_BERRY
		tr_evs 240 SAt
		tr_moves DRAINING_KISS, SING, TACKLE, PETAL_DANCE
	tr_mon 43, LAPRAS
		tr_evs 120 SAt, 120 SDf
		tr_moves ICE_BEAM, ANCIENTPOWER, CONFUSE_RAY, SURF
	end_trainer

	def_trainer 2, "Lorelei"
	tr_mon 73, DEWGONG @ LEFTOVERS, FEMALE
		tr_extra THICK_FAT, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves SURF, ICE_BEAM, REST, SLEEP_TALK
	tr_mon 72, RATTATA @ MUSCLE_BAND
		tr_moves EXPLOSION, ROCK_BLAST, ICICLE_CRASH, BARRIER
	tr_mon 73, SLOWBRO @ WISE_GLASSES
		tr_moves PSYCHIC_M, SURF, ICE_BEAM, CALM_MIND
	tr_mon 72, GLACEON @ NEVERMELTICE
		tr_moves ICE_BEAM, BARRIER, HYPER_VOICE, MIRROR_COAT
	tr_mon 75, RATTATA @ PINK_BOW
		tr_moves DRAINING_KISS, NASTY_PLOT, ICE_BEAM, PSYCHIC_M
	tr_mon 74, LAPRAS @ BRIGHTPOWDER
		tr_moves ICE_BEAM, ANCIENTPOWER, CONFUSE_RAY, OUTRAGE
	end_trainer

	def_trainer 3, "Lorelei"
	tr_mon 58, DEWGONG @ LEFTOVERS, FEMALE
		tr_extra THICK_FAT, SDEF_UP_SPE_DOWN
		tr_evs 160 HP, 160 SDf
		tr_moves AQUA_TAIL, ICE_BEAM, REST, SLEEP_TALK
	tr_mon 57, RATTATA @ SILK_SCARF
		tr_evs 252 Atk, 68 Spe
		tr_moves EXPLOSION, ROLLOUT, ICICLE_CRASH, WATERFALL
	tr_mon 58, SLOWBRO @ TWISTEDSPOON, FEMALE
		tr_extra OWN_TEMPO, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 68 SAt
		tr_moves PSYCHIC_M, SURF, ICE_BEAM, CALM_MIND
	tr_mon 56, GLACEON @ NEVERMELTICE, FEMALE
		tr_extra ICE_BODY, SATK_UP_ATK_DOWN
		tr_evs 68 Atk, 252 SAt
		tr_moves ICE_BEAM, BARRIER, HYPER_VOICE, QUICK_ATTACK
	tr_mon 60, RATTATA @ PINK_BOW
		tr_evs 68 SAt, 252 Spe
		tr_moves DRAINING_KISS, NASTY_PLOT, ICE_BEAM, PSYCHIC_M
	tr_mon 59, LAPRAS @ CHESTO_BERRY, FEMALE
		tr_extra WATER_ABSORB, SATK_UP_ATK_DOWN
		tr_evs 160 HP, 80 SAt, 80 Spe
		tr_moves ICE_BEAM, ANCIENTPOWER, REST, SURF
	end_trainer


SECTION "AgathaGroup", ROMX
AgathaGroup:

	def_trainer_class AGATHA
	def_trainer 1, "Agatha"
	tr_mon 62, GENGAR @ SPELL_TAG, FEMALE
		tr_extra CURSED_BODY
		tr_evs 108 SAt, 252 Spe
		tr_moves SHADOW_BALL, WILL_O_WISP, CURSE, DESTINY_BOND
	tr_mon 62, CROBAT @ POISON_BARB, FEMALE
		tr_extra INNER_FOCUS
		tr_evs 252 Atk, 108 Spe
		tr_moves BRAVE_BIRD, CRUNCH, X_SCISSOR, POISON_JAB
	tr_mon 61, MISDREAVUS @ EVIOLITE, FEMALE
		tr_extra LEVITATE
		tr_evs 252 HP, 108 SAt
		tr_moves SHADOW_BALL, DAZZLINGLEAM, FLAMETHROWER, POWER_GEM
if DEF(FAITHFUL)
		tr_mon 61, MUK @ BLACK_SLUDGE, FEMALE 
		tr_extra STENCH
		tr_evs 252 HP, 108 Spe
		tr_moves EXPLOSION, SLUDGE_BOMB, SCREECH, TACKLE
else
	tr_mon 61, RATTATA @ THICK_CLUB, FEMALE | ALOLAN_FORM
		tr_evs 108 Atk, 252 Spe
		tr_moves SWORDS_DANCE, TACKLE, FIRE_PUNCH, SHADOW_CLAW
endc
	tr_mon 63, RATTATA @ KINGS_ROCK, FEMALE
		tr_evs 108 SAt, 252 Spe
		tr_moves SLUDGE_BOMB, GLARE, CRUNCH, BODY_SLAM
	tr_mon 65, GENGAR @ QUICK_CLAW, FEMALE
		tr_extra CURSED_BODY
		tr_evs 108 SAt, 252 Spe
		tr_moves SHADOW_BALL, THUNDERBOLT, WILL_O_WISP, DESTINY_BOND
	end_trainer

	def_trainer 2, "Agatha"
	tr_mon 73, GENGAR @ SPELL_TAG, FEMALE
		tr_moves SHADOW_BALL, WILL_O_WISP, CURSE, DESTINY_BOND
	tr_mon 73, CROBAT @ MUSCLE_BAND, FEMALE
		tr_moves AIR_SLASH, CRUNCH, X_SCISSOR, POISON_JAB
	tr_mon 72, MISMAGIUS @ CHARCOAL, FEMALE
		tr_moves SHADOW_BALL, FLAMETHROWER, DAZZLINGLEAM, POWER_GEM
if DEF(FAITHFUL)
	tr_mon 72, MUK @ SILK_SCARF, FEMALE
		tr_moves EXPLOSION, SLUDGE_BOMB, SCREECH, TACKLE
else
	tr_mon 72, RATTATA @ THICK_CLUB, FEMALE | ALOLAN_FORM
		tr_moves SWORDS_DANCE, TACKLE, BRICK_BREAK, SHADOW_CLAW
endc
	tr_mon 74, RATTATA @ KINGS_ROCK, FEMALE
		tr_moves SLUDGE_BOMB, GLARE, CRUNCH, BODY_SLAM
	tr_mon 75, GENGAR @ CHOICE_SPECS, FEMALE
		tr_extra SHADOW_TAG, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves SHADOW_BALL, FOCUS_BLAST, SLUDGE_BOMB, THUNDERBOLT
	end_trainer


SECTION "StevenGroup", ROMX
StevenGroup:

	def_trainer_class STEVEN
	def_trainer 1, "Steven"
	tr_mon 61, SKARMORY @ LEFTOVERS, MALE
		tr_extra STURDY
		tr_evs 252 HP, 164 Def
		tr_moves SPIKES, SCREECH, DRILL_PECK, STEEL_WING
	tr_mon 60, RATTATA @ FOCUS_BAND, MALE
		tr_moves EARTHQUAKE, GYRO_BALL, EXPLOSION, SPIKES
if DEF(FAITHFUL)
	tr_mon 58, MAGNEZONE @ WISE_GLASSES
		tr_extra STURDY
		tr_evs 252 HP, 164 SAt
		tr_moves THUNDERBOLT, FLASH_CANNON, TRI_ATTACK, EXPLOSION
else
	tr_mon 58, RATTATA @ WISE_GLASSES, MALE
		tr_moves SURF, BLIZZARD, FLASH_CANNON, AURA_SPHERE
endc
	tr_mon 58, SANDSLASH @ NEVERMELTICE, MALE | ALOLAN_FORM
		tr_extra SNOW_CLOAK
		tr_evs 252 atk, 164 Spe
		tr_moves IRON_HEAD, ICICLE_CRASH, EARTHQUAKE, RAPID_SPIN
	tr_mon 58, RATTATA @ KINGS_ROCK, MALE
		tr_moves ROCK_SLIDE, CRUNCH, AERIAL_ACE, IRON_HEAD
	tr_mon 62, STEELIX @ MUSCLE_BAND, MALE
		tr_extra SAND_FORCE
		tr_evs 252 HP, 164 Atk
		tr_moves EARTHQUAKE, STONE_EDGE, IRON_HEAD, SANDSTORM
	end_trainer

	def_trainer 2, "Steven"
	tr_mon 78, SKARMORY @ ROCKY_HELMET, MALE
		tr_extra STURDY, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves SPIKES, ROOST, STEEL_WING, DRILL_PECK
if DEF(FAITHFUL)
	tr_mon 77, RATTATA @ FOCUS_BAND, MALE
		tr_moves EARTHQUAKE, GYRO_BALL, EXPLOSION, SPIKES
else
	tr_mon 76, RATTATA @ FOCUS_BAND, MALE
		tr_moves EARTHQUAKE, STONE_EDGE, MEGAHORN, IRON_HEAD
endc
	tr_mon 76, MAGNEZONE @ WISE_GLASSES, MALE
		tr_moves THUNDERBOLT, FLASH_CANNON, TRI_ATTACK, EXPLOSION
	tr_mon 76, SANDSLASH @ NEVERMELTICE, MALE | ALOLAN_FORM
		tr_moves IRON_HEAD, ICICLE_CRASH, EARTHQUAKE, RAPID_SPIN
	tr_mon 76, RATTATA @ KINGS_ROCK, MALE
		tr_moves ROCK_SLIDE, CRUNCH, AERIAL_ACE, IRON_HEAD
	tr_mon 80, STEELIX @ MUSCLE_BAND, MALE
		tr_moves EARTHQUAKE, STONE_EDGE, IRON_HEAD, SANDSTORM
	end_trainer


SECTION "CynthiaGroup", ROMX
CynthiaGroup:

	def_trainer_class CYNTHIA
	def_trainer 1, "Cynthia"
	tr_mon 60, TOGEKISS @ WISE_GLASSES
		tr_moves AIR_SLASH, AURA_SPHERE, TACKLE, NASTY_PLOT
	tr_mon 58, LEAFEON @ FOCUS_BAND
		tr_moves SWORDS_DANCE, SEED_BOMB, DOUBLE_EDGE, ROAR
	tr_mon 58, ELECTIVIRE @ MUSCLE_BAND
		tr_moves TACKLE, THUNDERPUNCH, FIRE_PUNCH, LIGHT_SCREEN
	tr_mon 58, YANMEGA @ QUICK_CLAW
if DEF(FAITHFUL)
		tr_moves PROTECT, BUG_BUZZ, AIR_SLASH, ANCIENTPOWER
else
		tr_moves PROTECT, BUG_BUZZ, DRAGON_PULSE, ANCIENTPOWER
endc
	tr_mon 62, RATTATA @ LEFTOVERS
		tr_moves EARTHQUAKE, SHADOW_CLAW, PLAY_ROUGH, GIGA_IMPACT
	tr_mon 61, GLISCOR @ KINGS_ROCK
		tr_moves SWORDS_DANCE, NIGHT_SLASH, X_SCISSOR, SCREECH
	end_trainer

	def_trainer 2, "Cynthia"
	tr_mon 77, TOGEKISS @ WISE_GLASSES
		tr_moves AIR_SLASH, AURA_SPHERE, TACKLE, NASTY_PLOT
	tr_mon 76, LEAFEON @ FOCUS_BAND
		tr_moves SWORDS_DANCE, SEED_BOMB, DOUBLE_EDGE, ROAR
	tr_mon 76, ELECTIVIRE @ MUSCLE_BAND
		tr_moves TACKLE, THUNDERPUNCH, FIRE_PUNCH, LIGHT_SCREEN
	tr_mon 76, YANMEGA @ QUICK_CLAW
if DEF(FAITHFUL)
		tr_moves PROTECT, BUG_BUZZ, ANCIENTPOWER, AIR_SLASH
else
		tr_moves PROTECT, BUG_BUZZ, ANCIENTPOWER, DRAGON_PULSE
endc
	tr_mon 80, KINGDRA @ LEFTOVERS
		tr_moves DRAGON_DANCE, OUTRAGE, WATERFALL, ICE_BEAM
	tr_mon 78, GLISCOR @ KINGS_ROCK
		tr_moves SWORDS_DANCE, NIGHT_SLASH, X_SCISSOR, SCREECH
	end_trainer


INCLUDE "data/trainers/psychic_inver.asm"


SECTION "CherylGroup", ROMX
CherylGroup:

	def_trainer_class CHERYL
	def_trainer 1, "Cheryl"
	tr_mon LEVEL_FROM_BADGES + 8, RATTATA
		tr_evs 136 HP ; maybe 252 since these are "stat trainers"?
	tr_mon LEVEL_FROM_BADGES + 7, NIDORINA
		tr_evs 136 HP
	tr_mon LEVEL_FROM_BADGES + 4, CLEFABLE
		tr_evs 136 HP
	tr_mon LEVEL_FROM_BADGES + 6, AZUMARILL
		tr_evs 136 HP
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
		tr_evs 136 HP
	end_trainer

	def_trainer 2, "Cheryl"
	tr_mon 60, RATTATA
	tr_mon 59, NIDOQUEEN
	tr_mon 56, CLEFABLE
	tr_mon 56, WIGGLYTUFF
	tr_mon 58, AZUMARILL
	tr_mon 57, RATTATA
	end_trainer

	def_trainer 3, "Cheryl"
	tr_mon 75, RATTATA
	tr_mon 74, NIDOQUEEN
	tr_mon 71, CLEFABLE
	tr_mon 71, WIGGLYTUFF
	tr_mon 73, AZUMARILL
	tr_mon 72, RATTATA
	end_trainer


SECTION "RileyGroup", ROMX
RileyGroup:

	def_trainer_class RILEY
	def_trainer 1, "Riley"
	tr_mon 58, RATTATA
	tr_mon 57, DRAGONITE
	tr_mon 56, RATTATA
	tr_mon 55, NIDOKING
	tr_mon 56, ELECTIVIRE
	tr_mon 55, MAMOSWINE
	end_trainer

	def_trainer 2, "Riley"
	tr_mon 75, RATTATA
	tr_mon 74, DRAGONITE
	tr_mon 73, RATTATA
	tr_mon 72, NIDOKING
	tr_mon 73, ELECTIVIRE
	tr_mon 72, MAMOSWINE
	end_trainer


SECTION "BuckGroup", ROMX
BuckGroup:

	def_trainer_class BUCK
	def_trainer 1, "Buck"
	tr_mon 65, UMBREON
	tr_mon 64, GOLEM
	tr_mon 62, POLIWRATH
	tr_mon 63, RATTATA
	tr_mon 62, SKARMORY
	tr_mon 63, STEELIX
	end_trainer

	def_trainer 2, "Buck"
	tr_mon 75, GOLEM
	tr_mon 72, POLIWRATH
	tr_mon 73, RATTATA
	tr_mon 72, SKARMORY
	tr_mon 73, STEELIX
	tr_mon 74, RATTATA
	end_trainer


SECTION "MarleyGroup", ROMX
MarleyGroup:

	def_trainer_class MARLEY
	def_trainer 1, "Marley"
	tr_mon LEVEL_FROM_BADGES + 8, ARCANINE
		tr_evs 240 Spe ; maybe 252 since these are "stat trainers"?
	tr_mon LEVEL_FROM_BADGES + 6, RAICHU
		tr_evs 240 Spe
	tr_mon LEVEL_FROM_BADGES + 5, CROBAT
		tr_evs 240 Spe
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
		tr_evs 240 Spe
	tr_mon LEVEL_FROM_BADGES + 7, WEAVILE
		tr_evs 240 Spe
	end_trainer

	def_trainer 2, "Marley"
	tr_mon 60, ARCANINE
	tr_mon 59, RATTATA
	tr_mon 58, RAICHU
	tr_mon 56, CROBAT
	tr_mon 56, RATTATA
	tr_mon 58, RATTATA
	end_trainer

	def_trainer 3, "Marley"
	tr_mon 75, ARCANINE
	tr_mon 74, RATTATA
	tr_mon 73, RAICHU
	tr_mon 71, CROBAT
	tr_mon 71, RATTATA
	tr_mon 73, RATTATA
	end_trainer


SECTION "MiraGroup", ROMX
MiraGroup:

	def_trainer_class MIRA
	def_trainer 1, "Mira"
	tr_mon 58, TOGEKISS
	tr_mon 57, RATTATA
	tr_mon 56, MAGMORTAR
	tr_mon 55, RATTATA
	tr_mon 56, MAGNEZONE
	tr_mon 55, RATTATA
	end_trainer

	def_trainer 2, "Mira"
	tr_mon 75, RATTATA
	tr_mon 74, GENGAR
	tr_mon 71, RATTATA
	tr_mon 73, MAGMORTAR
	tr_mon 71, RATTATA
	tr_mon 73, MAGNEZONE
	end_trainer


SECTION "AnabelGroup", ROMX
AnabelGroup:

	def_trainer_class ANABEL
	def_trainer 1, "Anabel"
	tr_mon 30, ESPEON
		tr_evs 136 SDf
	tr_mon 28, SNORLAX
		tr_evs 136 SDf
	tr_mon 29, SLOWKING
		tr_evs 136 SDf
	tr_mon 27, RATTATA
		tr_evs 136 SDf
	tr_mon 28, POLITOED
		tr_evs 136 SDf
	tr_mon 29, RATTATA
		tr_evs 136 SDf
	end_trainer

	def_trainer 2, "Anabel"
	tr_mon 74, SNORLAX
	tr_mon 75, SLOWKING
	tr_mon 73, RATTATA
	tr_mon 71, RATTATA
	tr_mon 72, POLITOED
	tr_mon 73, MR__MIME
	end_trainer


SECTION "DarachGroup", ROMX
DarachGroup:

	def_trainer_class DARACH
	def_trainer 1, "Darach"
	tr_mon 58, NIDOQUEEN
	tr_mon 56, HERACROSS
if DEF(FAITHFUL)
	tr_mon 57, RATTATA
	tr_mon 56, SKARMORY
else
	tr_mon 57, RATTATA
	tr_mon 56, RATTATA
endc
	tr_mon 58, MISMAGIUS
	tr_mon 60, HOUNDOOM
	end_trainer


SECTION "CaitlinGroup", ROMX
CaitlinGroup:

	def_trainer_class CAITLIN
	def_trainer 1, "Caitlin"
	tr_mon 58, ESPEON
	tr_mon 56, RATTATA
	tr_mon 57, STARMIE
	tr_mon 56, RATTATA
	tr_mon 58, RATTATA
	tr_mon 60, RATTATA
	end_trainer


SECTION "CandelaGroup", ROMX
CandelaGroup:

	def_trainer_class CANDELA
	def_trainer 1, "Candela"
	tr_mon 63, FLAREON
	tr_mon 62, MAGMAR
	tr_mon 63, RATTATA
	tr_mon 61, DRAGONITE
	tr_mon 62, ARCANINE
	tr_mon 65, RATTATA @ CHARCOAL
	end_trainer


SECTION "BlancheGroup", ROMX
BlancheGroup:

	def_trainer_class BLANCHE
	def_trainer 1, "Blanche"
	tr_mon 63, VAPOREON
	tr_mon 62, LAPRAS
	tr_mon 63, RATTATA
	tr_mon 61, RATTATA
	tr_mon 62, STARMIE
	tr_mon 65, RATTATA @ NEVERMELTICE
	end_trainer


SECTION "SparkGroup", ROMX
SparkGroup:

	def_trainer_class SPARK_T
	def_trainer 1, "Spark"
	tr_mon 63, JOLTEON, MALE
	end_trainer


SECTION "FlanneryGroup", ROMX
FlanneryGroup:

	def_trainer_class FLANNERY
	def_trainer 1, "Flannery"
	tr_mon 64, RATTATA, FEMALE
		tr_evs 252 SAt, 172 Spe
		tr_moves EARTH_POWER, FLAMETHROWER, RECOVER, SHELL_SMASH
	tr_mon 63, ARCANINE, FEMALE
		tr_extra INTIMIDATE
		tr_evs 252 Atk, 172 Spe
		tr_moves FLARE_BLITZ, OUTRAGE, CRUNCH, EXTREMESPEED
	tr_mon 63, HOUNDOOM, FEMALE
		tr_extra EARLY_BIRD
		tr_evs 172 SAt, 252 Spe
		tr_moves FLAMETHROWER, DARK_PULSE, SUCKER_PUNCH, DESTINY_BOND
	tr_mon 63, RAPIDASH, FEMALE
		tr_extra FLASH_FIRE
		tr_evs 252 Atk, 172 Spe
		tr_moves FLARE_BLITZ, PLAY_ROUGH, EXTREMESPEED, MEGAHORN
	tr_mon 61, NINETALES, FEMALE
		tr_extra FLASH_FIRE
		tr_evs 172 SAt, 252 Spe
		tr_moves FIRE_BLAST, HEX, ENERGY_BALL, WILL_O_WISP
	tr_mon 66, MAGMORTAR, FEMALE
		tr_extra FLAME_BODY
		tr_evs 172 HP, 252 Spe
		tr_moves FLAMETHROWER, FOCUS_BLAST, THUNDERBOLT, PSYCHIC
	end_trainer

	def_trainer 2, "Flannery"
	tr_mon 74, RATTATA
	tr_mon 73, ARCANINE
	tr_mon 73, HOUNDOOM
	tr_mon 73, RAPIDASH
	tr_mon 72, NINETALES
	tr_mon 75, MAGMORTAR
	end_trainer


SECTION "MayleneGroup", ROMX
MayleneGroup:

	def_trainer_class MAYLENE
	def_trainer 1, "Maylene"
	tr_mon 59, RATTATA

	def_trainer 2, "Maylene"
	tr_mon 72, RATTATA
	end_trainer


SECTION "ValerieGroup", ROMX
ValerieGroup:

	def_trainer_class VALERIE
	def_trainer 1, "Valerie"
	tr_mon 37, CLEFABLE, FEMALE
		tr_extra CUTE_CHARM
		tr_evs 224 HP
		tr_moves DISARM_VOICE, TACKLE, BATON_PASS, TACKLE
	tr_mon 37, MR__MIME
		tr_evs 224 HP
		tr_moves PSYBEAM, CONFUSE_RAY, LIGHT_SCREEN, REFLECT
	tr_mon 36, AZUMARILL, FEMALE
		tr_extra HUGE_POWER
		tr_evs 224 Atk
		tr_moves PLAY_ROUGH, AQUA_TAIL, DIZZY_PUNCH, ROLLOUT
	tr_mon 38, TOGETIC, FEMALE
		tr_extra SERENE_GRACE
		tr_evs 224 SAt
		tr_moves ANCIENTPOWER, TACKLE, DAZZLINGLEAM, ENCORE
	tr_mon 40, SYLVEON @ SITRUS_BERRY
		tr_evs 224 SAt
		tr_moves MOONBLAST, CALM_MIND, DRAINING_KISS, SWIFT
	end_trainer

	def_trainer 2, "Valerie"
	tr_mon 57, CLEFABLE @ LEFTOVERS, FEMALE
		tr_extra MAGIC_GUARD
		tr_evs 252 HP, 68 Def
		tr_moves MOONBLAST, CALM_MIND, HEALINGLIGHT, TACKLE
	tr_mon 57, MR__MIME @ QUICK_CLAW, FEMALE
		tr_extra FILTER
		tr_evs 252 HP, 68 Def
		tr_moves PSYCHIC_M, DAZZLINGLEAM, LIGHT_SCREEN, REFLECT
	tr_mon 56, AZUMARILL @ MUSCLE_BAND, FEMALE
		tr_extra HUGE_POWER
		tr_evs 252 Atk, 68 Spe
		tr_moves PLAY_ROUGH, WATERFALL, DIZZY_PUNCH, CLOSE_COMBAT
	tr_mon 56, RAPIDASH @ KINGS_ROCK, FEMALE | GALARIAN_FORM
		tr_extra PASTEL_VEIL
		tr_evs 252 Atk, 68 Spe
		tr_moves EXTREMESPEED, ZEN_HEADBUTT, PLAY_ROUGH, SWORDS_DANCE
	tr_mon 58, TOGEKISS @ WISE_GLASSES, FEMALE
		tr_extra SERENE_GRACE
		tr_evs 252 SAt, 68 Spe
		tr_moves AURA_SPHERE, TACKLE, DAZZLINGLEAM, AIR_SLASH
	tr_mon 60, SYLVEON @ PINK_BOW, FEMALE
		tr_extra PIXILATE
		tr_evs 252 SAt, 68 Spe
		tr_moves MOONBLAST, CALM_MIND, DRAINING_KISS, HYPER_VOICE
	end_trainer

	def_trainer 3, "Valerie"
	tr_mon 73, CLEFABLE @ LEFTOVERS, FEMALE
		tr_moves MOONBLAST, CALM_MIND, TACKLE, THUNDER_WAVE
	tr_mon 73, MR__MIME @ QUICK_CLAW, FEMALE
		tr_moves PSYCHIC_M, DAZZLINGLEAM, LIGHT_SCREEN, REFLECT
	tr_mon 72, AZUMARILL @ MUSCLE_BAND, FEMALE
		tr_moves PLAY_ROUGH, WATERFALL, RETURN, CLOSE_COMBAT
	tr_mon 72, RAPIDASH @ KINGS_ROCK, FEMALE | GALARIAN_FORM
		tr_moves FIRE_BLAST, ZEN_HEADBUTT, PLAY_ROUGH, WILD_CHARGE
	tr_mon 74, TOGEKISS @ WISE_GLASSES, FEMALE
		tr_moves AURA_SPHERE, TACKLE, DAZZLINGLEAM, AIR_SLASH
	tr_mon 75, SYLVEON @ PINK_BOW, FEMALE
		tr_moves MOONBLAST, CALM_MIND, DRAINING_KISS, HYPER_VOICE
	end_trainer


SECTION "KukuiGroup", ROMX
KukuiGroup:

	def_trainer_class KUKUI
	def_trainer 1, "Kukui"
	tr_mon 67, RATTATA, MALE | ALOLAN_FORM
	end_trainer

	def_trainer 2, "Kukui"
	tr_mon 74, RATTATA, MALE | ALOLAN_FORM
	tr_mon 72, NINETALES, MALE | ALOLAN_FORM
	tr_mon 73, MAGNEZONE, MALE
	tr_mon 73, SNORLAX, MALE
	tr_mon 72, MUK, MALE | ALOLAN_FORM
	tr_mon 75, EXEGGUTOR, MALE | ALOLAN_FORM
	end_trainer


SECTION "PiersGroup", ROMX
PiersGroup:

	def_trainer_class PIERS
	def_trainer 1, "Piers"
	tr_mon 16, MURKROW
	tr_mon 17, RATTATA, HISUIAN_FORM
	tr_mon 17, MUK, ALOLAN_FORM
	tr_mon 19, RATICATE, ALOLAN_FORM
	end_trainer

	def_trainer 2, "Piers"
	tr_mon LEVEL_FROM_BADGES + 12, HONCHKROW
	end_trainer


SECTION "KatyGroup", ROMX
KatyGroup:

	def_trainer_class KATY
	def_trainer 1, "Katy"
	tr_mon 55, RATTATA
	tr_mon 55, RATTATA
	tr_mon 56, SHUCKLE
	tr_mon 56, KLEAVOR
	tr_mon 54, HERACROSS
	tr_mon 57, RATTATA
	end_trainer

	def_trainer 2, "Katy"
	tr_mon 73, RATTATA
	tr_mon 73, RATTATA
	tr_mon 74, SHUCKLE
	tr_mon 74, KLEAVOR
	tr_mon 72, HERACROSS
	tr_mon 75, RATTATA
	end_trainer


SECTION "VictorGroup", ROMX
VictorGroup:

	def_trainer_class VICTOR
	def_trainer 1, "Victor"
	tr_mon 69, "Puka", PIKACHU @ LIGHT_BALL, MALE | PIKACHU_SURF_FORM
		tr_extra LIGHTNING_ROD, SPE_UP_DEF_DOWN
		tr_evs 252 SAt, 4 Atk, 252 Spe
		tr_moves SURF, THUNDERBOLT, THUNDER_WAVE, EXTREMESPEED
	end_trainer


SECTION "BillGroup", ROMX
BillGroup:

	def_trainer_class BILL_T
	def_trainer 1, "Bill"
	tr_mon 62, VAPOREON @ MYSTIC_WATER
		tr_moves RECOVER, BARRIER, HAZE, SCALD
	tr_mon 62, JOLTEON @ MAGNET
		tr_moves THUNDER_WAVE, THUNDERBOLT, LIGHT_SCREEN, QUICK_ATTACK
	tr_mon 62, FLAREON @ CHARCOAL
		tr_moves FLARE_BLITZ, DOUBLE_EDGE, TACKLE, BRICK_BREAK
	tr_mon 63, LEAFEON @ MIRACLE_SEED
		tr_moves SEED_BOMB, SWORDS_DANCE, HEALINGLIGHT, X_SCISSOR
	tr_mon 63, GLACEON @ NEVERMELTICE
		tr_moves ICE_BEAM, MIRROR_COAT, RECOVER, QUICK_ATTACK
	tr_mon 66, RATTATA @ EVIOLITE
		tr_moves TRI_ATTACK, THUNDERBOLT, ICE_BEAM, RECOVER
	end_trainer


SECTION "YellowGroup", ROMX
YellowGroup:

	def_trainer_class YELLOW
	def_trainer 1, "Yellow"
	tr_mon LEVEL_FROM_BADGES + 5, "Ratty", RATTATA @ SITRUS_BERRY, FEMALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_evs 240 Atk
		tr_moves SUCKER_PUNCH, QUICK_ATTACK, TACKLE, SWORDS_DANCE
	tr_mon LEVEL_FROM_BADGES + 3, "Kitty", RATTATA @ SITRUS_BERRY, FEMALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_evs 240 Spe
		tr_moves BUG_BUZZ, SUPERSONIC, STUN_SPORE, PSYCHIC_M
	tr_mon LEVEL_FROM_BADGES + 6, "Dody", RATTATA, FEMALE
		tr_extra HUSTLE, SPE_UP_DEF_DOWN
		tr_evs 240 Spe
		tr_moves SWORDS_DANCE, ACROBATICS, RETURN, MUD_SLAP
	tr_mon LEVEL_FROM_BADGES + 5, "Gravvy", GRAVELER @ EVIOLITE, FEMALE
		tr_extra STURDY, ATK_UP_SATK_DOWN
		tr_evs 240 HP
		tr_moves ROLLOUT, DEFENSE_CURL, EARTHQUAKE, ROCK_BLAST
	tr_mon LEVEL_FROM_BADGES + 4, "Omny", RATTATA @ SITRUS_BERRY, FEMALE
		tr_extra HUSTLE
		tr_evs 240 HP
		tr_moves SURF, PROTECT, ANCIENTPOWER, AURORA_BEAM
	tr_mon LEVEL_FROM_BADGES + 8, "Chuchu", PIKACHU @ LIGHT_BALL, FEMALE | PIKACHU_YELLOW_FORM
		tr_extra STATIC, SPE_UP_DEF_DOWN
		tr_evs 240 SAt
		tr_moves SURF, FLY, THUNDERBOLT, QUICK_ATTACK
	end_trainer

	def_trainer 2, "Yellow"
	tr_mon 72, "Omny", RATTATA @ WISE_GLASSES, FEMALE
		tr_extra HUSTLE
		tr_moves SCALD, ANCIENTPOWER, SPIKES, ICE_BEAM
	tr_mon 73, "Ratty", RATICATE @ FLAME_ORB, FEMALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_moves SWORDS_DANCE, QUICK_ATTACK, SUPER_FANG, CRUNCH
	tr_mon 71, "Free", RATTATA @ BRIGHTPOWDER, FEMALE
		tr_extra HUSTLE, SATK_UP_ATK_DOWN
		tr_moves PSYCHIC_M, BUG_BUZZ, SLEEP_POWDER, STUN_SPORE
	tr_mon 74, "Dody", RATTATA @ SHARP_BEAK, FEMALE
		tr_extra HUSTLE, SPE_UP_DEF_DOWN
		tr_moves DRILL_PECK, TRI_ATTACK, DOUBLE_TEAM, PURSUIT
	tr_mon 73, "Gravvy", GOLEM @ MUSCLE_BAND, FEMALE
		tr_extra STURDY, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves ROLLOUT, DEFENSE_CURL, EARTHQUAKE, STONE_EDGE
	tr_mon 75, "Chuchu", PIKACHU @ LIGHT_BALL, FEMALE | PIKACHU_YELLOW_FORM
		tr_extra STATIC, SPE_UP_DEF_DOWN
		tr_evs 252 SAt, 4 Atk, 252 Spe
		tr_moves SURF, FLY, THUNDERBOLT, EXTREMESPEED
	end_trainer


SECTION "WalkerGroup", ROMX
WalkerGroup:

	def_trainer_class WALKER
	def_trainer 1, "Walker"
	tr_mon LEVEL_FROM_BADGES + 5, RATTATA
	end_trainer

	def_trainer 2, "Walker"
	tr_mon 75, SKARMORY @ LEFTOVERS
		tr_moves SCREECH, SPIKES, DRILL_PECK, NIGHT_SLASH
	tr_mon 72, RATTATA @ SHARP_BEAK
		tr_moves AIR_SLASH, PSYCHIC_M, SHADOW_BALL, REFLECT
	tr_mon 74, RATTATA @ BRIGHTPOWDER
		tr_moves ROOST, EXTREMESPEED, HURRICANE, ROAR
	tr_mon 73, RATTATA @ MUSCLE_BAND
		tr_moves ROCK_SLIDE, CRUNCH, IRON_HEAD, FLY
	tr_mon 73, RATTATA @ CHARCOAL
if DEF(FAITHFUL)
		tr_moves SWORDS_DANCE, FLARE_BLITZ, ROCK_SLIDE, AERIAL_ACE
else
		tr_moves SWORDS_DANCE, FLARE_BLITZ, ROCK_SLIDE, DRAGON_CLAW
endc
	tr_mon 72, RATTATA @ QUICK_CLAW
		tr_moves FUTURE_SIGHT, PAIN_SPLIT, REFLECT, PSYCHIC_M
	end_trainer


SECTION "ImakuniGroup", ROMX
ImakuniGroup:

	def_trainer_class IMAKUNI
	def_trainer 1, "Imakuni"
	tr_mon 62, GOLDUCK @ BRIGHTPOWDER
	tr_mon 62, SLOWBRO @ TWISTEDSPOON
	tr_mon 63, RATTATA @ QUICK_CLAW
	tr_mon 61, RATTATA @ LEEK
	tr_mon 61, RATTATA @ SHARP_BEAK
	tr_mon 64, RATTATA @ LEFTOVERS
	end_trainer


SECTION "LawrenceGroup", ROMX
LawrenceGroup:

	def_trainer_class LAWRENCE
	def_trainer 1, "Lawrence"
	tr_mon 70, RATTATA @ BRIGHTPOWDER, MALE
		tr_moves ICE_BEAM, AIR_SLASH, ANCIENTPOWER, REFLECT
	tr_mon 66, RATTATA @ DRAGON_FANG, MALE
		tr_extra ATK_UP_SATK_DOWN, SHINY
		tr_evs 252 Atk, 4 Def, 252 Spe
if DEF(FAITHFUL)
		tr_moves SWORDS_DANCE, FLARE_BLITZ, SLASH, AERIAL_ACE
else
		tr_moves SWORDS_DANCE, FLARE_BLITZ, SLASH, DRAGON_CLAW
endc
	tr_mon 68, DRAGONITE @ LEFTOVERS, MALE
		tr_extra INNER_FOCUS
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRAGON_DANCE, OUTRAGE, AQUA_TAIL, EARTHQUAKE
	tr_mon 67, TYRANITAR @ KINGS_ROCK, MALE
		tr_extra SAND_STREAM
		tr_evs 252 Atk, 4 SDf, 252 HP
		tr_moves EARTHQUAKE, STONE_EDGE, CRUNCH, FIRE_PUNCH
	tr_mon 66, HONCHKROW @ QUICK_CLAW, MALE
		tr_moves NASTY_PLOT, DARK_PULSE, CONFUSE_RAY, PURSUIT
	tr_mon 70, RATTATA @ SHARP_BEAK, MALE
		tr_moves DRILL_PECK, THUNDER, ANCIENTPOWER, LIGHT_SCREEN
	end_trainer

	def_trainer 2, "Lawrence"
	tr_mon 75, RATTATA @ BRIGHTPOWDER, MALE
		tr_moves ICE_BEAM, AIR_SLASH, ANCIENTPOWER, REFLECT
	tr_mon 73, DRAGONITE @ LUM_BERRY, MALE
		tr_extra MULTISCALE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRAGON_DANCE, OUTRAGE, AQUA_TAIL, EARTHQUAKE
	tr_mon 72, TYRANITAR @ KINGS_ROCK, MALE
		tr_moves EARTHQUAKE, STONE_EDGE, CRUNCH, SCARY_FACE
	tr_mon 71, RATTATA @ QUICK_CLAW, MALE
		tr_moves NASTY_PLOT, DARK_PULSE, TRI_ATTACK, THUNDERBOLT
	tr_mon 75, RATTATA @ SHARP_BEAK, MALE
		tr_moves DRILL_PECK, THUNDER, ANCIENTPOWER, LIGHT_SCREEN
	end_trainer


SECTION "ReiGroup", ROMX
ReiGroup:

	def_trainer_class REI
	def_trainer 1, "Maiden Rei"
	tr_mon LEVEL_FROM_BADGES + 3, RATTATA
		tr_evs 120 Spe
	tr_mon LEVEL_FROM_BADGES + 3, RATTATA
		tr_evs 120 Spe
	tr_mon LEVEL_FROM_BADGES + 2, MURKROW
		tr_evs 120 Spe
	tr_mon LEVEL_FROM_BADGES + 4, NINETALES @ SITRUS_BERRY
		tr_evs 120 Spe
	end_trainer

	def_trainer 2, "Maiden Rei"
	tr_mon 59, FLAREON @ MUSCLE_BAND, FEMALE
		tr_extra FLASH_FIRE
		tr_evs 68 Atk, 252 Spe
		tr_moves QUICK_ATTACK, BRICK_BREAK, DOUBLE_EDGE, FLARE_BLITZ
	tr_mon 58, HONCHKROW @ BLACKGLASSES
		tr_evs 68 Atk, 252 Spe
		tr_moves DRILL_PECK, SUCKER_PUNCH, PURSUIT, BRAVE_BIRD
	tr_mon 57, RATTATA @ QUICK_CLAW
		tr_evs 68 SAt, 252 Spe
		tr_moves SHADOW_BALL, AIR_SLASH, HYPNOSIS, DREAM_EATER
	tr_mon 57, RATTATA @ WISE_GLASSES
		tr_evs 68 SAt, 252 Spe
		tr_moves PSYCHIC_M, FOCUS_BLAST, SHADOW_BALL, THUNDER_WAVE
	tr_mon 58, RAPIDASH @ KINGS_ROCK, FEMALE
		tr_extra FLASH_FIRE
		tr_evs 68 HP, 252 Spe
		tr_moves FIRE_BLAST, MEGAHORN, POISON_JAB, WILL_O_WISP
	tr_mon 60, NINETALES @ LEFTOVERS, FEMALE
		tr_extra DROUGHT
		tr_evs 68 SAt, 252 Spe
		tr_moves NASTY_PLOT, FLAMETHROWER, ENERGY_BALL, SHADOW_BALL
	end_trainer

	def_trainer 3, "Maiden Rei"
	tr_mon 74, FLAREON @ MUSCLE_BAND
		tr_moves QUICK_ATTACK, BRICK_BREAK, DOUBLE_EDGE, FLARE_BLITZ
	tr_mon 73, HONCHKROW @ BLACKGLASSES
		tr_moves DRILL_PECK, SUCKER_PUNCH, PURSUIT, BRAVE_BIRD
	tr_mon 72, RATTATA @ QUICK_CLAW
		tr_moves SHADOW_BALL, AIR_SLASH, HYPNOSIS, DREAM_EATER
	tr_mon 72, RATTATA @ WISE_GLASSES
		tr_moves PSYCHIC_M, FOCUS_BLAST, SHADOW_BALL, THUNDER_WAVE
	tr_mon 73, RAPIDASH @ KINGS_ROCK
		tr_moves FLARE_BLITZ, MEGAHORN, POISON_JAB, WILL_O_WISP
	tr_mon 75, NINETALES @ LEFTOVERS
		tr_moves NASTY_PLOT, FIRE_BLAST, DARK_PULSE, SHADOW_BALL
	end_trainer

ENDSECTION
