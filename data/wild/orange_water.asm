; Orange Pokémon in water

	def_water_wildmons SHAMOUTI_ISLAND
	db 6 percent ; encounter rate
	wildmon LEVEL_FROM_BADGES - 2, RATTATA
	wildmon LEVEL_FROM_BADGES + 0, RATTATA
	wildmon LEVEL_FROM_BADGES + 2, RATTATA
	end_water_wildmons

	def_water_wildmons BEAUTIFUL_BEACH
	db 6 percent ; encounter rate
	wildmon LEVEL_FROM_BADGES - 2, RATTATA
	wildmon LEVEL_FROM_BADGES + 0, RATTATA
	wildmon LEVEL_FROM_BADGES + 2, RATTATA
	end_water_wildmons

	def_water_wildmons WARM_BEACH
	db 6 percent ; encounter rate
	wildmon LEVEL_FROM_BADGES - 2, SEADRA
	wildmon LEVEL_FROM_BADGES + 0, SEADRA
	wildmon LEVEL_FROM_BADGES + 2, RATTATA
	end_water_wildmons

	def_water_wildmons SHAMOUTI_COAST
	db 6 percent ; encounter rate
	wildmon LEVEL_FROM_BADGES + 2, RATTATA
	wildmon LEVEL_FROM_BADGES + 0, MANTINE
	wildmon LEVEL_FROM_BADGES - 2, REMORAID
	end_water_wildmons

	def_water_wildmons ROCKY_BEACH
	db 6 percent ; encounter rate
	wildmon LEVEL_FROM_BADGES - 2, RATTATA
	wildmon LEVEL_FROM_BADGES + 0, RATTATA
	wildmon LEVEL_FROM_BADGES + 2, RATTATA
	end_water_wildmons

	def_water_wildmons NAVEL_ROCK_OUTSIDE
	db 6 percent ; encounter rate
	wildmon 80, RATTATA
	wildmon 80, STARMIE
	wildmon 80, LANTURN
	end_water_wildmons

	db -1 ; end
