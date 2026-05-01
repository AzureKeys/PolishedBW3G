;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.0 (16-Nov-2022)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_BattleGhetsis:
	channel_count 4
	channel 1, Music_BattleGhetsis_Ch1
	channel 2, Music_BattleGhetsis_Ch2
	channel 3, Music_BattleGhetsis_Ch3
	channel 4, Music_BattleGhetsis_Ch4

Music_BattleGhetsis_Ch1:
	volume 7, 7
	duty_cycle $3
	note_type 12, 10, 7
	tempo 100
;Bar 1
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 6
	volume_envelope 11, 5
	octave 3
	note D_, 8
	note G_, 16
;Bar 7
	note G_, 16
;Bar 8
	note G_, 16
;Bar 9
	note G_, 16
;Bar 10
	octave 4
	duty_cycle $0
	note C#, 16
;Bar 11
	note C#, 16
	note C#, 16
;Bar 13
	rest 8
Music_BattleGhetsis_Ch1_loop:
	volume_envelope 8, 5
	octave 4
;Bar 14
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 20
	duty_cycle $2
	note G_, 16
;Bar 21
	note G_, 16
;Bar 22
	note G_, 16
;Bar 23
	note C#, 16
;Bar 24
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 28
	note G_, 16
;Bar 29
	note G_, 16
;Bar 30
	note G_, 16
;Bar 31
	note C#, 16
;Bar 32
	note G_, 16
;Bar 33
	note G_, 16
;Bar 34
	note G_, 16
;Bar 35
	note C#, 16
;Bar 36
	duty_cycle $1
	rest 16
	rest 16
;Bar 38
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 44
	volume_envelope 9, 3
	sound_call Music_BattleGhetsis_Ch1_Bar44
;Bar 45
	sound_call Music_BattleGhetsis_Ch1_Bar45
;Bar 46
	sound_call Music_BattleGhetsis_Ch1_Bar44
;Bar 47
	note C#, 2
	note G_, 2
	note C#, 2
	note G_, 2
	octave 5
	note C#, 2
	octave 4
	note G_, 2
	note C#, 2
	octave 3
	note G_, 2
;Bar 48
	octave 4
	note G_, 2
	note C#, 2
	note G_, 2
	octave 5
	note C#, 2
	note G_, 2
	note C#, 2
	octave 4
	note G_, 2
	note C#, 2
;Bar 49
	sound_call Music_BattleGhetsis_Ch1_Bar45
;Bar 50
	sound_call Music_BattleGhetsis_Ch1_Bar44
;Bar 51
	note G_, 2
	octave 5
	note C#, 2
	note G_, 2
	note F_, 2
	note C#, 2
	octave 4
	note G_, 2
	note C#, 2
	octave 3
	note G_, 2
;Bar 52
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 62
	volume_envelope 9, 3
	octave 2
	note C#, 6
	note C#, 6
	note C#, 4
;Bar 63
	note C#, 6
	note C#, 6
	note C#, 4
;Bar 64
Music_BattleGhetsis_Ch1_Bar64_67:
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 1
	note G_, 1
	octave 2
	note C#, 2
	octave 1
	note G_, 2
;Bar 65
	note G_, 1
	octave 2
	note C#, 1
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
;Bar 66
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 1
	note G_, 1
;Bar 67
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	sound_loop 2, Music_BattleGhetsis_Ch1_Bar64_67
;Bar 72
	octave 2
	volume_envelope 10, 7
	note C#, 16
	rest 16
;Bar 74
	vibrato 18, 5, 2
	sound_call Music_BattleGhetsis_Ch1_vocals1
;Bar 76
	sound_call Music_BattleGhetsis_Ch1_vocals1
;Bar 78
	sound_call Music_BattleGhetsis_Ch1_vocals2
;Bar 80
	sound_call Music_BattleGhetsis_Ch1_vocals2
;Bar 82
	volume_envelope 4, -5
	octave 2
	note C#, 4
	note D#, 4
	note E_, 4
	note F#, 4
;Bar 83
	note E_, 4
	note D#, 4
	note C#, 4
	note C_, 4
