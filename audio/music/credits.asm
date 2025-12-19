;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.0 (16-Nov-2022)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_Credits:
	channel_count 4
	channel 1, Music_BWEnding_Ch1
	channel 2, Music_BWEnding_Ch2
	channel 3, Music_BWEnding_Ch3
	channel 4, Music_BWEnding_Ch4

Music_BWEnding_Ch1:
	volume 7, 7
	duty_cycle $3
	note_type 8, 9, 8
	stereo_panning FALSE, TRUE
	tempo 120
;Bar 1
	rest 12
	octave 3
	note F_, 12
;Bar 2
	note A#, 12
	note G#, 12
;Bar 3
	note F#, 12
	note_type 16, 9, 8
	note F_, 9
	note_type 8, 9, 8
;Bar 4
	note A#, 6
	note G#, 12
;Bar 5
	octave 4
	note C_, 12
	octave 3
	note A#, 12
;Bar 6
	octave 4
	note C#, 12
	note C_, 12
;Bar 7
	note D#, 12
	note C#, 12
;Bar 8
	note F_, 12
	note D#, 12
;Bar 9
	volume_envelope 10, 7
	note C#, 2
	note C_, 2
	note C#, 2
	octave 3
	note A#, 2
	octave 4
	note F_, 2
	note A#, 2
	note C#, 1
	rest 5
	note C#, 1
	rest 5
;Bar 10
	note C#, 1
	rest 5
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note C_, 1
	rest 5
	note C_, 1
	rest 5
;Bar 11
	note C_, 1
	rest 5
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note A#, 1
	rest 5
	note A#, 1
	rest 5
;Bar 12
	note A#, 1
	rest 5
	note A#, 1
	rest 5
	note G#, 1
	rest 5
	octave 4
	note C_, 2
	note C#, 2
	note D#, 2
;Bar 13
	note F_, 2
	note D#, 2
	note C#, 2
	note C_, 2
	note C#, 2
	octave 3
	note G#, 2
	note A#, 1
	rest 5
	note A#, 1
	rest 5
;Bar 14
	note A#, 1
	rest 5
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note G#, 1
	rest 5
	note G#, 1
	rest 5
;Bar 15
	note G#, 1
	rest 5
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note A#, 1
	rest 5
	note A#, 1
	rest 5
;Bar 16
	note A#, 1
	rest 5
	note A#, 1
	rest 5
	octave 4
	note C_, 1
	rest 5
	note C_, 2
	note C#, 2
	note D#, 2
;Bar 17
	note F_, 2
	note D#, 2
	note C#, 2
	note C_, 2
	note C#, 2
	rest 2
	note D#, 6
	note D#, 2
	note F_, 2
	note D#, 2
;Bar 18
	note C#, 6
	octave 3
	note A#, 5
	rest 1
	note B_, 5
	rest 1
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
;Bar 19
	note A#, 6
	note F#, 6
	note G#, 5
	rest 1
	note G#, 2
	note A#, 2
	note G#, 2
;Bar 20
	note F#, 6
	note A#, 5
	rest 1
	note A_, 6
	note F_, 5
	rest 1
;Bar 21
	note A#, 5
	rest 1
	octave 4
	note D_, 5
	rest 1
	note E_, 5
	rest 1
	note E_, 2
	note D_, 2
	note C_, 2
;Bar 22
	octave 3
	note B_, 5
	rest 1
	octave 4
	note D_, 6
	note C_, 5
	rest 1
	note C_, 2
	note D_, 2
	note C_, 2
;Bar 23
	octave 3
	note B_, 6
	note G_, 6
	note A_, 5
	rest 1
	note A_, 2
	note B_, 2
	note A_, 2
;Bar 24
	note G_, 6
	note B_, 6
	note A#, 6
	octave 4
	note C#, 6
;Bar 25
	octave 3
	note B_, 6
	octave 4
	note D#, 6
	note E_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note E_, 2
	octave 3
	note G_, 2
;Bar 26
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note E_, 2
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note F#, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note F#, 2
	octave 3
	note A_, 2
;Bar 27
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note F#, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note G_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
;Bar 28
	octave 4
	note G_, 2
	octave 3
	note B_, 2
	octave 4
	note A_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note G_, 2
	octave 3
	note B_, 2
	octave 4
	note F#, 2
	octave 3
	note B_, 2
	octave 4
	note G_, 2
	octave 3
	note B_, 2
	octave 4
	note F#, 2
