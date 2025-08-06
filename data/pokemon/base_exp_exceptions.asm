MACRO base_exception
; mon, actual yield
	dp \1, \2
	dw \3
ENDM

NewBaseExpExceptions:
	;base_exception VICTINI, PLAIN_FORM, 270 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception AUDINO, PLAIN_FORM, 390 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception HYDREIGON, PLAIN_FORM, 270 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception COBALION, PLAIN_FORM, 261 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception TERRAKION, PLAIN_FORM, 261 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception VIRIZION, PLAIN_FORM, 261 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception TORNADUS, PLAIN_FORM, 261 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception TORNADUS, TORNADUS_THERIAN_FORM, 261 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception THUNDURUS, PLAIN_FORM, 261 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception THUNDURUS, THUNDURUS_THERIAN_FORM, 261 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception RESHIRAM, PLAIN_FORM, 306 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception ZEKROM, PLAIN_FORM, 306 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception LANDORUS, PLAIN_FORM, 270 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception LANDORUS, LANDORUS_THERIAN_FORM, 270 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception KYUREM, PLAIN_FORM, 297 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception KYUREM, KYUREM_WHITE_FORM, 297 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception KYUREM, KYUREM_BLACK_FORM, 297 ; BST x 50.0% as of gen V (unchanged in VIII)
	;base_exception KELDEO, PLAIN_FORM, 261 ; BST x 50.0% as of gen V (unchanged in VIII)
	;base_exception MELOETTA, PLAIN_FORM, 270 ; BST x 50.0% as of gen V (unchanged in VIII)
	;base_exception MELOETTA, MELOETTA_PIROUETTE_FORM, 270 ; BST x 50.0% as of gen V (unchanged in VIII)
	base_exception GENESECT, PLAIN_FORM, 270 ; BST x 50.0% as of gen V (unchanged in VIII)
	dw -1