;Bar 84
	octave 1
	note A_, 8
	note G_, 8
	rest 6
;Bar 85
	rest 10
;Bar 86
	octave 2
	note C#, 4
	note D#, 4
	note E_, 4
	note F#, 4
;Bar 87
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 4
;Bar 88
	note D#, 8
	note C#, 8
	rest 6
;Bar 89
	rest 10
;Bar 90
	sound_call Music_BattleGhetsis_Ch1_vocals1
;Bar 92
	sound_call Music_BattleGhetsis_Ch1_vocals1
;Bar 94
	sound_call Music_BattleGhetsis_Ch1_vocals2
;Bar 96
	sound_call Music_BattleGhetsis_Ch1_vocals2
	volume_envelope 12, 7
;Bar 98
	octave 3
	note C#, 16
;Bar 99
	note D_, 16
;Bar 100
	note D#, 16
;Bar 101
	note D_, 16
;Bar 102
	note D#, 16
;Bar 103
	note E_, 8
	note F_, 16
;Bar 104
	note F#, 8
;Bar 105
	note G_, 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16;extra
	rest 16;extra
	vibrato 18, 0, 0
	sound_jump Music_BattleGhetsis_Ch1_loop

Music_BattleGhetsis_Ch1_vocals1:
	octave 2
	volume_envelope 4, -6
	note G_, 16
;Bar 75
	volume_envelope 12, 2
	note F#, 16
	sound_ret

Music_BattleGhetsis_Ch1_vocals2:
	octave 3
	volume_envelope 3, -6
	note C#, 16
;Bar 79
	volume_envelope 12, 2
	note C_, 16
	sound_ret

Music_BattleGhetsis_Ch1_Bar44:
	note G_, 2;
	note C#, 2
	note G_, 2
	octave 5
	note C#, 2
	note G_, 2
	note C#, 2
	octave 4
	note G_, 2
	note C#, 2
	sound_ret

Music_BattleGhetsis_Ch1_Bar45:
	note G_, 2;
	note C#, 2
	note G_, 2
	octave 5
	note C#, 2
	note G_, 2
	note C#, 2
	octave 4
	note G_, 2
	note C#, 2
	sound_ret
	
; ============================================================================================================

Music_BattleGhetsis_Ch2:
	duty_cycle $1
	note_type 12, 10, 8
;Bar 1
	octave 2
	note G_, 12
	note C#, 1
	note G_, 1
	note F_, 1
	note C#, 1
;Bar 2
	volume_envelope 10, 7
	note C#, 16
	rest 16
;Bar 4
	volume_envelope 10, 7
	note C#, 8
	note G_, 8
;Bar 5
	note C#, 8
	note G_, 8
;Bar 6
	note C#, 8
	note G_, 8
;Bar 7
	note C#, 4
	note G_, 4
	note C#, 8
;Bar 8
	note G_, 8
	note C#, 8
;Bar 9
	note G_, 8
	note C#, 8
;Bar 10
	note G_, 8
	note C#, 4
	note G_, 4
;Bar 11
	note C#, 8
	note G_, 4
	note G_, 2
	rest 2
Music_BattleGhetsis_Ch2_loop:
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 16
	volume_envelope 8, 5
	octave 4
	duty_cycle $2
	note G_, 16
;Bar 17
	note G_, 16
;Bar 18
	note G_, 16
;Bar 19
	note C#, 16
;Bar 20
	note A#, 16
;Bar 21
	note A#, 16
;Bar 22
	note A#, 16
;Bar 23
	note E_, 16
;Bar 24
	note G_, 16
;Bar 25
	note G_, 16
;Bar 26
	note G_, 16
;Bar 27
	note C#, 16
;Bar 28
	note A#, 16
;Bar 29
	note A#, 16
;Bar 30
	note A#, 16
;Bar 31
	note E_, 16
;Bar 32
	duty_cycle $1
	volume_envelope 9, 3
	octave 3
	sound_call Music_BattleGhetsis_Ch2_Bar44
;Bar 33
	sound_call Music_BattleGhetsis_Ch2_Bar45
