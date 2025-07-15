MACRO base_exception
; mon, actual yield
	dp \1, \2
	dw \3
ENDM

NewBaseExpExceptions:
	base_exception AUDINO, PLAIN_FORM, 390 ; BST x 50.0% as of gen V (unchanged in VIII)
	dw -1
