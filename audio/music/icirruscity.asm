;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 4.0 (17-Jun-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_IcirrusCity:
	channel_count 4
	channel 1, Music_IcirrusCity_Ch1
	channel 2, Music_IcirrusCity_Ch2
	channel 3, Music_IcirrusCity_Ch3
	channel 4, Music_IcirrusCity_Ch4

Music_IcirrusCity_Ch1:
	volume 7, 7
	tempo 94
	note_type 12, 9, 3
	duty_cycle $0
	pitch_offset $0001
;Bar 1
	octave 3
	sound_call Music_IcirrusCity_Ch1_Bar1
;Bar 2
	note D_, 4
	note A_, 4
	note B_, 2
	note B_, 4
	note G_, 2
;Bar 3
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note A_, 4
;Bar 4
	note B_, 2
	note B_, 4
	note D_, 2
	note B_, 4
	note A_, 4
;Bar 5
	note D_, 4
	note A_, 4
	note F_, 2
	note F_, 4
	note A_, 2
;Bar 6
	note F_, 4
	note E_, 4
	note F_, 4
	note E_, 4
Music_IcirrusCity_Ch1_loop:
;Bar 7
	sound_call Music_IcirrusCity_Ch1_Bar1
;Bar 8
	sound_call Music_IcirrusCity_Ch1_Bar8
;Bar 9
	sound_call Music_IcirrusCity_Ch1_Bar9
;Bar 10
	sound_call Music_IcirrusCity_Ch1_Bar10
;Bar 11
	octave 3
	note B_, 4
	note A_, 4
	note F_, 2
	note F_, 4
	note A_, 2
;Bar 12
	note F_, 4
	note G_, 4
	note F_, 4
	note E_, 4
;Bar 13
	sound_call Music_IcirrusCity_Ch1_Bar1
;Bar 14
	note D_, 4
	note A_, 4
	note D_, 2
	note B_, 4
	note D_, 2
;Bar 15
	sound_call Music_IcirrusCity_Ch1_Bar9
;Bar 16
	sound_call Music_IcirrusCity_Ch1_Bar1
;Bar 17
	note A_, 4
	note A_, 4
	note F_, 2
	note F_, 4
	note C_, 2
;Bar 18
	note F_, 4
	note E_, 4
	note F_, 4
	note E_, 4
;Bar 19
	sound_call Music_IcirrusCity_Ch1_Bar1
;Bar 20
	sound_call Music_IcirrusCity_Ch1_Bar8
;Bar 21
	sound_call Music_IcirrusCity_Ch1_Bar9
;Bar 22
	sound_call Music_IcirrusCity_Ch1_Bar10
;Bar 23
	octave 3
	note B_, 4
	note A_, 4
	note F_, 2
	note F_, 4
	note F_, 2
;Bar 24
	note G_, 2
	note A_, 2
	note G_, 4
	note F_, 4
	note E_, 4
;Bar 25
	volume_envelope 9, 7
	duty_cycle $2
	note B_, 12
	note A_, 8
;Bar 26
	note G_, 12
;Bar 27
	note F#, 8
	note G_, 12
;Bar 28
	note F#, 8
	note G_, 12
;Bar 29
	note A_, 8
;Bar 30
	note A#, 4
	note B_, 12
;Bar 31
	note A_, 8
	note G_, 12
;Bar 32
	note F#, 8
	note G_, 12
;Bar 33
	note B_, 12
;Bar 34
	note A_, 12
;Bar 35
	note E_, 12
Music_IcirrusCity_Ch1_Bar35_36:
	volume_envelope 7, 8
	note F#, 16
	volume_envelope 7, 7
	note F#, 8
	sound_loop 2, Music_IcirrusCity_Ch1_Bar35_36
;Bar 38
	volume_envelope 9, 3
	duty_cycle $0
	note G_, 2
	note G_, 4
;Bar 39
	note D_, 2
	note G_, 4
	note A_, 4
	note D_, 4
;Bar 40
	note A_, 4
	note B_, 2
	note B_, 4
	note G_, 2
	note B_, 4
;Bar 41
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note A_, 4
	note B_, 2
	note B_, 4
;Bar 42
	note D_, 2
	note B_, 4
	note A_, 4
	note D_, 4
;Bar 43
	note A_, 4
	note F_, 2
	note F_, 4
	note A_, 2
	note F_, 4
;Bar 44
	note E_, 4
	note F_, 4
	note E_, 4
	sound_jump Music_IcirrusCity_Ch1_loop

Music_IcirrusCity_Ch1_Bar1:
	note G_, 2;
	note G_, 4
	note D_, 2
	note G_, 4
	note A_, 4
	sound_ret

Music_IcirrusCity_Ch1_Bar8:
	note D_, 4;
	note A_, 4
	note B_, 2
	note B_, 4
	note D_, 2
	sound_ret

Music_IcirrusCity_Ch1_Bar9:
	note G_, 4;
	note A_, 4
	note F#, 4
	note A_, 4
	sound_ret

Music_IcirrusCity_Ch1_Bar10:
	note B_, 2;
	note B_, 4
	note G_, 2
	note B_, 4
	octave 4
	note C_, 4
	sound_ret

; ============================================================================================================

Music_IcirrusCity_Ch2:
	note_type 12, 11, 7
	vibrato 16, 1, 6
;Bar 1
Music_IcirrusCity_Ch2_Intro_Rest:
	rest 16
	sound_loop 6, Music_IcirrusCity_Ch2_Intro_Rest
Music_IcirrusCity_Ch2_loop:
;Bar 7
	volume_envelope 11, 7
	sound_call Music_IcirrusCity_Ch2_Bar7_12
	note G_, 11
	duty_cycle $1
	note_type 6, 11, 7
	octave 2
	note B_, 1
	octave 3
	note C_, 1
;Bar 13
	note_type 12, 11, 7
	note D_, 8
	note G_, 4
	note A_, 6
;Bar 14
	note D_, 2
	note A_, 3
	note_type 6, 11, 7
	note A_, 1
	note A#, 1
	note_type 12, 11, 7
	note B_, 8
;Bar 15
	note D_, 4
	octave 4
	note C_, 6
	octave 3
	note B_, 2
	note A_, 3
	note_type 6, 11, 7
	note B_, 1
	octave 4
	note C_, 1
;Bar 16
	note_type 12, 11, 7
	note D_, 7
	rest 1
	note D_, 4
	note C_, 4
;Bar 17
	octave 3
	note B_, 4
	note A_, 3
	note_type 6, 11, 7
	note D_, 1
	note E_, 1
	note_type 12, 11, 7
	note F_, 6
	note G_, 2
;Bar 18
	note A_, 4
	note G_, 12
;Bar 19
	sound_call Music_IcirrusCity_Ch2_Bar7_12
	note G_, 10
	duty_cycle $1
	note_type 6, 11, 7
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D_, 1
	note E_, 1
;Bar 25
	note_type 12, 11, 7
	note F#, 12
	note E_, 4
;Bar 26
	note A_, 1
	rest 2
	octave 2
	note_type 6, 11, 7
	note B_, 1
	octave 3
	note C#, 1
	note_type 12, 11, 7
	note D_, 16
;Bar 27
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note D_, 12
;Bar 28
	octave 2
	note B_, 4
	octave 3
	note E_, 1
	rest 3
	note D_, 10
;Bar 29
	note E_, 1
	note D_, 1
	note C#, 4
	note D_, 4
;Bar 30
	note E_, 4
	note F#, 12
;Bar 31
	note E_, 4
	note A_, 1
	rest 3
	note D_, 16
;Bar 32
	note B_, 2
	octave 4
	note C#, 2
	note D_, 12
;Bar 33
	volume_envelope 11, 7
	octave 3
	note B_, 6
	note_type 6, 9, 7
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
;Bar 34
	note_type 12, 11, 7
	note E_, 4
	note D_, 12
;Bar 35
	note C#, 11
	rest 1
	volume_envelope 9, 8
	note C#, 16
	volume_envelope 9, 7
	note C#, 8
;Bar 37
	volume_envelope 9, 8
	octave 3
	note B_, 16
	volume_envelope 9, 7
	note B_, 8
;Bar 38
	duty_cycle $0
	volume_envelope 9, 4
	note B_, 2
	note A_, 2
;Bar 39
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
;Bar 40
	note A_, 2
	note D_, 2
	note G_, 4
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
;Bar 41
	note D_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 4
;Bar 42
	note_type 8, 9, 4
	note A_, 2
	note B_, 2
	note A_, 2
	note_type 12, 9, 4
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 2
;Bar 43
	note F#, 2
	note D_, 2
	note F_, 4
	note_type 8, 9, 4
	note E_, 2
	note F_, 2
	note E_, 2
	note_type 12, 9, 4
	note C_, 2
	note F_, 2
;Bar 44
	note E_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note C_, 2
	sound_jump Music_IcirrusCity_Ch2_loop

Music_IcirrusCity_Ch2_Bar7_12:
	duty_cycle $2
	octave 4
	note D_, 4
	rest 2
	note_type 8, 11, 6
	note D_, 1
	volume_envelope 9, 6
	note E_, 1
	volume_envelope 11, 6
	note D_, 1
	note_type 12, 11, 6
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 4
;Bar 8
	volume_envelope 11, 2
	note G_, 2
	rest 2
	note A_, 2
	rest 2
	volume_envelope 11, 6
	note B_, 4
	rest 2
	note_type 8, 11, 6
	note B_, 1
	octave 5
	volume_envelope 9, 6
	note C_, 1
	volume_envelope 11, 6
	octave 4
	note B_, 1
;Bar 9
	note_type 12, 11, 6
	note A_, 2
	note B_, 2
	octave 5
	note C_, 4
	octave 4
	volume_envelope 11, 2
	note B_, 2
	rest 2
	note A_, 2
	rest 2
;Bar 10
	volume_envelope 11, 6
	octave 5
	note D_, 4
	rest 2
	note_type 8, 11, 6
	note D_, 1
	volume_envelope 9, 6
	note E_, 1
	volume_envelope 11, 6
	note D_, 1
	note_type 12, 11, 6
	note C_, 2
	octave 4
	note B_, 2
	octave 5
	volume_envelope 11, 2
	note C_, 2
	rest 2
;Bar 11
	octave 4
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	volume_envelope 11, 6
	note F_, 5
	rest 1
	note F_, 2
;Bar 12
	note G_, 2
	note A_, 2
	sound_ret

; ============================================================================================================

Music_IcirrusCity_Ch3:
	note_type 12, 1, 2
;Bar 1
	sound_call Music_IcirrusCity_Ch3_Bar1
;Bar 2
	sound_call Music_IcirrusCity_Ch3_Bar2
;Bar 3
	sound_call Music_IcirrusCity_Ch3_Bar3
;Bar 4
	sound_call Music_IcirrusCity_Ch3_Bar4
;Bar 5
	sound_call Music_IcirrusCity_Ch3_Bar5
;Bar 6
	sound_call Music_IcirrusCity_Ch3_Bar6
;Bar 7
Music_IcirrusCity_Ch3_loop:
	sound_call Music_IcirrusCity_Ch3_Bar1
;Bar 8
	sound_call Music_IcirrusCity_Ch3_Bar2
;Bar 9
	sound_call Music_IcirrusCity_Ch3_Bar3
;Bar 10
	sound_call Music_IcirrusCity_Ch3_Bar4
;Bar 11
	sound_call Music_IcirrusCity_Ch3_Bar5
;Bar 12
	sound_call Music_IcirrusCity_Ch3_Bar6
;Bar 13
	sound_call Music_IcirrusCity_Ch3_Bar1
;Bar 14
	sound_call Music_IcirrusCity_Ch3_Bar2
;Bar 15
	sound_call Music_IcirrusCity_Ch3_Bar3
;Bar 16
	sound_call Music_IcirrusCity_Ch3_Bar4
;Bar 17
	sound_call Music_IcirrusCity_Ch3_Bar5
;Bar 18
	sound_call Music_IcirrusCity_Ch3_Bar6
;Bar 19
	sound_call Music_IcirrusCity_Ch3_Bar1
;Bar 20
	sound_call Music_IcirrusCity_Ch3_Bar2
;Bar 21
	sound_call Music_IcirrusCity_Ch3_Bar3
;Bar 22
	sound_call Music_IcirrusCity_Ch3_Bar4
;Bar 23
	sound_call Music_IcirrusCity_Ch3_Bar5
;Bar 24
	sound_call Music_IcirrusCity_Ch3_Bar6
;Bar 25
	note B_, 4
	rest 2
	note B_, 6
	note F#, 1
	rest 3
;Bar 26
	note F#, 4
	note G_, 4
	rest 2
	note G_, 6
;Bar 27
	sound_call Music_IcirrusCity_Ch3_Bar27
;Bar 28
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note E_, 6
;Bar 29
	note G_, 2
	rest 4
	octave 4
	note C#, 4
	octave 3
	note B_, 1
	rest 3
;Bar 30
	note F#, 4
	octave 2
	note B_, 4
	rest 2
	note B_, 6
;Bar 31
	octave 3
	sound_call Music_IcirrusCity_Ch3_Bar27
;Bar 32
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note E_, 5
;Bar 33
	rest 1
	note E_, 5
	rest 1
	note E_, 8
;Bar 34
	note E_, 1
	rest 3
	note A_, 7
	rest 1
	note E_, 1
	rest 3
;Bar 35
	octave 2
	note A_, 10
	rest 2
	note_type 16, 1, 2
	note B_, 15
	note_type 12, 1, 2
;Bar 37
	octave 3
	note F#, 1
	rest 3
	note B_, 12
	note B_, 12
;Bar 38
	octave 2
	note G_, 5
;Bar 39
	rest 1
	note G_, 6
	octave 3
	note D_, 1
	rest 3
	note D_, 1
	rest 3
;Bar 40
	note D_, 1
	rest 3
	note G_, 5
	rest 1
	note G_, 6
;Bar 41
	sound_call Music_IcirrusCity_Ch3_Bar3
	octave 2
	note G_, 4
;Bar 42
	rest 2
	note G_, 6
	octave 3
	note D_, 1
	rest 3
	note D_, 1
	rest 3
;Bar 43
	note D_, 1
	rest 3
	note F_, 4
	rest 2
	note F_, 6
;Bar 44
	sound_call Music_IcirrusCity_Ch3_Bar6
	sound_jump Music_IcirrusCity_Ch3_loop

Music_IcirrusCity_Ch3_Bar1:
	octave 2;
	note G_, 5
	rest 1
	note G_, 6
	octave 3
	note D_, 1
	rest 3
	sound_ret

Music_IcirrusCity_Ch3_Bar2:
	note D_, 1;
	rest 3
	note D_, 1
	rest 3
	note G_, 5
	rest 1
	note G_, 6
	sound_ret

Music_IcirrusCity_Ch3_Bar3:
	note D_, 1
	rest 3
	sound_loop 3, Music_IcirrusCity_Ch3_Bar3
	sound_ret

Music_IcirrusCity_Ch3_Bar4:
	octave 2;
	note G_, 4
	rest 2
	note G_, 6
	octave 3
	note D_, 1
	rest 3
	sound_ret

Music_IcirrusCity_Ch3_Bar5:
	note D_, 1;
	rest 3
	note D_, 1
	rest 3
	note F_, 4
	rest 2
	note F_, 6
	sound_ret

Music_IcirrusCity_Ch3_Bar6:
	note C_, 1
	rest 3
	sound_loop 3, Music_IcirrusCity_Ch3_Bar6
	sound_ret

Music_IcirrusCity_Ch3_Bar27:
	note F#, 2;
	rest 2
	note F#, 2
	rest 2
	note G_, 5
	rest 1
	note G_, 6
	sound_ret

; ============================================================================================================

Music_IcirrusCity_Ch4:
	toggle_noise 5
	drum_speed 12
;Bar 1
	sound_call Music_IcirrusCity_Ch4_Bar1
;Bar 2
	sound_call Music_IcirrusCity_Ch4_Bar1
;Bar 3
	sound_call Music_IcirrusCity_Ch4_Bar3
;Bar 4
	sound_call Music_IcirrusCity_Ch4_Bar1
;Bar 5
	sound_call Music_IcirrusCity_Ch4_Bar1
;Bar 6
	sound_call Music_IcirrusCity_Ch4_Bar3
;Bar 7
Music_IcirrusCity_Ch4_loop:
	sound_call Music_IcirrusCity_Ch4_Bar7
;Bar 8
	sound_call Music_IcirrusCity_Ch4_Bar8
;Bar 9
	sound_call Music_IcirrusCity_Ch4_Bar9
;Bar 10
	sound_call Music_IcirrusCity_Ch4_Bar7
;Bar 11
	sound_call Music_IcirrusCity_Ch4_Bar8
;Bar 12
	sound_call Music_IcirrusCity_Ch4_Bar9
;Bar 13
	sound_call Music_IcirrusCity_Ch4_Bar13
;Bar 14
	sound_call Music_IcirrusCity_Ch4_Bar14
;Bar 15
	drum_note 5, 2
	drum_note 5, 2
	drum_note 12, 4
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 2
	toggle_noise 5
	drum_note 12, 2
;Bar 16
	sound_call Music_IcirrusCity_Ch4_Bar16
;Bar 17
	sound_call Music_IcirrusCity_Ch4_Bar17
;Bar 18
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 12, 2
;Bar 19
	sound_call Music_IcirrusCity_Ch4_Bar13
;Bar 20
	sound_call Music_IcirrusCity_Ch4_Bar14
;Bar 21
	drum_note 5, 2
	drum_note 5, 2
	drum_note 12, 4
	toggle_noise 0
	drum_note 10, 4
	drum_note 10, 2
	toggle_noise 5
	drum_note 12, 2
;Bar 22
	sound_call Music_IcirrusCity_Ch4_Bar16
;Bar 23
	toggle_noise 0
	drum_note 10, 4
	drum_note 10, 4
	drum_note 3, 2
	toggle_noise 5
	drum_note 12, 2
	drum_note 5, 2
	toggle_noise 0
	drum_note 4, 2
;Bar 24 V
	toggle_noise 5
	drum_note 5, 2
	drum_note 5, 2
	drum_note 12, 4
	toggle_noise 0
	drum_note 10, 4
	drum_note 10, 2
	toggle_noise 5
	drum_note 12, 1
	drum_note 12, 1
;Bar 25 V
	drum_note 9, 6
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 2
	drum_note 5, 2
	toggle_noise 0
	drum_note 10, 4
;Bar 26 V
	drum_note 10, 4
	drum_note 3, 2
	toggle_noise 5
	drum_note 12, 4
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 4
;Bar 27
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 2
	toggle_noise 5
	drum_note 12, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 12, 4
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
;Bar 28
	drum_note 5, 4
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	toggle_noise 5
	drum_note 12, 4
;Bar 29
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 4
	drum_note 12, 4
	toggle_noise 0
	drum_note 10, 4
;Bar 30
	drum_note 10, 4
	toggle_noise 5
	drum_note 9, 6
	toggle_noise 0
	drum_note 3, 6
;Bar 31
	drum_note 10, 4
	drum_note 10, 4
	drum_note 3, 2
	toggle_noise 5
	drum_note 12, 4
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
;Bar 32
	drum_note 5, 4
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 2
;Bar 33
	rest 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5;
	drum_note 5, 4
	drum_note 12, 4
	toggle_noise 0
	drum_note 3, 4
;Bar 34 V
	drum_note 3, 2
	toggle_noise 5
	drum_note 12, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 4
	drum_note 5, 2
	drum_note 5, 4
;Bar 35 V
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 4
	drum_note 5, 2
	drum_note 5, 4
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 2
;Bar 36
	rest 2
	drum_note 5, 2
	toggle_noise 0
	drum_note 3, 4
	toggle_noise 5
	drum_note 5, 4
	toggle_noise 0
	drum_note 3, 4
;Bar 37 V
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 4
	drum_note 5, 2
	toggle_noise 0
	drum_note 3, 4
	toggle_noise 5
;Bar 38 V
	drum_note 5, 4
	toggle_noise 0
	drum_note 10, 4
	drum_note 10, 2
	toggle_noise 5
	drum_note 5, 2
	toggle_noise 0
	drum_note 3, 4
	toggle_noise 5
;Bar 39
	sound_call Music_IcirrusCity_Ch4_Bar39
;Bar 40
	sound_call Music_IcirrusCity_Ch4_Bar40
;Bar 41
	sound_call Music_IcirrusCity_Ch4_Bar41
;Bar 42
	sound_call Music_IcirrusCity_Ch4_Bar39
;Bar 43
	sound_call Music_IcirrusCity_Ch4_Bar40
;Bar 44
	drum_note 6, 4;
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 4
	sound_jump Music_IcirrusCity_Ch4_loop

Music_IcirrusCity_Ch4_Bar1:
	toggle_noise 0
	drum_note 3, 4
	toggle_noise 5;
	drum_note 2, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 6, 4
	drum_note 6, 4
	sound_ret

Music_IcirrusCity_Ch4_Bar2:
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	toggle_noise 5
	drum_note 2, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	sound_ret

Music_IcirrusCity_Ch4_Bar3:
	drum_note 6, 4;
	drum_note 6, 4
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 4
	toggle_noise 5
	sound_ret

Music_IcirrusCity_Ch4_Bar7:
	toggle_noise 0
	drum_note 3, 4
	toggle_noise 5;
	drum_note 5, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 4
	drum_note 5, 4
	sound_ret

Music_IcirrusCity_Ch4_Bar8:
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	toggle_noise 5
	drum_note 5, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	sound_ret

Music_IcirrusCity_Ch4_Bar9:
	drum_note 5, 2;
	drum_note 5, 2
	drum_note 12, 4
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 4
	toggle_noise 5
	sound_ret

Music_IcirrusCity_Ch4_Bar13:
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5;
	drum_note 12, 2
	drum_note 5, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 4
	drum_note 5, 4
	sound_ret

Music_IcirrusCity_Ch4_Bar14:
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	toggle_noise 5
	drum_note 12, 2
	drum_note 5, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	sound_ret

Music_IcirrusCity_Ch4_Bar16:
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5;
	drum_note 12, 2
	drum_note 5, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 5, 4
	drum_note 5, 4
	sound_ret

Music_IcirrusCity_Ch4_Bar17:
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	toggle_noise 5
	drum_note 12, 2
	drum_note 5, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	sound_ret

Music_IcirrusCity_Ch4_Bar39:
	drum_note 2, 2;
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 6, 4
	drum_note 6, 4
	toggle_noise 0
	drum_note 3, 4
	toggle_noise 5
	sound_ret

Music_IcirrusCity_Ch4_Bar40:
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 4
	toggle_noise 5
	drum_note 2, 2
	toggle_noise 0
	drum_note 3, 2
	toggle_noise 5
	drum_note 6, 4
	sound_ret

Music_IcirrusCity_Ch4_Bar41:
	drum_note 6, 4;
	toggle_noise 0
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	toggle_noise 5
	sound_ret