;Bar 34
	sound_call Music_BattleGhetsis_Ch2_Bar44
;Bar 35
	note G_, 2
	octave 4
	note C#, 2
	note G_, 2
	note F_, 2
	note C#, 2
	octave 3
	note G_, 2
	note C#, 2
	octave 2
	note G_, 2
	volume_envelope 9, 5
;Bar 36
	duty_cycle $2
	octave 4
	note C#, 16
	note C#, 16
	rest 16
	rest 16
;Bar 40
	note C#, 16
	note C#, 16
;Bar 42
	rest 16
	rest 16
	duty_cycle $1
;Bar 44
	volume_envelope 11, 3
	octave 3
	sound_call Music_BattleGhetsis_Ch2_Bar44
;Bar 45
	sound_call Music_BattleGhetsis_Ch2_Bar45
;Bar 46
	sound_call Music_BattleGhetsis_Ch2_Bar44
;Bar 47
	note C#, 2
	note G_, 2
	note C#, 2
	note G_, 2
	octave 4
	note C#, 2
	octave 3
	note G_, 2
	note C#, 2
	octave 2
	note G_, 2
;Bar 48
	octave 3
	sound_call Music_BattleGhetsis_Ch2_Bar44
;Bar 49
	sound_call Music_BattleGhetsis_Ch2_Bar45
;Bar 50
	sound_call Music_BattleGhetsis_Ch2_Bar44
;Bar 51
	note G_, 2
	octave 4
	note C#, 2
	note G_, 2
	note F_, 2
	note C#, 2
	octave 3
	note G_, 2
	note C#, 2
	rest 2
;Bar 52
	octave 2
	volume_envelope 8, 5
	note C#, 16
;Bar 53
	note C#, 16
;Bar 54
	note C#, 16
;Bar 55
	note C#, 16
;Bar 56
	note C#, 16
;Bar 57
	note C#, 16
;Bar 58
	note G_, 16
;Bar 59
	note G_, 16
;Bar 60
	note G_, 16
;Bar 61
	note G_, 16
;Bar 62
	note G_, 16
;Bar 63
	note G_, 16
;Bar 64
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 74
	vibrato 18, 5, 2
	sound_call Music_BattleGhetsis_Ch2_vocals1
;Bar 76
	sound_call Music_BattleGhetsis_Ch2_vocals1
;Bar 78
	sound_call Music_BattleGhetsis_Ch2_vocals2
;Bar 80
	sound_call Music_BattleGhetsis_Ch2_vocals2
;Bar 82
	volume_envelope 4, -5
	octave 3
	note C#, 8
	note G_, 8
;Bar 83
	octave 4
	note C#, 8
	octave 3
	note G_, 8
;Bar 84
	note A_, 8
	note G_, 8
;Bar 85
	rest 16
;Bar 86
	octave 3
	note C#, 8
	note G_, 8
;Bar 87
	octave 4
	note C#, 8
	octave 3
	note G_, 8
;Bar 88
	note A_, 8
	note C#, 8
;Bar 89
	rest 16
;Bar 90
	octave 3
	sound_call Music_BattleGhetsis_Ch2_vocals1
;Bar 92
	sound_call Music_BattleGhetsis_Ch2_vocals1
;Bar 94
	sound_call Music_BattleGhetsis_Ch2_vocals2
;Bar 96
	sound_call Music_BattleGhetsis_Ch2_vocals2
;Bar 98
	volume_envelope 10, 8
	note B_, 16
	note B_, 16
;Bar 100
	note A#, 16
	note A#, 16
;Bar 102
	note B_, 16
	note B_, 16
;Bar 104
	octave 4
	note C#, 16
	note C#, 16
;Bar 106
	volume_envelope 10, 7
	vibrato 18, 0, 0
	rest 8
	octave 2
	note G_, 8
;Bar 107
	rest 8
	note G_, 8
;Bar 108
	rest 8
	note G_, 8
;Bar 109
	rest 4
	note G_, 4
	rest 8
	sound_jump Music_BattleGhetsis_Ch2_loop

