; Orange Pokémon in grass

	def_grass_wildmons SHAMOUTI_TUNNEL
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	wildmon LEVEL_FROM_BADGES - 1, RATTATA
	wildmon LEVEL_FROM_BADGES - 1, GRAVELER
	wildmon LEVEL_FROM_BADGES + 1, MEOWTH, GALARIAN_FORM
	wildmon LEVEL_FROM_BADGES + 3, GOLBAT
	wildmon LEVEL_FROM_BADGES + 2, GOLBAT
	wildmon LEVEL_FROM_BADGES + 4, PERRSERKER
	wildmon LEVEL_FROM_BADGES + 2, PERRSERKER
	; day
	wildmon LEVEL_FROM_BADGES - 1, RATTATA
	wildmon LEVEL_FROM_BADGES - 1, GRAVELER
	wildmon LEVEL_FROM_BADGES + 1, MEOWTH, GALARIAN_FORM
	wildmon LEVEL_FROM_BADGES + 3, GOLBAT
	wildmon LEVEL_FROM_BADGES + 2, GOLBAT
	wildmon LEVEL_FROM_BADGES + 4, PERRSERKER
	wildmon LEVEL_FROM_BADGES + 2, PERRSERKER
	; nite
	wildmon LEVEL_FROM_BADGES + 2, GOLBAT
	wildmon LEVEL_FROM_BADGES - 1, GRAVELER
	wildmon LEVEL_FROM_BADGES + 1, MEOWTH, GALARIAN_FORM
	wildmon LEVEL_FROM_BADGES - 1, RATTATA
	wildmon LEVEL_FROM_BADGES + 0, RATTATA
	wildmon LEVEL_FROM_BADGES + 4, PERRSERKER
	wildmon LEVEL_FROM_BADGES + 2, PERRSERKER
	end_grass_wildmons

	def_grass_wildmons NOISY_FOREST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	wildmon LEVEL_FROM_BADGES - 1, RATTATA
	wildmon LEVEL_FROM_BADGES - 1, RATTATA
	wildmon LEVEL_FROM_BADGES + 1, RATTATA
	wildmon LEVEL_FROM_BADGES + 3, SCYTHER
	wildmon LEVEL_FROM_BADGES + 2, RATTATA
	wildmon LEVEL_FROM_BADGES + 4, YANMA
	wildmon LEVEL_FROM_BADGES + 2, YANMA
	; day
	wildmon LEVEL_FROM_BADGES - 1, RATTATA
	wildmon LEVEL_FROM_BADGES - 1, RATTATA
	wildmon LEVEL_FROM_BADGES + 1, RATTATA
	wildmon LEVEL_FROM_BADGES + 3, SCYTHER
	wildmon LEVEL_FROM_BADGES + 2, RATTATA
	wildmon LEVEL_FROM_BADGES + 4, YANMA
	wildmon LEVEL_FROM_BADGES + 2, YANMA
	; nite
	wildmon LEVEL_FROM_BADGES - 1, RATTATA
	wildmon LEVEL_FROM_BADGES - 1, RATTATA
	wildmon LEVEL_FROM_BADGES + 1, RATTATA
	wildmon LEVEL_FROM_BADGES + 3, SCYTHER
	wildmon LEVEL_FROM_BADGES + 2, RATTATA
	wildmon LEVEL_FROM_BADGES + 4, YANMA
	wildmon LEVEL_FROM_BADGES + 2, YANMA
	end_grass_wildmons

	def_grass_wildmons NAVEL_ROCK_INSIDE
	db 1, 1, 1 ; encounter rates: morn/day/nite
	; morn
	wildmon 80, DRAGONAIR
	wildmon 80, DRAGONAIR
	wildmon 81, DRAGONAIR
	wildmon 82, DRAGONAIR
	wildmon 83, DRAGONAIR
	wildmon 84, DRAGONITE
	wildmon 85, DRAGONITE
	; day
	wildmon 80, DRAGONAIR
	wildmon 80, DRAGONAIR
	wildmon 81, DRAGONAIR
	wildmon 82, DRAGONAIR
	wildmon 83, DRAGONAIR
	wildmon 84, DRAGONITE
	wildmon 85, DRAGONITE
	; nite
	wildmon 80, DRAGONAIR
	wildmon 80, DRAGONAIR
	wildmon 81, DRAGONAIR
	wildmon 82, DRAGONAIR
	wildmon 83, DRAGONAIR
	wildmon 84, DRAGONITE
	wildmon 85, DRAGONITE
	end_grass_wildmons

	db -1 ; end
