;Coverted using MIDI2ASM
;Version 4.0
;Code by TriteHexagon
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_NimbasaCity:
	channel_count 4
	channel 1, Music_NimbasaCity_Ch1
	channel 2, Music_NimbasaCity_Ch2
	channel 3, Music_NimbasaCity_Ch3
	channel 4, Music_NimbasaCity_Ch4

Music_NimbasaCity_Ch1:
	volume 6, 6
	vibrato 0, 2, 2
	note_type 4, 10, 8
	tempo 115
;Bar 1
	rest 3
Music_NimbasaCity_Ch1_loop:
	duty_cycle $3
	octave 2
	sound_call Music_NimbasaCity_Ch1_Bar1
;Bar 2
	sound_call Music_NimbasaCity_Ch1_Bar2
;Bar 3
	sound_call Music_NimbasaCity_Ch1_Bar3_4
;Bar 5
	sound_call Music_NimbasaCity_Ch1_Bar1
;Bar 6
	sound_call Music_NimbasaCity_Ch1_Bar2
;Bar 7
	sound_call Music_NimbasaCity_Ch1_Bar7
;Bar 8
	note G_, 8
	note D#, 2
	note D_, 2
	note C#, 2
;Bar 9
	octave 2
	sound_call Music_NimbasaCity_Ch1_Bar1
;Bar 10
	sound_call Music_NimbasaCity_Ch1_Bar2
;Bar 11
	sound_call Music_NimbasaCity_Ch1_Bar3_4
;Bar 13
	sound_call Music_NimbasaCity_Ch1_Bar1
;Bar 14
	sound_call Music_NimbasaCity_Ch1_Bar2
;Bar 15
	sound_call Music_NimbasaCity_Ch1_Bar7
;Bar 16
	note G_, 13
;Bar 17
	sound_call Music_NimbasaCity_Ch1_Bar17
;Bar 18
	rest 4
	note_type 4, 10, 8
	note E_, 15
	note C#, 1
	note D#, 3
	rest 9
	note C#, 4
	rest 7
;Bar 19
	note C#, 1
	sound_call Music_NimbasaCity_Ch1_Bar19
;Bar 21
	note_type 8, 10, 8
	note C#, 11
	rest 1
	octave 2
	note A#, 4
	octave 3
	note C#, 2
	rest 4
	note D#, 2
;Bar 22
	rest 4
	note C#, 8
	octave 2
	note B_, 2
	rest 4
	note A#, 2
	rest 4
;Bar 23
	note G#, 11
	rest 1
	note G#, 4
	note A#, 1
	note_type 4, 10, 8
	rest 9
	note A#, 1
	octave 3
	note_type 12, 10, 8
	note C_, 10
	note_type 8, 10, 8
;Bar 24
	rest 3
	volume_envelope 10, 8
	octave 2
	note G#, 1
	rest 1
	volume_envelope 10, 8
	octave 3
	note C#, 4
	note D#, 1
;Bar 25
	sound_call Music_NimbasaCity_Ch1_Bar17
;Bar 26
	rest 4
	note E_, 8
	note D#, 2
	rest 4
	note C#, 2
	rest 4
;Bar 27
	sound_call Music_NimbasaCity_Ch1_Bar19
;Bar 29
	note_type 4, 10, 8
	note C#, 3
	rest 15
	note_type 8, 10, 8
	note C#, 15
;Bar 30
	note_type 4, 10, 8
	note D_, 3
	rest 15
	note_type 8, 10, 8
	note D_, 9
	note_type 4, 10, 8
	octave 2
	note A#, 9
;Bar 31
	note_type 4, 10, 8
	rest 2
	octave 3
	note C#, 1
	duty_cycle $2
	note_type 8, 10, 8
	note D#, 2
	note D_, 2
	note D#, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note G#, 2
	note G_, 2
	note G#, 2
;Bar 32
	note A_, 2
	note G#, 2
	note A_, 2
	note B_, 2
	note A#, 2
	note B_, 2
	note E_, 2
	note A_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	note B_, 2