Music_BattleGhetsis_Ch2_vocals1:
	octave 3
	volume_envelope 4, -6
	note C#, 16
;Bar 75
	volume_envelope 13, 2
	note C_, 16
	sound_ret

Music_BattleGhetsis_Ch2_vocals2:
	octave 3
	volume_envelope 4, -6
	note G_, 16
;Bar 79
	volume_envelope 13, 2
	note F#, 16
	sound_ret

Music_BattleGhetsis_Ch2_Bar44:
	note G_, 2;
	note C#, 2
	note G_, 2
	octave 4
	note C#, 2
	note G_, 2
	note C#, 2
	octave 3
	note G_, 2
	note C#, 2
	sound_ret

Music_BattleGhetsis_Ch2_Bar45:
	note G_, 2;
	octave 4
	note C#, 2
	octave 3
	note G_, 2
	octave 4
	note C#, 2
	note G_, 2
	note C#, 2
	octave 3
	note G_, 2
	note C#, 2
	sound_ret

; ============================================================================================================

Music_BattleGhetsis_Ch3:
	note_type 12, 1, 4
;Bar 1
	octave 2
	note G_, 12
	note C#, 1
	note G_, 1
	note F_, 1
	note C#, 1
;Bar 2
	note C#, 4
	volume_envelope 2, 4
	note C#, 8
	volume_envelope 1, 4
	rest 4
	rest 16
;Bar 4
	note C#, 4
	octave 1
	note G_, 4
	octave 2
	note G_, 8
;Bar 5
	note C#, 4
	octave 1
	note G_, 4
	octave 2
	note G_, 8
;Bar 6
	note C#, 4
	octave 1
	note G_, 4
	octave 2
	note G_, 8
;Bar 7
	note C#, 4
	octave 1
	note G_, 4
	octave 2
	note C#, 8
;Bar 8
	note G_, 8
	note C#, 8
;Bar 9
	note G_, 8
	note C#, 8
;Bar 10
	note G_, 8
	note C#, 4
	note G_, 4
;Bar 11
	note C#, 8
	note G_, 4
	note G_, 2
	rest 2
;Bar 12
Music_BattleGhetsis_Ch3_loop:
	sound_call Music_BattleGhetsis_Ch3_Bar12
;Bar 13
	sound_call Music_BattleGhetsis_Ch3_Bar13
;Bar 14
	sound_call Music_BattleGhetsis_Ch3_Bar14
;Bar 15
	sound_call Music_BattleGhetsis_Ch3_Bar15
;Bar 16
	octave 1
	sound_call Music_BattleGhetsis_Ch3_Bar16
;Bar 17
	octave 1
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 18
	sound_call Music_BattleGhetsis_Ch3_Bar18
;Bar 19
	sound_call Music_BattleGhetsis_Ch3_Bar19
;Bar 20
	sound_call Music_BattleGhetsis_Ch3_Bar16
;Bar 21
	octave 1
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 22
	sound_call Music_BattleGhetsis_Ch3_Bar18
;Bar 23
	sound_call Music_BattleGhetsis_Ch3_Bar19
;Bar 24
	sound_call Music_BattleGhetsis_Ch3_Bar16
;Bar 25
	octave 1
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 26
	sound_call Music_BattleGhetsis_Ch3_Bar18
;Bar 27
	sound_call Music_BattleGhetsis_Ch3_Bar19
;Bar 28
	sound_call Music_BattleGhetsis_Ch3_Bar16
;Bar 29
	octave 1
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 30
	sound_call Music_BattleGhetsis_Ch3_Bar18
;Bar 31
	sound_call Music_BattleGhetsis_Ch3_Bar19
;Bar 32
	sound_call Music_BattleGhetsis_Ch3_Bar16
;Bar 33
	octave 1
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 34
	sound_call Music_BattleGhetsis_Ch3_Bar18
;Bar 35
	sound_call Music_BattleGhetsis_Ch3_Bar19
;Bar 36
Music_BattleGhetsis_Ch3_Bar36_38:
	octave 2
	note G_, 8
	octave 3
	note C#, 8