;Bar 29
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	stereo_panning TRUE, FALSE
	note_type 12, 9, 8
	note B_, 16
;Bar 30
	octave 4
	note C#, 8
;Bar 31
	octave 3
	note A_, 8
	note B_, 16
;Bar 32
	note A_, 8
;Bar 33
	note F#, 8
	note G_, 16
;Bar 34
	note A_, 8
;Bar 35
	octave 4
	note C#, 8
	octave 3
	note B_, 16
;Bar 36
	note A_, 8
;Bar 37
	note F#, 8
	stereo_panning FALSE, TRUE
	note E_, 8
;Bar 38
	note F#, 8
	note G_, 8
;Bar 39
	note D_, 4
	note F#, 4
	note E_, 8
;Bar 40
	note F#, 8
	note G_, 8
;Bar 41
	note D_, 4
	note G_, 4
	note G_, 8
;Bar 42
	note E_, 8
	note F#, 8
;Bar 43
	note A_, 4
	note F#, 4
	note G_, 8
;Bar 44
	note C_, 8
	note D_, 8
;Bar 45
	note D#, 8
	note E_, 8
;Bar 46
	note F#, 8
	note G_, 8
;Bar 47
	note D_, 4
	note F#, 4
	note E_, 8
;Bar 48
	note F#, 8
	note G_, 8
;Bar 49
	note D_, 4
	note G_, 4
	note G_, 8
;Bar 50
	note E_, 8
	note F#, 8
;Bar 51
	note A_, 4
	note F#, 4
	note G_, 8
;Bar 52
	note C_, 8
	note D_, 8
;Bar 53
	octave 2
	note A_, 8
	note_type 8, 10, 7
	octave 3
	note B_, 1
	rest 3
	note B_, 1
	rest 1
	note B_, 1
	rest 3
	note B_, 1
	rest 1
;Bar 54
	note B_, 1
	rest 3
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 16
	rest 7
;Bar 55
	note_type 12, 9, 8
	note E_, 16
;Bar 56
	note G_, 8
;Bar 57
	note A_, 8
	note B_, 16
;Bar 58
	note D_, 8
;Bar 59
	note F#, 8
	note G_, 16
;Bar 60
	note E_, 8
;Bar 61
	note G_, 8
	note A_, 16
;Bar 62
	note F#, 16
;Bar 63
	note A_, 16
;Bar 64
	note A_, 16
;Bar 65
	volume_envelope 9, 8
	note G_, 16
	volume_envelope 9, 7
	note G_, 16
;Bar 67
	volume_envelope 9, 8
	note A_, 16
;Bar 68
	note E_, 8
;Bar 69
	note G_, 8
	note F#, 16
;Bar 70
	note E_, 8
;Bar 71
	note D_, 8
	duty_cycle $0
	note_type 8, 14, 7
	sound_call Music_BWEnding_Ch1_2_Trombone
	volume_envelope 12, 7
	octave 2
	note E_, 2
	rest 2
	note E_, 1
	rest 1
	note B_, 12
;Bar 80
	note G_, 2
	note A_, 2
	octave 3
	note D_, 2
	note C#, 12
;Bar 81
	octave 2
	note B_, 6
	note A_, 6
	note B_, 2
	rest 2
	note G_, 1
	rest 1
	note A_, 12
;Bar 82
	note G_, 2
	note F#, 2
	note D_, 2
	note E_, 12
;Bar 83
	note D_, 6
	note F#, 6
	note E_, 2
	rest 2
	note E_, 1
	rest 1
	note B_, 12
;Bar 84
	note E_, 2
	note B_, 2
	octave 3
	note D_, 2
	note C#, 11
	rest 1
;Bar 85
	octave 2
	note B_, 6
	note A_, 6
	note B_, 2
	rest 2
	note G_, 1
	rest 1
	note A_, 12
;Bar 86
	note G_, 2
	octave 3
	note D_, 2
	note F#, 2
	note E_, 12
;Bar 87
	note D_, 6
	note F#, 6
	rest 6
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	note E_, 2
;Bar 88
	note A_, 2
	note F#, 2
	note D_, 2
	note E_, 2
	note E_, 1
	rest 9
	note D_, 1
	rest 1
	note_type 16, 12, 8
	note D_, 15
	volume_envelope 12, 7
	note D_, 15
	rest 1
	sound_ret