;Bar 33
	note_type 8, 10, 8
	stereo_panning TRUE, TRUE
	duty_cycle $3
	octave 3
	note C_, 10
	rest 2
	note C_, 4
	volume_envelope 10, 8
	note D_, 1
	rest 4
	note D_, 1
	note E_, 11
;Bar 34
	rest 3
	note E_, 6
	note_type 4, 10, 8
	note G_, 3
	rest 8
;Bar 35
	note F_, 1
	note_type 8, 10, 8
	note F#, 12
	note D_, 4
	note F#, 1
	rest 7
;Bar 36
	note F_, 4
	note E_, 2
	note D_, 2
	rest 2
	note E_, 6
	note D_, 2
	note C_, 4
	octave 2
	note B_, 2
;Bar 37
	note A_, 6
	octave 3
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	note D#, 1
	rest 3
	octave 2
	note B_, 2
	note B_, 4
	note A_, 1
;Bar 38
	rest 1
	note G#, 4
	note G#, 1
	rest 1
	note G#, 4
	note G#, 1
	rest 5
	note G_, 6
	note_type 4, 7, 6
	octave 3
	note C_, 1
;Bar 39
	octave 2
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	sound_jump Music_NimbasaCity_Ch1_loop

Music_NimbasaCity_Ch1_Bar1:
	note_type 8, 10, 8
	note B_, 11
	rest 1
	note B_, 4
	note_type 4, 10, 8
	octave 3
	note C#, 2
	rest 10
	note_type 8, 10, 8
	note D#, 12
	sound_ret

Music_NimbasaCity_Ch1_Bar2:
	note_type 8, 10, 8
	rest 2;
	note D#, 6
	note F#, 1
	rest 5
	note F_, 11
	rest 1
	sound_ret

Music_NimbasaCity_Ch1_Bar3_4:
	note C#, 4;
	note F_, 2
	rest 4
	note E_, 6
	note D#, 2
	note C#, 3
	rest 1
	note D#, 6
	note C#, 2
	octave 2
	note A#, 6
	sound_ret

Music_NimbasaCity_Ch1_Bar7:
	note F_, 4
	note C#, 1
	rest 1
	note F_, 4
	note D#, 12
	sound_ret

Music_NimbasaCity_Ch1_Bar17:
	rest 6
	note D#, 1
	note E_, 4
	note D#, 2
	note E_, 4
	note G#, 2
	rest 4
	note F#, 2
	sound_ret

Music_NimbasaCity_Ch1_Bar19:
	note_type 8, 10, 8
	note D#, 12
	note C#, 4
	note D#, 2
	rest 4
	note_type 12, 10, 8
	octave 2
	note B_, 13
;Bar 20
	note_type 4, 10, 8
	octave 3
	note C#, 1
	note D#, 4
	rest 8
	sound_ret

; ============================================================================================================

Music_NimbasaCity_Ch2:
	duty_cycle $1
	vibrato 0, 2, 2
	note_type 4, 12, 8
	sound_call Music_NimbasaCity_Ch2_Intro

Music_NimbasaCity_Ch2_loop:
;Bar 1
	sound_call Music_NimbasaCity_Ch2_Bar1
;Bar 2
	sound_call Music_NimbasaCity_Ch2_Bar2
;Bar 3
	sound_call Music_NimbasaCity_Ch2_Bar3
;Bar 4
	sound_call Music_NimbasaCity_Ch2_Bar4
;Bar 5
	sound_call Music_NimbasaCity_Ch2_Bar5
;Bar 6
	sound_call Music_NimbasaCity_Ch2_Bar6
;Bar 7
	sound_call Music_NimbasaCity_Ch2_Bar7
;Bar 8
	note_type 4, 12, 8
	rest 1
;Bar 9
	volume_envelope 12, 8
	sound_call Music_NimbasaCity_Ch2_Intro
	sound_call Music_NimbasaCity_Ch2_Bar1
;Bar 10
	sound_call Music_NimbasaCity_Ch2_Bar2
;Bar 11
	sound_call Music_NimbasaCity_Ch2_Bar3
;Bar 12
	sound_call Music_NimbasaCity_Ch2_Bar4
;Bar 13
	sound_call Music_NimbasaCity_Ch2_Bar5
;Bar 14
	sound_call Music_NimbasaCity_Ch2_Bar6
;Bar 15
	sound_call Music_NimbasaCity_Ch2_Bar7
;Bar 17
	note_type 8, 12, 8
	rest 2
	sound_call Music_NimbasaCity_Ch2_Bar17
;Bar 18
	sound_call Music_NimbasaCity_Ch2_Bar18
;Bar 19
	sound_call Music_NimbasaCity_Ch2_Bar19
;Bar 20
	sound_call Music_NimbasaCity_Ch2_Bar20
;Bar 21
	octave 4
	note C#, 9
	volume_envelope 12, 2
	note C#, 3
	volume_envelope 12, 8
	note C#, 4
	octave 3
	note B_, 2
	rest 4
	note A#, 2
;Bar 22
	rest 4
	note G_, 8
	note G#, 2
	rest 4
	note A#, 2
	rest 4
;Bar 23
	note B_, 9
	volume_envelope 12, 2
	note B_, 3
	volume_envelope 12, 8
	note B_, 4
	octave 4
	note C#, 2
	rest 4
	note D#, 8
;Bar 24
	duty_cycle $2
	octave 3
	volume_envelope 12, 8
	note D#, 2
	note D_, 2
	note D#, 2
	note F#, 2
	note G#, 2
	note A#, 2
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	duty_cycle $1
	volume_envelope 12, 8
;Bar 25
	sound_call Music_NimbasaCity_Ch2_Bar17
;Bar 26
	sound_call Music_NimbasaCity_Ch2_Bar18
;Bar 27
	sound_call Music_NimbasaCity_Ch2_Bar19
;Bar 28
	sound_call Music_NimbasaCity_Ch2_Bar20
;Bar 29
	octave 4
	note C#, 2
	rest 8
	note C#, 9
	volume_envelope 12, 2
	note C#, 3
	volume_envelope 12, 8
	rest 2
;Bar 30
	note D_, 2
	rest 8
	note D_, 9
	volume_envelope 12, 2
	note D_, 3
	volume_envelope 12, 8
	rest 2
;Bar 31
	note D#, 16
	volume_envelope 12, 2
	note D#, 3
	rest 3
	note_type 12, 12, 8
	note E_, 14
	volume_envelope 12, 2
	note E_, 2
;Bar 33
	note_type 4, 12, 8
	rest 1
	octave 3
	note E_, 1
	note F#, 1
	note G#, 1
	note_type 8, 12, 8
	note A_, 8
	volume_envelope 12, 2
	note A_, 3
	volume_envelope 12, 8
	rest 1
	note A_, 4
	note B_, 1
	rest 5
	octave 4
	note C_, 9
	volume_envelope 12, 2
	note C_, 3
	volume_envelope 12, 8
;Bar 34
	rest 2
	note C_, 5
	note_type 4, 12, 8
	note C#, 1
	note D_, 1
	note_type 8, 12, 8
	note E_, 2
	rest 4
;Bar 35
	note D_, 9
	volume_envelope 12, 2
	note D_, 3
	volume_envelope 12, 8
	octave 3
	note A_, 4
	octave 4
	note D_, 1
	rest 5
	note C_, 6
;Bar 36
	octave 3
	note B_, 2
	note_type 4, 12, 8
	note A_, 5
	rest 3
	note_type 8, 12, 8
	note B_, 6
	note A_, 2
	note G_, 6
;Bar 37
	note A_, 6
	octave 4
	note E_, 2
	note D#, 2
	note E_, 2
	note_type 4, 12, 8
	note A_, 2
	rest 6
	note D#, 4
	note D_, 8
	note C_, 2
;Bar 38
	rest 2
	octave 3
	note B_, 5
	rest 3
	octave 4
	note C_, 2
	rest 2
	note_type 8, 12, 8
	note D_, 4
	note E_, 1
	rest 5
	note D#, 6
	note_type 4, 9, 6
	note D_, 1
;Bar 39
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	sound_jump Music_NimbasaCity_Ch2_loop

Music_NimbasaCity_Ch2_Intro:
	octave 3;
	note D#, 1
	note F_, 1
	note G_, 1
	sound_ret

Music_NimbasaCity_Ch2_Bar1:
	note_type 8, 12, 8;
	note G#, 8
	volume_envelope 12, 2
	note G#, 3
	volume_envelope 12, 8
	rest 1
	note G#, 4
	note A#, 1
	rest 5
	note B_, 8
	volume_envelope 12, 2
	note B_, 3
	volume_envelope 12, 8
	sound_ret

Music_NimbasaCity_Ch2_Bar2:
	note_type 8, 12, 8
	rest 3
	note B_, 5
	note_type 4, 12, 8
	octave 4
	note C_, 1
	note C#, 1
	note_type 8, 12, 2
	note D#, 2
	rest 4
	volume_envelope 12, 8
	sound_ret

Music_NimbasaCity_Ch2_Bar3:
	note C#, 8
	volume_envelope 12, 2
	note C#, 3
	volume_envelope 12, 8
	rest 1
	octave 3
	note G#, 4
	octave 4
	note C#, 2
	rest 4
	octave 3
	note B_, 6
	sound_ret

Music_NimbasaCity_Ch2_Bar4:
	note A#, 2
	note_type 4, 12, 8
	note G#, 5
	rest 3
	note_type 8, 12, 8
	note A#, 6
	note G#, 2
	note F#, 6
	sound_ret

Music_NimbasaCity_Ch2_Bar5:
	note G#, 8
	volume_envelope 12, 2
	note G#, 3
	volume_envelope 12, 8
	rest 1
	note G#, 4
	note_type 4, 12, 8
	note A#, 2
	rest 9
	note A#, 1
	note_type 8, 12, 8
	note B_, 10
	volume_envelope 12, 2
	note B_, 3
	volume_envelope 12, 8
	rest 1
	sound_ret

Music_NimbasaCity_Ch2_Bar6:
	note B_, 5;
	note_type 4, 12, 8
	octave 4
	note C_, 1
	note C#, 1
	volume_envelope 12, 2
	note D#, 4
	volume_envelope 12, 8
	rest 8
	sound_ret

Music_NimbasaCity_Ch2_Bar7:
	note_type 8, 12, 8;
	note C#, 8
	volume_envelope 12, 2
	note C#, 3
	volume_envelope 12, 8
	rest 1
	note C#, 4
	octave 3
	note B_, 1
	rest 1
	octave 4
	note C#, 4
	note_type 12, 12, 8
	note D#, 13
	volume_envelope 12, 2
	note D#, 3
	volume_envelope 12, 8
	sound_ret

Music_NimbasaCity_Ch2_Bar17:
	note E_, 7
	volume_envelope 12, 2
	note E_, 3
	volume_envelope 12, 8
	rest 2
	note E_, 4
	note D#, 2
	rest 4
	note C#, 2
	sound_ret

Music_NimbasaCity_Ch2_Bar18:
	rest 4
	octave 3
	note A#, 5
	volume_envelope 12, 2
	note A#, 3
	volume_envelope 12, 8
	note B_, 2
	rest 4
	octave 4
	note C#, 2
	rest 4
	sound_ret

Music_NimbasaCity_Ch2_Bar19:
	note D#, 6
	volume_envelope 12, 2
	note D#, 3
	volume_envelope 12, 8
	rest 3
	note D#, 4
	note C#, 2
	rest 4
	octave 3
	note B_, 2
	sound_ret

Music_NimbasaCity_Ch2_Bar20:
	rest 4
	note G#, 5
	volume_envelope 12, 2
	note G#, 3
	volume_envelope 12, 8
	note A#, 2
	rest 4
	note B_, 2
	rest 4
	sound_ret

; ============================================================================================================

Music_NimbasaCity_Ch3:
	note_type 4, 1, 4
;Bar 1
	rest 3
Music_NimbasaCity_Ch3_loop:
	note_type 8, 1, 4
	sound_call Music_NimbasaCity_Ch3_Bar1
;Bar 2
	sound_call Music_NimbasaCity_Ch3_Bar2
;Bar 3
	sound_call Music_NimbasaCity_Ch3_Bar3
	note E_, 7
;Bar 4
	sound_call Music_NimbasaCity_Ch3_Bar4
;Bar 5
	sound_call Music_NimbasaCity_Ch3_Bar1
;Bar 6
	sound_call Music_NimbasaCity_Ch3_Bar2
;Bar 7
	sound_call Music_NimbasaCity_Ch3_Bar3
	octave 2
	note D#, 6
;Bar 8
	note G#, 1
	rest 1
	note A#, 1
	rest 3
	note D#, 8
	note G#, 6
;Bar 9
	sound_call Music_NimbasaCity_Ch3_Bar1
;Bar 10
	sound_call Music_NimbasaCity_Ch3_Bar2
;Bar 11
	sound_call Music_NimbasaCity_Ch3_Bar3
	octave 2
	note E_, 7
;Bar 12
	sound_call Music_NimbasaCity_Ch3_Bar4
;Bar 13
	sound_call Music_NimbasaCity_Ch3_Bar1
;Bar 14
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note B_, 5
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	octave 2
	note D#, 5
	volume_envelope 2, 4
	note D#, 1
	volume_envelope 1, 4
	note F#, 5
	volume_envelope 2, 4
	note F#, 1
	volume_envelope 1, 4
	note B_, 5
;Bar 15
	sound_call Music_NimbasaCity_Ch3_Bar3
	octave 2
	note D#, 6
;Bar 16
	note G#, 2
	note A#, 1
	rest 3
	note D#, 8
	note C#, 2
	note D_, 2
	note D#, 2
;Bar 17
	note C#, 5
	volume_envelope 2, 4
	note C#, 1
	volume_envelope 1, 4
	note E_, 5
	volume_envelope 2, 4
	note E_, 1
	volume_envelope 1, 4
	note G#, 5
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note C#, 5
;Bar 18
	volume_envelope 2, 4
	note C#, 1
	sound_call Music_NimbasaCity_Ch3_Bar18
;Bar 19
	volume_envelope 2, 4
	note C#, 1
	volume_envelope 1, 4
	octave 1
	note B_, 5
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	note F#, 5
	volume_envelope 2, 4
	note F#, 1
	volume_envelope 1, 4
	note B_, 5
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	octave 2
	note D#, 5
;Bar 20
	volume_envelope 2, 4
	note D#, 1
	volume_envelope 1, 4
	note E_, 5
	volume_envelope 2, 4
	note E_, 1
	volume_envelope 1, 4
	note G#, 5
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note E_, 5
	volume_envelope 2, 4
	note E_, 1
	volume_envelope 1, 4
	octave 1
	note B_, 5
;Bar 21
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	note A#, 5
	volume_envelope 2, 4
	note A#, 1
	volume_envelope 1, 4
	octave 2
	note C#, 5
	volume_envelope 2, 4
	note C#, 1
	volume_envelope 1, 4
	note F_, 5
	volume_envelope 2, 4
	note F_, 1
	volume_envelope 1, 4
	note A#, 5
;Bar 22
	volume_envelope 2, 4
	note A#, 1
	volume_envelope 1, 4
	note D#, 5
	volume_envelope 2, 4
	note D#, 1
	volume_envelope 1, 4
	note G_, 5
	volume_envelope 2, 4
	note G_, 1
	volume_envelope 1, 4
	note G#, 5
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note A#, 5
;Bar 23
	volume_envelope 2, 4
	note A#, 1
	volume_envelope 1, 4
	octave 1
	note G#, 5
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	octave 2
	note D#, 5
	volume_envelope 2, 4
	note D#, 1
	volume_envelope 1, 4
	note G#, 5
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note B_, 2
	rest 2
	note C_, 8
;Bar 24
	note G#, 1
	rest 3
	octave 3
	note C_, 5
	rest 1
	octave 2
	note G#, 1
	rest 1
	note D#, 4
	note_type 4, 1, 4
	note C_, 1
;Bar 25
	rest 3
	note_type 8, 2, 4
	note C#, 5
	volume_envelope 2, 4
	note C#, 1
	volume_envelope 1, 4
	note E_, 5
	volume_envelope 2, 4
	note E_, 1
	volume_envelope 1, 4
	note G#, 5
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note E_, 5
;Bar 26
	volume_envelope 2, 4
	note E_, 1
	sound_call Music_NimbasaCity_Ch3_Bar18
;Bar 27
	volume_envelope 2, 4
	note C#, 1
	volume_envelope 1, 4
	octave 1
	note B_, 5
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	octave 2
	note D#, 5
	volume_envelope 2, 4
	note D#, 1
	volume_envelope 1, 4
	note F#, 5
	volume_envelope 2, 4
	note F#, 1
	volume_envelope 1, 4
	note D#, 5
;Bar 28
	volume_envelope 2, 4
	note D#, 1
	volume_envelope 1, 4
	note E_, 5
	volume_envelope 2, 4
	note E_, 1
	volume_envelope 1, 4
	note G#, 5
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note A#, 5
	volume_envelope 2, 4
	note A#, 1
	volume_envelope 1, 4
	note B_, 5
;Bar 29
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	octave 1
	note A#, 3
	rest 2
	volume_envelope 2, 4
	note A#, 2
	rest 2
	volume_envelope 1, 4
	note A#, 7
	rest 2
	note A#, 2
	octave 2
	note C#, 2
	note F_, 2
;Bar 30
	octave 1
	note A#, 3
	rest 2
	note A#, 1
	rest 3
	octave 2
	note D_, 9
	octave 1
	note A#, 6
;Bar 31
	octave 2
	note D#, 5
	volume_envelope 2, 4
	note D#, 1
	volume_envelope 1, 4
	note G#, 5
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note A#, 5
	volume_envelope 2, 4
	note A#, 1
	volume_envelope 1, 4
	note D#, 2
	rest 2
	note E_, 7
;Bar 32
	volume_envelope 2, 4
	note E_, 1
	volume_envelope 1, 4
	note A_, 1
	rest 3
	note B_, 8
	note G#, 6
;Bar 33
	octave 1
	note A_, 5
	volume_envelope 2, 4
	note A_, 1
	volume_envelope 1, 4
	octave 2
	note C_, 5
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 1, 4
	note E_, 5
	volume_envelope 2, 4
	note E_, 1
	volume_envelope 1, 4
	note A_, 5
;Bar 34
	volume_envelope 2, 4
	note A_, 1
	volume_envelope 1, 4
	note C_, 5
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 1, 4
	note E_, 5
	volume_envelope 2, 4
	note E_, 1
	volume_envelope 1, 4
	note G_, 5
	volume_envelope 2, 4
	note G_, 1
	volume_envelope 1, 4
	octave 3
	note C_, 5
;Bar 35
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 1, 4
	octave 2
	note D_, 5
	volume_envelope 2, 4
	note D_, 1
	volume_envelope 1, 4
	note F#, 5
	volume_envelope 2, 4
	note F#, 1
	volume_envelope 1, 4
	note A_, 5
	volume_envelope 2, 4
	note A_, 1
	volume_envelope 1, 4
	octave 3
	note D_, 2
	rest 2
	octave 2
	note F_, 7
;Bar 36
	volume_envelope 2, 4
	note F_, 1
	volume_envelope 1, 4
	note C_, 2
	rest 1
	volume_envelope 2, 4
	note C_, 1
	volume_envelope 1, 4
	note G_, 6
	rest 1
	volume_envelope 2, 4
	note G_, 1
	volume_envelope 1, 4
	note D_, 5
;Bar 37
	volume_envelope 2, 4
	note D_, 1
	volume_envelope 1, 4
	octave 1
	note A_, 5
	volume_envelope 2, 4
	note A_, 1
	note_type 4, 2, 4
	octave 2
	note A_, 7
	rest 3
	note_type 8, 1, 4
	note A_, 1
	note_type 4, 2, 4
	note G#, 7
	rest 3
	note_type 8, 1, 4
	note G#, 1
	note_type 4, 2, 4
	note G_, 7
	rest 3
;Bar 38
	note_type 8, 1, 4
	note G_, 1
	note_type 4, 2, 4
	note F#, 7
	rest 3
	note_type 8, 1, 4
	note F#, 1
	volume_envelope 1, 4
	note F_, 4
	note E_, 1
	rest 5
	note D#, 6
	note_type 4, 1, 4
	rest 1
;Bar 39
	note D#, 2
	rest 2
	sound_jump Music_NimbasaCity_Ch3_loop

Music_NimbasaCity_Ch3_Bar1:
	octave 1;
	note G#, 5
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	note B_, 5
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	octave 2
	note D#, 5
	volume_envelope 2, 4
	note D#, 1
	volume_envelope 1, 4
	octave 1
	note G#, 5
	sound_ret

Music_NimbasaCity_Ch3_Bar2:
	volume_envelope 2, 4;
	note G#, 1
	volume_envelope 1, 4
	note B_, 5
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	octave 2
	note D#, 5
	volume_envelope 2, 4
	note D#, 1
	volume_envelope 1, 4
	note F#, 5
	volume_envelope 2, 4
	note F#, 1
	volume_envelope 1, 4
	octave 1
	note B_, 5
	sound_ret

Music_NimbasaCity_Ch3_Bar3:
	volume_envelope 2, 4;
	note B_, 1
	volume_envelope 1, 4
	octave 2
	note C#, 5
	volume_envelope 2, 4
	note C#, 1
	volume_envelope 1, 4
	note F_, 5
	volume_envelope 2, 4
	note F_, 1
	volume_envelope 1, 4
	note G#, 5
	volume_envelope 2, 4
	note G#, 1
	volume_envelope 1, 4
	octave 3
	note C#, 2
	rest 2
	sound_ret

Music_NimbasaCity_Ch3_Bar4:
	volume_envelope 2, 4
	note E_, 1
	volume_envelope 1, 4
	octave 1
	note B_, 2
	rest 1
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	octave 2
	note F#, 6
	rest 1
	volume_envelope 2, 4
	note F#, 1
	volume_envelope 1, 4
	note C#, 5
	volume_envelope 2, 4
	note C#, 1
	volume_envelope 1, 4
	sound_ret

Music_NimbasaCity_Ch3_Bar18:
	volume_envelope 1, 4;
	octave 1
	note F#, 5
	volume_envelope 2, 4
	note F#, 1
	volume_envelope 1, 4
	note A#, 5
	volume_envelope 2, 4
	note A#, 1
	volume_envelope 1, 4
	note B_, 5
	volume_envelope 2, 4
	note B_, 1
	volume_envelope 1, 4
	octave 2
	note C#, 5
	sound_ret

; ============================================================================================================

Music_NimbasaCity_Ch4:
	toggle_noise 1 ; WARNING: this will sound bad.
	drum_speed 4
	rest 3
;Bar 1
Music_NimbasaCity_Ch4_loop:
	drum_speed 8
	sound_call Music_NimbasaCity_Ch4_Bar1
;Bar 2
	sound_call Music_NimbasaCity_Ch4_Bar2
;Bar 3
	sound_call Music_NimbasaCity_Ch4_Bar11
;Bar 4
	sound_call Music_NimbasaCity_Ch4_Bar4
;Bar 5
	sound_call Music_NimbasaCity_Ch4_Bar1
;Bar 6
	sound_call Music_NimbasaCity_Ch4_Bar2
;Bar 7
	sound_call Music_NimbasaCity_Ch4_Bar7
;Bar 8
	sound_call Music_NimbasaCity_Ch4_Bar8
;Bar 9
	sound_call Music_NimbasaCity_Ch4_Bar1
;Bar 10
	sound_call Music_NimbasaCity_Ch4_Bar2
;Bar 11
	sound_call Music_NimbasaCity_Ch4_Bar11
;Bar 12
	sound_call Music_NimbasaCity_Ch4_Bar4
;Bar 13
	sound_call Music_NimbasaCity_Ch4_Bar1
;Bar 14
	sound_call Music_NimbasaCity_Ch4_Bar2
;Bar 15
	sound_call Music_NimbasaCity_Ch4_Bar7
;Bar 16
	sound_call Music_NimbasaCity_Ch4_Bar16
;Bar 17
	sound_call Music_NimbasaCity_Ch4_Bar1
;Bar 18
	sound_call Music_NimbasaCity_Ch4_Bar2
;Bar 19
	sound_call Music_NimbasaCity_Ch4_Bar2
;Bar 20
	drum_note 1, 4
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 2, 2
	drum_note 2, 4
	drum_note 5, 2
;Bar 21
	sound_call Music_NimbasaCity_Ch4_Bar1
;Bar 22
	sound_call Music_NimbasaCity_Ch4_Bar2
;Bar 23
	sound_call Music_NimbasaCity_Ch4_Bar7
;Bar 24
	sound_call Music_NimbasaCity_Ch4_Bar8
;Bar 25
	sound_call Music_NimbasaCity_Ch4_Bar1
;Bar 26
	sound_call Music_NimbasaCity_Ch4_Bar2
;Bar 27
	drum_note 1, 4
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 6
;Bar 28
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 5, 2
;Bar 29
	drum_note 6, 6
	drum_note 2, 4
	drum_note 6, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 1, 2
;Bar 30
	drum_note 6, 6
	drum_note 2, 4
	drum_note 6, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 2
;Bar 31
	sound_call Music_NimbasaCity_Ch4_Bar7
;Bar 32
	sound_call Music_NimbasaCity_Ch4_Bar16
;Bar 33
	sound_call Music_NimbasaCity_Ch4_Bar1
;Bar 34
	sound_call Music_NimbasaCity_Ch4_Bar2
;Bar 35
	sound_call Music_NimbasaCity_Ch4_Bar7
;Bar 36
	drum_note 1, 2
	drum_note 2, 4
	drum_note 6, 2
	drum_note 1, 4
	drum_note 2, 2
	drum_note 2, 4
	drum_note 5, 2
;Bar 37
	drum_note 6, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
;Bar 38
	drum_note 6, 6
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_speed 4
	drum_note 5, 3
;Bar 39
	drum_note 5, 2
	sound_jump Music_NimbasaCity_Ch4_loop

Music_NimbasaCity_Ch4_Bar1:
	drum_note 6, 6;
	drum_note 2, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 2
	sound_ret

Music_NimbasaCity_Ch4_Bar2:
	drum_note 1, 4;
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 2
	sound_ret

Music_NimbasaCity_Ch4_Bar4:
	drum_note 2, 4;
	drum_note 6, 6
	drum_note 2, 2
	drum_note 2, 4
	drum_note 5, 2
	sound_ret

Music_NimbasaCity_Ch4_Bar7:
	drum_note 1, 4;
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 2, 4
	drum_note 6, 6
	sound_ret

Music_NimbasaCity_Ch4_Bar8:
	drum_note 5, 2;
	drum_note 2, 4
	drum_note 6, 8
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	sound_ret

Music_NimbasaCity_Ch4_Bar11:
	drum_note 1, 4;
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 2, 4
	drum_note 6, 8
	sound_ret

Music_NimbasaCity_Ch4_Bar16:
	drum_note 5, 2;
	drum_note 2, 4
	drum_note 6, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	sound_ret

; ============================================================================================================