;Bar 37
	octave 2
	note G_, 8
	octave 3
	note C#, 8
;Bar 38
	octave 2
	note G_, 4
	octave 3
	note C#, 4
	note C#, 4
	octave 2
	note G_, 4
	note G_, 16
	sound_loop 2, Music_BattleGhetsis_Ch3_Bar36_38
;Bar 44
	octave 1
	sound_call Music_BattleGhetsis_Ch3_Bar16
;Bar 45
	octave 1
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 46
	sound_call Music_BattleGhetsis_Ch3_Bar18
;Bar 47
	sound_call Music_BattleGhetsis_Ch3_Bar19
;Bar 48
	sound_call Music_BattleGhetsis_Ch3_Bar16
;Bar 49
	octave 1
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 50
	sound_call Music_BattleGhetsis_Ch3_Bar18
;Bar 51
	sound_call Music_BattleGhetsis_Ch3_Bar19
;Bar 52
	sound_call Music_BattleGhetsis_Ch3_Bar16
;Bar 53
	octave 1
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 54
	sound_call Music_BattleGhetsis_Ch3_Bar18
;Bar 55
	note C#, 16
;Bar 56
	note C#, 16
;Bar 57
	note C#, 16
;Bar 58
	octave 1
	note G_, 16
;Bar 59
	note G_, 16
;Bar 60
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 61
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 62
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 63
	sound_call Music_BattleGhetsis_Ch3_Bar17
;Bar 64
Music_BattleGhetsis_Ch3_Bar64_67:
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	note C#, 1
	note C#, 1
;Bar 65
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 1
	note G_, 1
;Bar 66
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	octave 2
	note C#, 1
	note C#, 1
;Bar 67
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 1
	note G_, 1
	sound_loop 2, Music_BattleGhetsis_Ch3_Bar64_67
;Bar 72
	note G_, 4
	volume_envelope 2, 4
	note G_, 4
	volume_envelope 3, 4
	note G_, 4
	volume_envelope 1, 4
	rest 4
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 90
	sound_call Music_BattleGhetsis_Ch3_Bar12
;Bar 91
	sound_call Music_BattleGhetsis_Ch3_Bar13
;Bar 92
	sound_call Music_BattleGhetsis_Ch3_Bar14
;Bar 93
	sound_call Music_BattleGhetsis_Ch3_Bar15
;Bar 94
	sound_call Music_BattleGhetsis_Ch3_Bar12
;Bar 95
	sound_call Music_BattleGhetsis_Ch3_Bar13
;Bar 96
	sound_call Music_BattleGhetsis_Ch3_Bar14
;Bar 97
	sound_call Music_BattleGhetsis_Ch3_Bar15
;Bar 98
	sound_call Music_BattleGhetsis_Ch3_Bar12
;Bar 99
	sound_call Music_BattleGhetsis_Ch3_Bar13
;Bar 100
	sound_call Music_BattleGhetsis_Ch3_Bar14
;Bar 101
	sound_call Music_BattleGhetsis_Ch3_Bar15
;Bar 102
	sound_call Music_BattleGhetsis_Ch3_Bar12
;Bar 103
	sound_call Music_BattleGhetsis_Ch3_Bar13
;Bar 104
	sound_call Music_BattleGhetsis_Ch3_Bar14
;Bar 105
	sound_call Music_BattleGhetsis_Ch3_Bar15
;Bar 106
Music_BattleGhetsis_Ch3_Bar106_108:
	note C#, 4
	octave 1
	note G#, 4
	octave 2
	note G_, 8
	sound_loop 3, Music_BattleGhetsis_Ch3_Bar106_108
;Bar 109
	note C#, 4
	octave 1
	note G#, 4
	octave 2
	note C#, 8
	sound_jump Music_BattleGhetsis_Ch3_loop

Music_BattleGhetsis_Ch3_Bar12:
	note C#, 2;
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 1
	note G_, 1
	sound_ret

Music_BattleGhetsis_Ch3_Bar13:
	note G_, 2;
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 1
	note C#, 1
	sound_ret