Music_BWEnding_Ch1_2_Trombone:
	octave 2
	note E_, 2
	rest 2
	note E_, 1
	rest 1
	note B_, 12
;Bar 30
	note G_, 2
	note A_, 2
	octave 3
	note D_, 2
	note C#, 12
;Bar 31
	octave 2
	note B_, 6
	note A_, 6
	note G_, 2
	rest 2
	note D_, 1
	rest 1
	note E_, 12
;Bar 32
	note D_, 2
	note F#, 2
	note D_, 2
	note E_, 12
;Bar 33
	note D_, 12
	note E_, 2
	rest 2
	note E_, 1
	rest 1
	note B_, 12
;Bar 34
	note E_, 2
	note B_, 2
	octave 3
	note D_, 2
	note C#, 12
;Bar 35
	octave 2
	note B_, 6
	note A_, 6
	note B_, 2
	rest 2
	note G_, 1
	rest 1
	note A_, 12
;Bar 36
	note G_, 2
	octave 3
	note D_, 2
	note F#, 2
	note E_, 12
;Bar 37
	note D_, 12
	sound_ret

; ============================================================================================================

Music_BWEnding_Ch2:
	duty_cycle $1
	note_type 8, 12, 7
	stereo_panning TRUE, FALSE
;Bar 1
	rest 12
	transpose 1, 0
	sound_call Music_BWEnding_Ch2_Intro
	transpose 0, 0
	sound_call Music_BWEnding_Ch2_Intro
	octave 3
	note A#, 12
;Bar 10
	note F_, 6
	note A#, 6
	note G#, 12
;Bar 11
	note D#, 6
	note F#, 2
	note F_, 2
	note D#, 2
	note F_, 12
;Bar 12
	note C#, 6
	note D#, 2
	note C#, 2
	note C_, 2
	octave 2
	note G#, 16
	rest 8
;Bar 13
	octave 3
	note A#, 12
;Bar 14
	note F_, 6
	note A#, 6
	note G#, 12
;Bar 15
	note F_, 6
	octave 4
	note C#, 2
	note C_, 2
	octave 3
	note G#, 2
	note A#, 12
;Bar 16
	octave 4
	note C#, 6
	note C_, 2
	note C#, 2
	note D#, 2
	note F_, 8
	note F#, 2
	note F_, 2
;Bar 17
	note D#, 8
	note D#, 2
	note F_, 2
	note F#, 8
	note F_, 2
	note D#, 2
;Bar 18
	note F_, 6
	note C#, 6
	note D#, 8
	note F_, 2
	note F#, 2
;Bar 19
	note C#, 6
	octave 3
	note F#, 6
	note B_, 8
	octave 4
	note C#, 2
	note D#, 2
;Bar 20
	octave 3
	note A#, 6
	note F#, 6
	note_type 4, 10, 1
Music_BWEnding_Ch2_Bar20:
	note F_, 1
	note F#, 1
	sound_loop 12, Music_BWEnding_Ch2_Bar20
;Bar 21
	note_type 8, 12, 7
	note A#, 6
	octave 4
	note D_, 6
	note G_, 8
	note F#, 2
	note E_, 2
;Bar 22
	note F#, 6
	note D_, 6
	note E_, 8
	note F#, 2
	note G_, 2
;Bar 23
	note D_, 6
	octave 3
	note G_, 6
	octave 4
	note C_, 8
	note D_, 2
	note E_, 2
;Bar 24
	octave 3
	note B_, 6
	octave 4
	note E_, 6
	note G_, 12
;Bar 25
	note F#, 12
	note F#, 12
;Bar 26
	note_type 16, 12, 8
	note E_, 6
	note E_, 9
	note_type 8, 12, 7
;Bar 27
	note F#, 2
	note E_, 2
	note D_, 2
	note_type 16, 12, 8
	note E_, 15
	volume_envelope 12, 7
	note E_, 9
;Bar 28
;Bar 29
	note_type 8, 14, 7
	duty_cycle $0
	stereo_panning FALSE, TRUE
	sound_call Music_BWEnding_Ch1_2_Trombone
	duty_cycle $1
	volume_envelope 12, 7
	stereo_panning TRUE, FALSE
	note E_, 6
	note E_, 2
	note D_, 2
	note E_, 2
;Bar 38
	note F#, 6
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 6
	note G_, 2
	note F#, 2
	note E_, 2
;Bar 39
	note D_, 6
	octave 2
	note B_, 6
	octave 3
	note E_, 6
	note E_, 2
	note D_, 2
	note E_, 2
;Bar 40
	note F#, 6
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 6
	note F#, 2
	note G_, 2
	note A_, 2
;Bar 41
	note B_, 12
	note B_, 8
	note A_, 2
	note B_, 2
;Bar 42
	note E_, 12
	note B_, 8
	note A_, 2
	note B_, 2
;Bar 43
	note F#, 6
	note D_, 6
	note E_, 8
	note F#, 2
	note G_, 2
;Bar 44
	note D_, 6
	note A_, 6
	note G_, 12
;Bar 45
	note F#, 6
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note_type 4, 12, 7
	note C_, 1
	note D_, 1
	note_type 8, 12, 7
	note E_, 6
	note E_, 2
	note D_, 2
	note E_, 2
;Bar 46
	note F#, 6
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 6
	note G_, 2
	note F#, 2
	note E_, 2
;Bar 47
	note D_, 6
	octave 3
	note B_, 6
	octave 4
	note E_, 6
	note E_, 2
	note D_, 2
	note E_, 2
;Bar 48
	note F#, 6
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 6
	note F#, 2
	note G_, 2
	note A_, 2
;Bar 49
	note B_, 12
	note B_, 8
	note A_, 2
	note B_, 2
;Bar 50
	note E_, 12
	note B_, 8
	note A_, 2
	note B_, 2
;Bar 51
	note F#, 6
	note D_, 6
	note E_, 8
	note F#, 2
	note G_, 2
;Bar 52
	note D_, 6
	note A_, 6
	note F#, 6
	note B_, 6
;Bar 53
	note F#, 6
	note D_, 6
	note_type 16, 12, 7
	note E_, 9
	note_type 8, 12, 7
;Bar 54
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	rest 4
	octave 3
	note B_, 6
;Bar 55
	octave 4
	note E_, 6
	note B_, 6
	note B_, 12
;Bar 56
	note A_, 12
	note G_, 12
;Bar 57
	note A_, 12
	note_type 16, 12, 7
	note B_, 12
	rest 3
	note_type 8, 12, 7
;Bar 58
	octave 3
	note B_, 6
;Bar 59
	octave 4
	note E_, 6
	note B_, 6
	note B_, 12
;Bar 60
	note A_, 12
	note G_, 12
;Bar 61
	octave 5
	note D_, 8
	note C#, 2
	note C_, 2
	octave 4
	note_type 16, 12, 7
	note B_, 12
	rest 3
	note_type 8, 12, 7
;Bar 62
	note F#, 6
;Bar 63
	note B_, 6
	octave 5
	note C#, 6
	note D_, 12
;Bar 64
	note E_, 12
	note C#, 12
;Bar 65
	octave 4
	note A_, 6
	note B_, 6
	octave 5
	note_type 16, 12, 7
	note C_, 10
	note_type 8, 12, 7
;Bar 66
	octave 4
	note B_, 2
	note A_, 2
	note G_, 12
;Bar 67
	note D_, 12
	note_type 16, 12, 7
	note A_, 12
	note_type 8, 12, 7
;Bar 68
	note E_, 12
;Bar 69
	note B_, 12
	note_type 16, 12, 7
	note F#, 12
	note_type 8, 12, 7
;Bar 70
	note E_, 12
;Bar 71
	note D_, 12
	note_type 16, 12, 7
	note E_, 12
	note_type 8, 9, 7
;Bar 72
	octave 3
	note A_, 1
	rest 5
	note A_, 1
	rest 5
;Bar 73
Music_BWEnding_Ch2_Bar73_74:
	note A_, 1
	rest 5
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	rest 5
	note B_, 1
	rest 5
;Bar 74
	note B_, 1
	rest 5
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note A_, 1
	rest 5
	note A_, 1
	rest 5
	sound_loop 3, Music_BWEnding_Ch2_Bar73_74
;Bar 79
	note A_, 1
	rest 5
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	sound_call Music_BWEnding_Ch2_Type1
;Bar 80
	sound_call Music_BWEnding_Ch2_Type1
	transpose 1, 0
	sound_call Music_BWEnding_Ch2_Type2
	transpose 0, 0
;Bar 81
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	note G_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F#, 2
	sound_call Music_BWEnding_Ch2_Type1
;Bar 82
	sound_call Music_BWEnding_Ch2_Type1
	transpose 1, 0
	sound_call Music_BWEnding_Ch2_Type2
	transpose 0, 0
;Bar 83
	octave 4
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	sound_call Music_BWEnding_Ch2_Type1
;Bar 84
	sound_call Music_BWEnding_Ch2_Type1
	sound_call Music_BWEnding_Ch2_Type2
;Bar 85
	octave 5
	note D_, 2
	octave 4
	note B_, 2
	note G_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note F#, 2
	sound_call Music_BWEnding_Ch2_Type1
;Bar 86
	sound_call Music_BWEnding_Ch2_Type1
	sound_call Music_BWEnding_Ch2_Type2
;Bar 87
	octave 5
	note D_, 2
	note C#, 2
	note D_, 2
	note D_, 2
	note F#, 2
	note A_, 2
	rest 6
	note E_, 2
	octave 4
	note B_, 2
	note E_, 2
;Bar 88
	note A_, 2
	note F#, 2
	note D_, 2
	note E_, 2
	note E_, 2
	rest 8
	octave 3
	note F#, 1
	rest 1
	note_type 16, 12, 8
	note F#, 15
	volume_envelope 12, 7
	note F#, 15
	rest 1
	sound_ret

Music_BWEnding_Ch2_Type1:
	note E_, 2;
	note F#, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	sound_ret

Music_BWEnding_Ch2_Type2:
	octave 4
	note E_, 2;
	note G_, 2
	note B_, 2
	octave 5
	note E_, 2
	octave 4
	note B_, 2
	note G_, 2
	sound_ret

Music_BWEnding_Ch2_Intro:
	octave 4
	note A#, 2
	rest 4
	note A#, 2
	rest 4
;Bar 6
	note A#, 2
	octave 5
	note C_, 2
	note C#, 2
	octave 4
	note A#, 2
	rest 4
	note A#, 2
	rest 4
	note A#, 2
	octave 5
	note C_, 2
	note C#, 2
;Bar 7
	note D#, 2
	note C#, 2
	note C_, 2
	note C#, 2
	note C_, 2
	octave 4
	note G#, 2
	note A#, 2
	rest 4
	note A#, 2
	rest 4
;Bar 8
	note A#, 2
	octave 5
	note C_, 2
	note C#, 2
	octave 4
	note A#, 2
	rest 4
	note A#, 2
	rest 4
	note A#, 2
	octave 5
	note C#, 2
	note F_, 2
;Bar 9
	note A#, 2
	note F#, 2
	note C_, 2
	note C#, 2
	note D#, 2
	note C#, 2
	sound_ret

; ============================================================================================================

Music_BWEnding_Ch3:
	note_type 8, 1, 6
;Bar 1
	rest 12
	octave 1
	note A#, 4
	note G#, 1
	rest 1
	octave 2
	note F_, 4
	note D#, 1
	rest 1
;Bar 2
	octave 1
	sound_call Music_BWEnding_Ch3_Bar2
;Bar 3
	sound_call Music_BWEnding_Ch3_Bar3
;Bar 4
	sound_call Music_BWEnding_Ch3_Bar2
;Bar 5
	sound_call Music_BWEnding_Ch3_Bar5
;Bar 6
	sound_call Music_BWEnding_Ch3_Bar2
;Bar 7
	sound_call Music_BWEnding_Ch3_Bar3
;Bar 8
	octave 1
	sound_call Music_BWEnding_Ch3_Bar2
;Bar 9
	note C#, 2
	note C_, 2
	note C#, 2
	note F_, 6
	octave 1
	note A#, 4
	note G#, 1
	rest 1
	octave 2
	note F_, 4
	note D#, 1
	rest 1
;Bar 10
	octave 1
	sound_call Music_BWEnding_Ch3_Bar2
;Bar 11
	sound_call Music_BWEnding_Ch3_Bar3
;Bar 12
	sound_call Music_BWEnding_Ch3_Bar2
;Bar 13
	sound_call Music_BWEnding_Ch3_Bar5
;Bar 14
	sound_call Music_BWEnding_Ch3_Bar2
;Bar 15
	sound_call Music_BWEnding_Ch3_Bar3
;Bar 16
	octave 1
	sound_call Music_BWEnding_Ch3_Bar2
;Bar 17
	note C#, 2
	note C_, 2
	note C#, 2
	note F_, 6
	note D#, 4
	note C#, 1
	rest 1
	note F#, 4
	note D#, 1
	rest 1
;Bar 18
	octave 1
	note A#, 4
	note G#, 1
	rest 1
	octave 2
	note F_, 4
	note D#, 1
	rest 1
	octave 1
	note B_, 4
	note F#, 1
	rest 1
	note B_, 2
	note A#, 2
	note G#, 2
;Bar 19
	note F#, 6
	octave 2
	note C#, 6
	octave 1
	note G#, 4
	note F#, 1
	rest 1
	octave 2
	note D#, 4
	octave 1
	note B_, 1
	rest 1
;Bar 20
	octave 2
	note F#, 4
	note C#, 1
	rest 1
	octave 1
	note A#, 4
	octave 2
	note C#, 1
	rest 1
	note F_, 4
	note C_, 1
	rest 1
	note F_, 2
	note C_, 2
	note F_, 2
;Bar 21
	octave 1
	note A#, 6
	octave 2
	note D_, 6
	note E_, 4
	note D_, 1
	rest 1
	note G_, 4
	note E_, 1
	rest 1
;Bar 22
	octave 1
	note B_, 4
	note A_, 1
	rest 1
	octave 2
	note F#, 4
	note E_, 1
	rest 1
	note C_, 4
	octave 1
	note G_, 1
	rest 1
	octave 2
	note C_, 2
	octave 1
	note B_, 2
	note A_, 2
;Bar 23
	note G_, 6
	octave 2
	note D_, 6
	octave 1
	note A_, 4
	note G_, 1
	rest 1
	octave 2
	note E_, 4
	note D_, 1
	rest 1
;Bar 24
	note G_, 4
	note F#, 1
	rest 1
	octave 1
	note B_, 4
	octave 2
	note D_, 1
	rest 1
	note F#, 4
	note C#, 1
	rest 1
	note F#, 2
	note C#, 2
	note F#, 2
;Bar 25
	octave 1
	note B_, 6
	octave 2
	note D#, 6
	note C_, 4
	octave 1
	note G_, 1
	rest 1
	octave 2
	note C_, 2
	octave 1
	note G_, 2
	octave 2
	note C_, 2
;Bar 26
	note C_, 4
	note E_, 1
	rest 1
	octave 1
	note G_, 4
	octave 2
	note C_, 1
	rest 1
	note D_, 4
	octave 1
	note A_, 1
	rest 1
	octave 2
	note D_, 2
	octave 1
	note A_, 2
	octave 2
	note D_, 2
;Bar 27
	note D_, 4
	note F#, 1
	rest 1
	octave 1
	note A_, 4
	octave 2
	note D_, 1
	rest 1
	note E_, 4
	octave 1
	note B_, 1
	rest 1
	note E_, 4
	note B_, 1
	rest 1
;Bar 28
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	rest 1
	note E_, 4
	note B_, 1
	rest 1
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	rest 1
	note E_, 4
	note B_, 1
	rest 1
;Bar 29
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	rest 1
	note E_, 4
	note B_, 1
	rest 1
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	rest 1
	note E_, 2
	note B_, 2
	octave 2
	note E_, 2
;Bar 30
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 31
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 32
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 33
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 34
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 35
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 36
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 37
	octave 1
	note E_, 6
	note B_, 6
	octave 2
	note C_, 6
	rest 6
;Bar 38
	note D_, 6
	rest 6
	note E_, 6
	rest 6
;Bar 39
	octave 1
	note B_, 6
	rest 6
	octave 2
	note C_, 6
	rest 6
;Bar 40
	note D_, 6
	rest 6
	note E_, 6
	rest 6
;Bar 41
	note G_, 6
	rest 6
	octave 1
	note A_, 8
	rest 16
;Bar 42
	note B_, 8
	rest 16
;Bar 43
	octave 2
	note C_, 8
	rest 16
;Bar 44
	note D_, 6
	rest 6
;Bar 45
	octave 1
	note B_, 6
	rest 6
	octave 2
	note C_, 6
	rest 6
;Bar 46
	note D_, 6
	rest 6
	note E_, 6
	rest 6
;Bar 47
	octave 1
	note B_, 6
	rest 6
	octave 2
	note C_, 6
	rest 6
;Bar 48
	note D_, 6
	rest 6
	note E_, 12
;Bar 49
	note G_, 5
	rest 7
	octave 1
	note A_, 8
	rest 16
;Bar 50
	note B_, 8
	rest 16
;Bar 51
	octave 2
	note C_, 7
	rest 16
	rest 1
;Bar 52
	note D_, 5
	rest 7
;Bar 53
	octave 1
	note B_, 8
	rest 4
	octave 2
	note E_, 1
	rest 5
	note E_, 1
	rest 5
;Bar 54
	note E_, 1
	rest 5
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 1
	rest 16
	rest 7
;Bar 55
	note_type 12, 1, 6
	octave 2
	note C_, 16
	note C_, 16
;Bar 57
	note G_, 16
	note G_, 16
;Bar 59
	note C_, 16
	note C_, 16
;Bar 61
	note G_, 16
	note G_, 16
;Bar 63
	note B_, 16
;Bar 64
	note F#, 16
;Bar 65
	note A_, 16
;Bar 66
	note E_, 12
;Bar 67
	note D_, 4
	note C_, 16
	note C_, 16
;Bar 69
	note D_, 16
	note D_, 8
	note_type 8, 1, 6
	octave 1
;Bar 71
	note A_, 2
	note B_, 2
	note G_, 2
	note A_, 2
	note F#, 2
	note G_, 2
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	rest 1
	note E_, 2
	note B_, 2
	octave 2
	note E_, 2
;Bar 72
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 73
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 74
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 75
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 76
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 77
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 78
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 79
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 80
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 81
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 82
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 83
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 84
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 85
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 86
	sound_call Music_BWEnding_Ch3_Bar30
;Bar 87
	octave 1
	note E_, 6
	note B_, 6
	rest 16
	rest 14
;Bar 88
	note E_, 1
	rest 1
	note_type 16, 1, 6
	note E_, 15
	volume_envelope 2, 6
	note E_, 7
	volume_envelope 3, 6
	note E_, 4
	rest 5
	sound_ret

Music_BWEnding_Ch3_Bar2:
	note A#, 4;
	note G#, 1
	rest 1
	octave 2
	note F_, 4
	note D#, 1
	rest 1
	octave 1
	note A#, 4
	note G#, 1
	rest 1
	octave 2
	note F_, 4
	note D#, 2
	sound_ret

Music_BWEnding_Ch3_Bar3:
	note C#, 2;
	note C_, 2
	note C#, 2
	octave 1
	note B_, 6
	note A#, 4
	note G#, 1
	rest 1
	octave 2
	note F_, 4
	note D#, 1
	rest 1
	sound_ret

Music_BWEnding_Ch3_Bar5:
	note C#, 2;
	note C_, 2
	note C#, 2
	octave 1
	note B_, 2
	octave 2
	note C_, 2
	note C#, 2
	octave 1
	note A#, 4
	note G#, 2
	octave 2
	note F_, 4
	note D#, 2
	sound_ret

Music_BWEnding_Ch3_Bar30:
	octave 1;
	note E_, 6
	note B_, 6
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	rest 1
	note E_, 2
	note B_, 2
	octave 2
	note E_, 2
	sound_ret

; ============================================================================================================

Music_BWEnding_Ch4:
	toggle_noise 3
	drum_speed 8
;Bar 1
    toggle_noise 1
	drum_note 4, 2
    toggle_noise 3
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 7, 4
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
;Bar 2
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 3
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 4
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 5
	sound_call Music_BWEnding_Ch4_Bar5
;Bar 6
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 7
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 8
	sound_call Music_BWEnding_Ch4_Bar8
;Bar 9
	sound_call Music_BWEnding_Ch4_Bar9
;Bar 10
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 11
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 12
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 13
	sound_call Music_BWEnding_Ch4_Bar5
;Bar 14
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 15
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 16
	sound_call Music_BWEnding_Ch4_Bar8
;Bar 17
	sound_call Music_BWEnding_Ch4_Bar9
;Bar 18
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 19
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 20
	sound_call Music_BWEnding_Ch4_Bar8
;Bar 21
	toggle_noise 1
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 7, 4
    toggle_noise 3
	drum_note 11, 2
	toggle_noise 1
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
;Bar 22
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 23
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 24
	sound_call Music_BWEnding_Ch4_Bar8
;Bar 25
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 7, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
;Bar 26
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 27
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 28
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 29
	sound_call Music_BWEnding_Ch4_Bar29
;Bar 30
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 31
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 32
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 33
	sound_call Music_BWEnding_Ch4_Bar29
;Bar 34
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 35
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 36
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 37
	drum_note 4, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	toggle_noise 1
	drum_note 4, 2
	drum_note 4, 2
    toggle_noise 3
	drum_note 12, 12
;Bar 38
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
	rest 4
;Bar 45
	sound_call Music_BWEnding_Ch4_Type1
;Bar 46
	sound_call Music_BWEnding_Ch4_Bar46
;Bar 47
	sound_call Music_BWEnding_Ch4_Bar46
;Bar 48
	sound_call Music_BWEnding_Ch4_Bar46
;Bar 49
	sound_call Music_BWEnding_Ch4_Type2
	sound_call Music_BWEnding_Ch4_Type1
;Bar 50
	sound_call Music_BWEnding_Ch4_Bar46
;Bar 51
	sound_call Music_BWEnding_Ch4_Bar46
;Bar 52
	sound_call Music_BWEnding_Ch4_Bar46
;Bar 53
	sound_call Music_BWEnding_Ch4_Type2
	drum_note 12, 16
	rest 2
;Bar 54
	drum_note 12, 6
	drum_note 12, 3
	rest 16
	rest 5
;Bar 55
	drum_note 12, 12
;Bar 56
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 4
;Bar 59
	drum_note 12, 12
;Bar 60
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 4
;Bar 63
	drum_note 12, 12
;Bar 64
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 4
;Bar 67
	drum_note 12, 12
;Bar 68
	rest 16
	rest 16
	rest 4
;Bar 69
	drum_note 12, 16
	rest 8
;Bar 70
	toggle_noise 1
	drum_note 7, 13
;Bar 71
	drum_note 4, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
;Bar 72
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 73
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 74
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 75
	sound_call Music_BWEnding_Ch4_Bar29
;Bar 76
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 77
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 78
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 79
	drum_note 4, 2
	toggle_noise 1
	drum_note 7, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
;Bar 80
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 81
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 82
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 83
	sound_call Music_BWEnding_Ch4_Bar29
;Bar 84
	sound_call Music_BWEnding_Ch4_Bar2
;Bar 85
	sound_call Music_BWEnding_Ch4_Bar3
;Bar 86
	drum_note 4, 4
	drum_note 4, 2
	toggle_noise 1
	drum_note 2, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 2
	drum_note 4, 2
    toggle_noise 3
;Bar 87
	toggle_noise 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 8
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 2
    toggle_noise 3
	drum_note 11, 2
;Bar 88
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
    toggle_noise 3
	drum_note 2, 5
	toggle_noise 1
	drum_note 4, 1
	drum_note 4, 1
    toggle_noise 3
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	toggle_noise 1
	drum_note 4, 2
	toggle_noise 1
	drum_note 7, 14
	sound_ret

Music_BWEnding_Ch4_Bar2:
	drum_note 4, 4;
	drum_note 4, 2
	toggle_noise 1
	drum_note 2, 4
    toggle_noise 3
	drum_note 4, 2
	drum_note 4, 4
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
	sound_ret

Music_BWEnding_Ch4_Bar3:
	drum_note 4, 2;
	toggle_noise 1
	drum_note 4, 2
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 2, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
	sound_ret

Music_BWEnding_Ch4_Bar5:
	drum_note 4, 2;
	toggle_noise 1
	drum_note 4, 2
	drum_note 4, 2
    toggle_noise 3
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	toggle_noise 1
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
	sound_ret

Music_BWEnding_Ch4_Bar8:
	drum_note 4, 4;
	drum_note 4, 2
	toggle_noise 1
	drum_note 2, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
	sound_ret

Music_BWEnding_Ch4_Bar9:
	drum_note 4, 2;
	toggle_noise 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 7, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
	sound_ret

Music_BWEnding_Ch4_Bar29:
	drum_note 4, 2;
	toggle_noise 1
	drum_note 4, 2
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 2, 4
	drum_note 4, 2
	drum_note 7, 4
    toggle_noise 3
	drum_note 4, 2
	toggle_noise 1
	drum_note 4, 4
    toggle_noise 3
	drum_note 4, 2
	sound_ret

Music_BWEnding_Ch4_Bar46:
	drum_note 1, 2;
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 2
	sound_ret

Music_BWEnding_Ch4_Type1:
	drum_note 12, 4;
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 2
	sound_ret

Music_BWEnding_Ch4_Type2:
	drum_note 1, 2;
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	sound_ret

; ============================================================================================================

