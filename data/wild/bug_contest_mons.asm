MACRO contest_mon
	db \1
	dp \2
	db \3, \4
ENDM

ContestMons:
	;            %, species,   min, max
	contest_mon 15, RATTATA,    7, 18
	contest_mon 15, RATTATA,      7, 18
	contest_mon 10, RATTATA,     9, 18
	contest_mon 10, RATTATA,      9, 18
	contest_mon  5, RATTATA, 12, 15
	contest_mon  5, RATTATA,   12, 15
	contest_mon 10, RATTATA,    10, 16
	contest_mon 10, PARAS,      10, 17
	contest_mon  5, RATTATA,   12, 15
	contest_mon  5, YANMA,      13, 14
	contest_mon  5, SCYTHER,    13, 14
	contest_mon  5, PINSIR,     13, 14
ContestMonsEnd:
