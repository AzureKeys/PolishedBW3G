;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.0 (16-Nov-2022)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_NuvemaTown:
	channel_count 3
	channel 1, Music_NuvemaTown_Ch1
	channel 2, Music_NuvemaTown_Ch2
	channel 3, Music_NuvemaTown_Ch3

Music_NuvemaTown_Ch1:
	volume 7, 7
	stereo_panning FALSE, TRUE
	duty_cycle $3
	pitch_offset $0001
	note_type 6, 9, 7
	tempo 219
;Bar 1
	sound_call Music_NuvemaTown_Ch1_Bar1
;Bar 2
	sound_call Music_NuvemaTown_Ch1_Bar2
;Bar 3
	sound_call Music_NuvemaTown_Ch1_Bar3
;Bar 4
	sound_call Music_NuvemaTown_Ch1_Bar4
;Bar 5
Music_NuvemaTown_Ch1_loop:
	sound_call Music_NuvemaTown_Ch1_Bar1
;Bar 6
	sound_call Music_NuvemaTown_Ch1_Bar2
;Bar 7
	sound_call Music_NuvemaTown_Ch1_Bar3
;Bar 8
	sound_call Music_NuvemaTown_Ch1_Bar4
;Bar 9
	note_type 4, 9, 7
	note D_, 1
	note A_, 1
	octave 3
	note D_, 1
	note_type 6, 9, 7
	note F#, 2
	octave 2
	note A_, 4
	octave 3
	note D_, 4
	note F#, 4
	octave 2
	note A_, 4
	octave 3
	note F#, 4
;Bar 10
	octave 2
	note_type 3, 7, 7
	note G_, 1
	octave 3
	note C#, 1
	note_type 6, 9, 7
	note E_, 3
	octave 2
	note G_, 4
	note B_, 5
	note_type 3, 7, 7
	note A#, 1
	octave 3
	volume_envelope 9, 7
	note C#, 5
	note_type 6, 9, 7
	octave 2
	note F#, 4
	octave 3
	note E_, 4
;Bar 11
	octave 2
	note_type 3, 7, 7
	note F#, 1
	note B_, 1
	note_type 6, 9, 7
	octave 3
	note D_, 3
	octave 2
	note F#, 4
	note A_, 4
	note B_, 4
	octave 3
	note C#, 4
	note D_, 4
;Bar 12
	note E_, 4
	octave 2
	note A_, 4
	octave 3
	note D_, 4
	note F#, 12
;Bar 13
	octave 2
	note_type 4, 7, 7
	note G_, 1
	note B_, 1
	octave 3
	note D_, 1
	note_type 6, 9, 7
	note G_, 2
	octave 2
	note D_, 4
	note G_, 4
	note A_, 4
	note B_, 4
	octave 3
	note D_, 4
;Bar 14
	note E_, 4
	octave 2
	note E_, 4
	note G_, 4
	octave 3
	note C#, 12
;Bar 15
	note F#, 4
	octave 2
	note D_, 4
	note F#, 4
	note A_, 4
	octave 3
	note D_, 4
	note A_, 4
;Bar 16
	note D_, 4
	octave 2
	note A_, 4
	octave 3
	note E_, 4
	note D_, 12
;Bar 17
	octave 2
	note_type 3, 7, 7
	note G_, 1
	note B_, 1
	note_type 6, 9, 7
	octave 3
	note E_, 3
	octave 2
	note E_, 4
	note G_, 4
	note B_, 4
	octave 3
	note D_, 4
	note E_, 4
;Bar 18
	note F#, 12
	note E_, 12
;Bar 19
	octave 2
	note_type 3, 7, 7
	note A_, 1
	octave 3
	note D_, 1
	note_type 6, 9, 7
	note F#, 3
	octave 2
	note F#, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note G_, 4
;Bar 20
	note A_, 16
	note A_, 8
;Bar 21
	sound_call Music_NuvemaTown_Ch1_Bar1
;Bar 22
	octave 2
	note_type 12, 9, 7
	note A#, 12
	note_type 6, 9, 7
;Bar 23
	sound_call Music_NuvemaTown_Ch1_Bar3
;Bar 24
	sound_call Music_NuvemaTown_Ch1_Bar2
	sound_jump Music_NuvemaTown_Ch1_loop

Music_NuvemaTown_Ch1_Bar1:
;Bar 1
	octave 2
	note D_, 4
	note A_, 4
	octave 3
	note D_, 4
	note F#, 12
	sound_ret

Music_NuvemaTown_Ch1_Bar2:
	octave 2
	note_type 3, 7, 7
	note G_, 1
	note A#, 1
	note_type 6, 9, 7
	octave 3
	note E_, 11
	note D_, 12
	sound_ret

Music_NuvemaTown_Ch1_Bar3:
	octave 2
	note D_, 4
	note A_, 4
	octave 3
	note D_, 4
	note E_, 4
	note D_, 4
	note A_, 4
	sound_ret

Music_NuvemaTown_Ch1_Bar4:
	octave 2
	note_type 3, 7, 7
	note E_, 1 
	note G_, 1
	note_type 6, 9, 7
	note A#, 11
	note A#, 12
	sound_ret

; ============================================================================================================

Music_NuvemaTown_Ch2:
	stereo_panning TRUE, FALSE
	duty_cycle $1
	note_type 6, 13, 7
	vibrato 8, 2, 2
;Bar 1
	octave 3
	note E_, 1
	note F#, 16
	rest 7
;Bar 2
	volume_envelope 13, 7
	note F#, 1
	note G_, 11
	note G#, 1
	note A_, 9
	note G#, 1
	note G_, 1
;Bar 3
	note_type 12, 13, 7
	note F#, 12
;Bar 4
	note_type 6, 13, 7
	note D_, 1
	note E_, 11
	note D_, 12
;Bar 5
Music_NuvemaTown_Ch2_loop:
	duty_cycle $2
	vibrato 8, 1, 6
	octave 4
	note_type 12, 13, 7
	note A_, 9
	note_type 6, 13, 7
	rest 1
	note G_, 1
	note F#, 4
;Bar 6
	note G_, 16
	note F#, 4
	note E_, 4
;Bar 7
	note_type 12, 13, 7
	note D_, 10
	note_type 6, 13, 7
	note F#, 4
;Bar 8
	note E_, 12
	note D_, 12
;Bar 9
	note A_, 16
	note G_, 4
	note F#, 4
;Bar 10
	note G_, 16
	note F#, 4
	note E_, 4
;Bar 11
	note_type 12, 13, 7
	note D_, 12
	rest 12
;Bar 13
	note B_, 10
	octave 5
	note D_, 2
;Bar 14
	note C#, 6
	octave 4
	note B_, 6
;Bar 15
	note A_, 10
	note_type 8, 13, 7
	note F#, 1
	note A_, 1
	note F#, 1
;Bar 16
	note_type 6, 13, 7
	note D_, 16
	note E_, 4
	note F#, 4
;Bar 17
	note G_, 16
	note F#, 4
	note E_, 4
;Bar 18
	note D_, 12
	note C#, 12
;Bar 19
	note_type 12, 13, 7
	note D_, 12
	rest 6
	note_type 6, 13, 7
;Bar 20
	duty_cycle $1
	vibrato 8, 2, 4
	octave 3
	note E_, 10
	note D_, 1
	note E_, 1
;Bar 21
	note_type 12, 13, 7
	note F#, 12
	note_type 6, 13, 7
;Bar 22
	note D#, 1
	note E_, 11
	note D_, 12
;Bar 23
	note E_, 1
	note F#, 16
	rest 7
;Bar 24
	volume_envelope 13, 7
	note F#, 1
	note G_, 11
	note A_, 12
	;note G#, 1
	;note G_, 1
	sound_jump Music_NuvemaTown_Ch2_loop

; ============================================================================================================

Music_NuvemaTown_Ch3:
	note_type 12, 1, 1
	sound_call Music_NuvemaTown_Ch3_Bar1_2
;Bar 3
	sound_call Music_NuvemaTown_Ch3_Bar1_2
;Bar 5
Music_NuvemaTown_Ch3_loop:
	note D_, 10
	note D_, 2
;Bar 6
	note G_, 6
	note A_, 4
	octave 1
	note A_, 2
;Bar 7
	sound_call Music_NuvemaTown_Ch3_Bar1_2
;Bar 9
	note D_, 10
	note D_, 2
;Bar 10
	note C#, 6
	note F#, 4
	octave 1
	note F#, 2
;Bar 11
	note B_, 8
	note F#, 2
	note B_, 2
;Bar 12
	note A_, 6
	octave 2
	note A_, 2
	note F#, 2
	note D_, 2
;Bar 13
	note G_, 10
	note G_, 2
;Bar 14
	note G_, 8
	octave 3
	note C#, 2
	octave 2
	note B_, 2
;Bar 15
	note F#, 8
	note A_, 2
	octave 3
	note C#, 2
;Bar 16
	octave 2
	note B_, 8
	note F#, 2
	octave 1
	note B_, 2
;Bar 17
	octave 2
	note E_, 6
	note E_, 2
	note F#, 2
	note G_, 2
;Bar 18
	note A_, 6
	octave 1
	note A_, 6
;Bar 19
	octave 2
	note D_, 12
;Bar 20
	note D_, 6
	note A_, 6
;Bar 21
	sound_call Music_NuvemaTown_Ch3_Bar1_2
;Bar 23
	note D_, 10
	note D_, 2
;Bar 24
	note G_, 6
	note C_, 6
	sound_jump Music_NuvemaTown_Ch3_loop

Music_NuvemaTown_Ch3_Bar1_2:
;Bar 1
	octave 2
	note D_, 10
	note D_, 2
;Bar 2
	note G_, 6
	note A_, 6
	sound_ret

; ============================================================================================================

