BugContestantPointers:
	table_width 2
	dw BugContestant_BugCatcherDon ; This reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_SchoolboyJohnny
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

MACRO contest_winner
; species, score
	dp \1
	dw \2
ENDM

BugContestant_BugCatcherDon:

BugContestant_BugCatcherEd:

BugContestant_CooltrainerMNick:

BugContestant_PokefanMWilliam:

BugContestant_BugCatcherBenny:

BugContestant_CamperBarry:

BugContestant_PicnickerCindy:

BugContestant_BugCatcherJosh:

BugContestant_SchoolboyJohnny:

BugContestant_SchoolboyKipp:
