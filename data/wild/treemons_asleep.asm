; Used by CheckSleepingTreeMon

AsleepTreeMons:
	table_width 1
	dr .Morn
	dr .Day
	dr .Nite
	dr .Eve
	assert_table_length NUM_DAYTIMES
.Nite
.Eve
	dp EKANS
	dp EXEGGCUTE
	db 0 ; end

.Morn
.Day
	dp SPINARAK
	dp HERACROSS
	db 0 ; end
