; Johto Pokémon in grass

def_grass_wildmons ROUTE_22
	db 10 percent ; encounter rate
	; morn
	wildmon 3, CASTFORM
	wildmon 4, SLAKOTH
	wildmon 5, SLAKOTH
	wildmon 3, RATTATA, ALOLAN_FORM
	wildmon 6, RATTATA
	wildmon 5, RATTATA, ALOLAN_FORM
	wildmon 6, RATTATA, ALOLAN_FORM
	; day
	wildmon 3, CASTFORM
	wildmon 4, CASTFORM
	wildmon 5, CASTFORM
	wildmon 3, RATTATA, ALOLAN_FORM
	wildmon 6, CASTFORM
	wildmon 5, RATTATA, ALOLAN_FORM
	wildmon 6, RATTATA, ALOLAN_FORM
	; nite
	wildmon 3, SLAKOTH
	wildmon 4, SLAKOTH
	wildmon 5, SLAKOTH
	wildmon 3, RATTATA, ALOLAN_FORM
	wildmon 6, GASTLY
	wildmon 5, RATTATA, ALOLAN_FORM
	wildmon 6, RATTATA, ALOLAN_FORM
	end_grass_wildmons

	db -1 ; end