Music_BattleGhetsis_Ch3_Bar14:
	octave 1;
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	sound_ret

Music_BattleGhetsis_Ch3_Bar15:
	octave 2;
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 1
	note C#, 1
	sound_ret

Music_BattleGhetsis_Ch3_Bar16:
	note G_, 2;
	octave 2
	note C#, 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	note C#, 1
	note C#, 1
	sound_ret

Music_BattleGhetsis_Ch3_Bar17:
	note G_, 2;
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 1
	note G_, 1
	sound_ret

Music_BattleGhetsis_Ch3_Bar18:
	note G_, 2;
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	octave 2
	note C#, 1
	note C#, 1
	sound_ret

Music_BattleGhetsis_Ch3_Bar19:
	note C#, 2;
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 1
	note G_, 1
	sound_ret
	

; ============================================================================================================

Music_BattleGhetsis_Ch4:
	toggle_noise 0
	drum_speed 12
;Bar 1
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	;Bar 1
	octave 2
	drum_note 2, 12
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
;Bar 2
	drum_note 2, 16
	rest 16
;Bar 4
	drum_note 2, 4
	drum_note 2, 4
	drum_note 2, 8
;Bar 5
	drum_note 2, 4
	drum_note 2, 4
	drum_note 2, 8
;Bar 6
	drum_note 2, 4
	drum_note 2, 4
	drum_note 2, 8
;Bar 7
	drum_note 2, 4
	drum_note 2, 4
	drum_note 2, 8
;Bar 8
	drum_note 2, 8
	drum_note 2, 8
;Bar 9
	drum_note 2, 8
	drum_note 2, 8
;Bar 10
	drum_note 2, 8
	drum_note 2, 4
	drum_note 2, 4
;Bar 11
	drum_note 2, 8
	drum_note 2, 4
	drum_note 2, 4
;Bar 12
Music_BattleGhetsis_Ch4_loop:
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 13
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 14
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 15
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 16
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 17
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 18
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 19
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 20
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 21
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 22
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 23
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 24
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 25
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 26
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 27
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 28
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 29
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 30
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 31
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 32
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 33
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 34
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 35
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 36
	drum_note 3, 6
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 2
;Bar 37
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 38
	drum_note 3, 6
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 2
;Bar 39
	drum_note 5, 6
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 4
;Bar 40
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 41
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 42
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 43
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 44
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 45
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 46
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 47
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 48
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 49
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 50
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 51
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 52
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 53
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 54
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 55
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 56
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 57
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 58
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 59
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 60
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 61
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 62
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 63
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 64
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 65
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 66
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 67
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 68
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 69
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 70
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 71
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 72
	drum_note 9, 16
;Bar 73
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 90
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 91
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 92
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 93
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 94
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 95
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 96
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 97
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 98
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 99
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 100
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 101
	sound_call Music_BattleGhetsis_Ch4_Bar15
;Bar 102
	sound_call Music_BattleGhetsis_Ch4_Bar12
;Bar 103
	sound_call Music_BattleGhetsis_Ch4_Bar13
;Bar 104
	sound_call Music_BattleGhetsis_Ch4_Bar14
;Bar 105
	drum_note 5, 16
;Bar 106
Music_BattleGhetsis_Ch4_end:
	drum_note 2, 4
	drum_note 2, 4
	drum_note 2, 8
	sound_loop 4, Music_BattleGhetsis_Ch4_end
	sound_jump Music_BattleGhetsis_Ch4_loop

Music_BattleGhetsis_Ch4_Bar12:
	drum_note 11, 6;
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 4
	sound_ret

Music_BattleGhetsis_Ch4_Bar13:
	drum_note 11, 2;
	drum_note 11, 2
	drum_note 11, 6
	drum_note 11, 4
	drum_note 11, 2
	sound_ret

Music_BattleGhetsis_Ch4_Bar14:
	drum_note 11, 2;
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 4
	sound_ret

Music_BattleGhetsis_Ch4_Bar15:
	drum_note 11, 6;
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 2
	sound_ret

; ============================================================================================================

