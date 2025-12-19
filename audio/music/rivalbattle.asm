Music_RivalBattle:
	channel_count 4
	channel 1, Music_HughBattle_Ch1
	channel 2, Music_HughBattle_Ch2
	channel 3, Music_HughBattle_Ch3
	channel 4, Music_HughBattle_Ch4

Music_HughBattle_Ch1:
	volume 7, 7
	duty_cycle $3
	note_type 6, 10, 7
	stereo_panning FALSE, TRUE
	tempo 122
;Bar 1
	sound_call Music_HughBattle_Ch1_Bar1
;Bar 2
	octave 1
	sound_call Music_HughBattle_Ch1_Type2
	octave 2
	note C#, 2
	octave 1
	note C#, 1
	rest 1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
;Bar 3
	octave 4
	sound_call Music_HughBattle_Ch1_Bar3
;Bar 4
	octave 1
	sound_call Music_HughBattle_Ch1_Type2
	octave 2
	note C#, 2
	octave 1
	note C#, 1
	rest 1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
;Bar 5
Music_HughBattle_Ch1_loop:
	octave 2
	note A_, 2
	octave 3
	note E_, 1
	rest 3
	octave 2
	note A_, 1
	rest 5
	note A_, 2
	octave 3
	note E_, 1
	rest 3
	octave 2
	note A_, 1
	rest 1
	octave 3
	note G_, 5
	rest 3
	note G#, 1
	rest 3
;Bar 6
	octave 2
	note A_, 2
	octave 3
	note E_, 1
	rest 3
	octave 2
	note A_, 1
	rest 5
	note A_, 2
	octave 3
	note E_, 1
	rest 3
	octave 2
	note A_, 1
	rest 9
	octave 3
	note E_, 1
	rest 3
;Bar 7
	octave 2
	note A_, 4
	note G#, 1
	rest 1
	note_type 12, 10, 8
	note F#, 16
	volume_envelope 10, 7
	note F#, 5
	note_type 6, 10, 7
;Bar 8
	rest 16
;Bar 9
	note A_, 2
	octave 3
	note E_, 2
	octave 2
	note A_, 1
	rest 3
	note A_, 1
	rest 3
	note A_, 2
	octave 3
	note E_, 1
	rest 5
	note G_, 5
	rest 3
	note G#, 1
	rest 3
;Bar 10
	octave 2
	note A_, 2
	octave 3
	note E_, 2
	octave 2
	note A_, 1
	rest 3
	note A_, 1
	rest 3
	note A_, 2
	octave 3
	note E_, 1
	rest 5
	note G_, 5
	rest 3
	note E_, 1
	rest 3
;Bar 11
	octave 2
	note B_, 4
	note A_, 1
	rest 1
	octave 3
	note_type 12, 10, 8
	note C#, 16
	volume_envelope 10, 7
	note C#, 8
	note_type 6, 10, 7
;Bar 12
	rest 10
;Bar 13
	sound_call Music_HughBattle_Ch1_Bar1
;Bar 14
	octave 1
	sound_call Music_HughBattle_Ch1_Type2
	octave 2
	note C#, 2
	octave 1
	note C#, 1
	rest 1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
;Bar 15
	note F#, 4
	sound_call Music_HughBattle_Ch1_Type2
	sound_call Music_HughBattle_Ch1_Type2
	sound_call Music_HughBattle_Ch1_Type2
	sound_call Music_HughBattle_Ch1_Type2
	sound_call Music_HughBattle_Ch1_Type2
	note F#, 3
	rest 2
	octave 2
	note C#, 3
;Bar 16
	octave 1
	note A_, 4
	note A#, 4
	rest 12
	octave 2
	note E_, 4
	rest 4
	note F_, 4
;Bar 17
Music_HughBattle_Ch1_Bar17:
	note F#, 4
	note E_, 1
	rest 1
	sound_loop 4, Music_HughBattle_Ch1_Bar17
	note F#, 4
	note E_, 4
;Bar 18
	octave 1
Music_HughBattle_Ch1_Bar18:
	note E_, 1
	rest 1
	note F#, 3
	rest 1
	sound_loop 4, Music_HughBattle_Ch1_Bar18
	note F_, 4
	note B_, 4
;Bar 19
	octave 3
	note C#, 1
	rest 1
	octave 2
	note B_, 2
	octave 3
	note C#, 3
	rest 1
	note F#, 8
	note A_, 8
	octave 4
	note F#, 4
	note E_, 8
;Bar 20
	note C#, 1
	rest 3
	octave 3
	note A_, 4
	note B_, 1
	rest 3
	note A_, 1
	rest 1
	note G#, 1
	rest 3
	note E_, 1
	rest 1
	note F#, 1
	rest 3
	note A_, 2
	note B_, 2
;Bar 21
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 15
	rest 1
	note D_, 2
	octave 3
	note A_, 2
	note F#, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	note D_, 1
	rest 1
;Bar 22
	octave 3
	sound_call Music_HughBattle_Ch1_Type3
	octave 2
	note E_, 2
	note F_, 2
	note A_, 2
	note B_, 2
;Bar 23
	octave 3
	note A_, 8
	note F#, 8
	note A_, 8
	octave 4
	note F#, 4
	note A_, 8
;Bar 24
	note F#, 1
	rest 3
	octave 3
	note A_, 4
	note B_, 1
	rest 3
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 3
	note A_, 2
	note B_, 2
;Bar 25
	octave 4
	note D_, 2
	octave 3
	note A_, 1
	rest 3
	octave 4
	note D_, 11
	rest 3
	note D_, 2
	octave 3
	note A_, 2
	note F#, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	note D_, 1
	rest 1
;Bar 26
	octave 3
	sound_call Music_HughBattle_Ch1_Type3
	octave 4
	note D_, 2
	note E_, 1
	rest 5
;Bar 27
	sound_call Music_HughBattle_Ch1_Bar3
;Bar 28
	octave 1
	sound_call Music_HughBattle_Ch1_Type2
	octave 2
	note C#, 2
	octave 1
	note C#, 1
	rest 1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
	sound_call Music_HughBattle_Ch1_Type1
;Bar 29
	note D_, 4
	sound_call Music_HughBattle_Ch1_Type4
	sound_call Music_HughBattle_Ch1_Type4
	sound_call Music_HughBattle_Ch1_Type4
	sound_call Music_HughBattle_Ch1_Type4
	sound_call Music_HughBattle_Ch1_Type4
	sound_call Music_HughBattle_Ch1_Type4
	octave 2
	note C#, 4
;Bar 30
	octave 1
	note B_, 4
	sound_call Music_HughBattle_Ch1_Type5
	sound_call Music_HughBattle_Ch1_Type5
	sound_call Music_HughBattle_Ch1_Type5
	sound_call Music_HughBattle_Ch1_Type5
	octave 2
	note E_, 4
	octave 1
	sound_call Music_HughBattle_Ch1_Type5
	octave 2
	note F#, 4
;Bar 31
	note G#, 4
	note E_, 1
	rest 1
	note A_, 4
	note E_, 1
	rest 1
	note B_, 4
	note E_, 1
	rest 1
	note A_, 4
	note E_, 1
	rest 1
	note G#, 4
	note F#, 4
;Bar 32
Music_HughBattle_Ch1_Bar32:
	note A_, 1
	rest 1
	octave 3
	note C#, 3
	rest 1
	octave 2
	sound_loop 4, Music_HughBattle_Ch1_Bar32
	note A_, 4
	note G#, 4
;Bar 33
	note D_, 2
	rest 2
	sound_call Music_HughBattle_Ch1_Type4
	note A_, 4
	sound_call Music_HughBattle_Ch1_Type4
	sound_call Music_HughBattle_Ch1_Type4
	sound_call Music_HughBattle_Ch1_Type4
	note F#, 4
	note D_, 4
;Bar 34
	note D_, 2
	rest 2
	sound_call Music_HughBattle_Ch1_Type4
	note F#, 4
	sound_call Music_HughBattle_Ch1_Type4
	sound_call Music_HughBattle_Ch1_Type4
	sound_call Music_HughBattle_Ch1_Type4
	note F_, 4
	note C#, 4
;Bar 35
	note C#, 1
	rest 3
	sound_call Music_HughBattle_Ch1_Type2
	note F_, 4
	note C#, 4
	note C#, 1
	rest 3
	sound_call Music_HughBattle_Ch1_Type2
	note F_, 4
	note G#, 4
;Bar 36
	note F#, 1
	rest 1
	note A#, 3
	note C#, 1
	rest 2
	note F#, 3
	rest 1
	octave 1
	note A#, 1
	rest 1
	octave 2
	note C#, 3
	rest 1
	octave 1
	note F#, 1
	rest 1
	note A#, 3
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 4
;Bar 37
	duty_cycle $2
	octave 3
	note E_, 6
	note F#, 2
	rest 4
	octave 2
	note B_, 16
	octave 3
	note C#, 1
	rest 3
;Bar 38
	note E_, 6
	note F#, 2
	rest 4
	note D_, 16
	note E_, 2
	rest 2
;Bar 39
	duty_cycle $3
	octave 4
	note C#, 6
	rest 2
	note C#, 2
	rest 4
	note E_, 2
	note C#, 2
	rest 2
	octave 3
	note G#, 2
	rest 2
	note F_, 2
	rest 2
	note G#, 2
	rest 2
;Bar 40
	octave 4
	note C#, 4
	octave 3
	note F#, 2
	note A#, 4
	octave 4
	note F#, 2
	octave 3
	note A#, 4
	octave 4
	note E_, 6
	note D_, 6
	note E_, 4
;Bar 41
	note E_, 6
	note F#, 2
	rest 4
	octave 3
	note B_, 14
	rest 2
	octave 4
	note D_, 4
;Bar 42
	note E_, 5
	rest 1
	note F#, 2
	rest 4
	note D_, 13
	rest 3
	note E_, 1
	rest 1
	volume_envelope 10, 8
	note C#, 16
	volume_envelope 10, 7
	note C#, 10
;Bar 43
	rest 16
;Bar 44
	sound_call Music_HughBattle_Ch1_Type2
	sound_call Music_HughBattle_Ch1_Type2
	sound_call Music_HughBattle_Ch1_Type2
	sound_call Music_HughBattle_Ch1_Type2
	sound_call Music_HughBattle_Ch1_Type2
	note C#, 4
	sound_jump Music_HughBattle_Ch1_loop

Music_HughBattle_Ch1_Bar3:
	note C#, 2;
	rest 2
	octave 3
	note B_, 1
	rest 1
	note A_, 1
	rest 5
	note A_, 2
	rest 2
	note G#, 1
	rest 1
	note F#, 1
	rest 5
	note F#, 2
	rest 2
	note E_, 1
	rest 1
	note C#, 1
	rest 1
	sound_ret

Music_HughBattle_Ch1_Bar1:
	octave 4;
	note C#, 2
	rest 2
	octave 3
	note B_, 1
	rest 1
	note A#, 1
	rest 5
	note A#, 2
	rest 2
	note G#, 1
	rest 1
	note F#, 1
	rest 5
	note F#, 2
	rest 2
	note E_, 1
	rest 1
	note C#, 1
	rest 1
	sound_ret

Music_HughBattle_Ch1_Type1:
	octave 2;
	note C#, 2
	octave 1
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	sound_ret

Music_HughBattle_Ch1_Type2:
	note C#, 1;
	rest 1
	note C#, 1
	rest 1
	sound_ret

Music_HughBattle_Ch1_Type3:
	note B_, 3
	rest 1
	note G#, 1
	rest 1
	sound_loop 4, Music_HughBattle_Ch1_Type3
	sound_ret

Music_HughBattle_Ch1_Type4:
	note D_, 1;
	rest 1
	note D_, 1
	rest 1
	sound_ret

Music_HughBattle_Ch1_Type5:
	note B_, 1;
	rest 1
	note B_, 1
	rest 1
	sound_ret

; ============================================================================================================

Music_HughBattle_Ch2:
	duty_cycle $0
	note_type 6, 12, 7
	vibrato 0, 2, 1
	stereo_panning TRUE, FALSE
;Bar 1
	octave 4
	sound_call Music_HughBattle_Ch2_Bar1_2
;Bar 2
	duty_cycle $1
	octave 1
	note F#, 2
	note C#, 2
	note A#, 2
	note F#, 2
	octave 2
	note C#, 2
	octave 1
	note A#, 2
	octave 2
	note F#, 2
	note C#, 2
	note A#, 2
	note F#, 2
	octave 3
	note C#, 2
	octave 2
	note A#, 2
	octave 3
	note F#, 2
	note C#, 2
	note A#, 2
	octave 4
	note C#, 2
;Bar 3
	duty_cycle $0
	octave 4
	sound_call Music_HughBattle_Ch2_Bar3_4
;Bar 4
	duty_cycle $1
	rest 4
	note C#, 3
	rest 3
	note C#, 3
	rest 3
	note E_, 3
	rest 3
	note C#, 3
	rest 3
	note E_, 3
	rest 1
	duty_cycle $0
;Bar 5
Music_HughBattle_Ch2_loop:
	volume_envelope 12, 7
	octave 3
	note A_, 2
	octave 4
	note F#, 1
	rest 3
	octave 3
	note A_, 1
	rest 5
	note A_, 2
	octave 4
	note F#, 1
	rest 3
	octave 3
	note A_, 1
	rest 1
	octave 4
	note A_, 5
	rest 3
	note A#, 1
	rest 3
;Bar 6
	octave 3
	note A_, 2
	octave 4
	note F#, 1
	rest 3
	octave 3
	note A_, 1
	rest 5
	note A_, 2
	octave 4
	note F#, 1
	rest 3
	octave 3
	note A_, 1
	rest 1
	octave 4
	note A_, 5
	rest 3
	note F#, 1
	rest 3
;Bar 7
	octave 3
	note E_, 4
	note D#, 1
	rest 1
	note_type 12, 11, 8
	note C#, 16
	volume_envelope 11, 7
	note C#, 5
	note_type 6, 12, 7
;Bar 8
	rest 16
;Bar 9
	note A_, 2
	octave 4
	note F#, 2
	octave 3
	note A_, 1
	rest 3
	note A_, 1
	rest 3
	note A_, 2
	octave 4
	note F#, 1
	rest 5
	note A_, 5
	rest 3
	note A#, 1
	rest 3
;Bar 10
	octave 3
	note A_, 2
	octave 4
	note F#, 2
	octave 3
	note A_, 1
	rest 3
	note A_, 1
	rest 3
	note A_, 2
	octave 4
	note F#, 1
	rest 5
	note A_, 5
	rest 3
	note F#, 1
	rest 3
;Bar 11
	octave 3
	note E_, 4
	note D#, 1
	rest 1
	note_type 12, 11, 8
	note F#, 16
	volume_envelope 11, 7
	note F#, 8
	note_type 6, 12, 7
;Bar 12
	rest 10
;Bar 13
	octave 4
	sound_call Music_HughBattle_Ch2_Bar1_2
	rest 16
	rest 16
;Bar 15
	octave 2
	sound_call Music_HughBattle_Ch2_Type2
	sound_call Music_HughBattle_Ch2_Type2
	sound_call Music_HughBattle_Ch2_Type2
	sound_call Music_HughBattle_Ch2_Type2
	note F#, 2
	note E_, 1
	rest 1
	octave 3
	note C#, 2
	octave 2
	note B_, 1
	rest 1
;Bar 16
	note A_, 4
	note A#, 4
	octave 4
	sound_call Music_HughBattle_Ch2_Bar16
;Bar 17
	note F#, 1
	rest 16
	rest 15
;Bar 18
	octave 2
	note E_, 1
	rest 1
	sound_call Music_HughBattle_Ch2_Type2
	sound_call Music_HughBattle_Ch2_Type2
	sound_call Music_HughBattle_Ch2_Type2
	note F#, 3
	rest 1
	note E_, 2
	note F_, 2
	note A_, 2
	note B_, 2
;Bar 19
	octave 3
	note F#, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 3
	rest 1
	octave 4
	note C#, 8
	note F#, 8
	octave 5
	note C#, 4
	octave 4
	note B_, 8
;Bar 20
	note A_, 1
	rest 3
	octave 4
	note_type 12, 11, 8
	note F#, 16
	volume_envelope 11, 7
	note F#, 12
	note_type 6, 12, 7
;Bar 22
	octave 4
	sound_call Music_HughBattle_Ch2_Type1
	note E_, 2
	note F_, 2
	note A_, 2
	note B_, 2
;Bar 23
	octave 4
	note F#, 8
	note C#, 8
	note F#, 8
	octave 5
	note C#, 4
	note F#, 8
;Bar 24
	note C#, 1
	rest 3
	octave 4
	note_type 12, 11, 8
	note F#, 16
	volume_envelope 11, 7
	note F#, 12
	note_type 6, 12, 7
;Bar 26
	sound_call Music_HughBattle_Ch2_Type1
	octave 4
	note G#, 2
	note B_, 1
	rest 5
;Bar 27
	sound_call Music_HughBattle_Ch2_Bar3_4
	rest 16
	rest 16
	rest 12
;Bar 29
	octave 4
	note A_, 1
	rest 3
	note G#, 1
	rest 3
	note A_, 1
	rest 3
	note F#, 4
	rest 2
	note D_, 2
;Bar 30
	octave 3
	note A_, 1
	rest 11
	octave 4
	note A_, 1
	rest 3
	note G#, 1
	rest 3
	note A_, 1
	rest 3
	note B_, 6
	note G#, 2
;Bar 31
	note_type 12, 11, 8
	note E_, 8
	volume_envelope 11, 7
	note E_, 4
	note_type 6, 12, 7
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note_type 12, 11, 8
	note C#, 8
	volume_envelope 11, 7
	note C#, 4
	note_type 6, 12, 7
;Bar 32
	rest 16
	rest 8
;Bar 33
	note A_, 1
	rest 3
	note G#, 1
	rest 3
	note A_, 1
	rest 3
	note F#, 3
	rest 3
	note D_, 2
;Bar 34
	octave 3
	note A_, 1
	rest 11
	octave 4
	note A_, 1
	rest 3
	note G#, 1
	rest 3
	note A_, 1
	rest 3
	note B_, 6
	note G#, 2
;Bar 35
	octave 5
	note_type 12, 11, 8
	note C#, 8
	volume_envelope 11, 7
	note C#, 4
	note_type 6, 12, 7
	octave 4
	note B_, 1
	rest 1
	octave 5
	note C#, 1
	rest 1
	octave 4
	note_type 12, 11, 8
	note A#, 8
	volume_envelope 11, 7
	note A#, 4
	note_type 6, 12, 7
;Bar 36
	rest 8
	note F#, 4
;Bar 37
	duty_cycle $1
	vibrato 0, 0, 0
	note C#, 6
	note D_, 2
	rest 4
	octave 3
	note F#, 16
	note A_, 2
	rest 2
;Bar 38
	note B_, 6
	octave 4
	note C#, 2
	rest 4
	octave 3
	note A_, 16
	note B_, 2
	rest 2
;Bar 39
	duty_cycle $0
	vibrato 0, 2, 1
	octave 4
	note G#, 6
	rest 2
	note G#, 2
	rest 4
	note A_, 2
	note B_, 2
	rest 2
	note G#, 2
	rest 2
	note C#, 2
	rest 2
	note E_, 2
	rest 2
;Bar 40
	note G#, 6
	note F#, 1
	rest 5
	note F#, 1
	rest 16
	rest 3
;Bar 41
	octave 5
	note C#, 6
	note D_, 2
	rest 4
	octave 4
	note F#, 15
	rest 1
	note A_, 4
;Bar 42
	note B_, 6
	octave 5
	note C#, 2
	rest 4
	octave 4
	note A_, 14
	rest 2
	note B_, 1
	rest 1
	volume_envelope 11, 8
	note G#, 16
	volume_envelope 11, 7
	note G#, 10
;Bar 43
	rest 16
;Bar 44
	sound_call Music_HughBattle_Ch2_Bar16
	sound_jump Music_HughBattle_Ch2_loop

Music_HughBattle_Ch2_Bar1_2:
	note E_, 3
	rest 1
	note D#, 1
	rest 1
	note C#, 1
	rest 5
	note C#, 3
	rest 1
	octave 3
	note B_, 1
	rest 1
	note A#, 1
	rest 5
	note A#, 3
	rest 1
	note G#, 1
	rest 1
	note F#, 1
	rest 1
	sound_ret

Music_HughBattle_Ch2_Bar3_4:
	note F#, 3;
	rest 1
	note E_, 1
	rest 1
	note C#, 1
	rest 5
	note C#, 3
	rest 1
	octave 3
	note B_, 1
	rest 1
	note A_, 1
	rest 5
	note A_, 3
	rest 1
	note G#, 1
	rest 1
	note F#, 1
	rest 1
	sound_ret

Music_HughBattle_Ch2_Bar16:
	note E_, 1
	rest 1
	sound_loop 10, Music_HughBattle_Ch2_Bar16
	note F_, 4
	sound_ret

Music_HughBattle_Ch2_Type1:
	octave 4
	note E_, 3
	rest 1
	octave 3
	note B_, 1
	rest 1
	sound_loop 4, Music_HughBattle_Ch2_Type1
	sound_ret

Music_HughBattle_Ch2_Type2:
	note F#, 3;
	rest 1
	note E_, 1
	rest 1
	sound_ret

; ============================================================================================================

Music_HughBattle_Ch3:
	note_type 6, 1, 6
;Bar 1
	octave 1
	sound_call Music_HughBattle_Ch3_Type2
	octave 2
	note A#, 4
;Bar 2
	octave 2
	note F#, 2
	octave 1
	sound_call Music_HughBattle_Ch3_Type3
;Bar 3
	sound_call Music_HughBattle_Ch3_Type2
	octave 2
	note A_, 4
;Bar 4
	note C#, 2
	rest 6
	octave 1
	note B_, 2
	rest 2
	octave 3
	note C#, 4
	octave 1
	note A_, 2
	rest 2
	octave 3
	note F#, 4
	octave 1
	note G#, 2
	rest 2
	octave 2
	note B_, 4
;Bar 5
Music_HughBattle_Ch3_loop:
	octave 2
	sound_call Music_HughBattle_Ch3_Type1_5
	note G_, 4
	note E_, 4
;Bar 6
	sound_call Music_HughBattle_Ch3_Type1_5
	note G_, 7
	rest 1
;Bar 7
	sound_call Music_HughBattle_Ch3_Type1
	note G_, 4
	note E_, 4
;Bar 8
	sound_call Music_HughBattle_Ch3_Type1_5
	note G_, 7
	rest 1
;Bar 9
	sound_call Music_HughBattle_Ch3_Type1_5
	note G_, 4
	note E_, 4
;Bar 10
	sound_call Music_HughBattle_Ch3_Type1_5
	note G_, 7
	rest 1
;Bar 11
	sound_call Music_HughBattle_Ch3_Type1_5
	note G_, 4
	note E_, 4
;Bar 12
	sound_call Music_HughBattle_Ch3_Type1_5
	note G_, 7
	rest 1
;Bar 13
	octave 1
	sound_call Music_HughBattle_Ch3_Type4
;Bar 14
	sound_call Music_HughBattle_Ch3_Type3
	note F#, 1
	rest 1
;Bar 15
	octave 2
	note F#, 8
	note E_, 8
	note F#, 4
	octave 3
	note E_, 4
	rest 4
	note F_, 4
;Bar 16
	octave 2
	sound_call Music_HughBattle_Ch3_Type5
	sound_call Music_HughBattle_Ch3_Type5
	note F#, 3
	rest 1
	sound_call Music_HughBattle_Ch3_Type5
	sound_call Music_HughBattle_Ch3_Type5
	note F#, 3
	rest 1
;Bar 17
	sound_call Music_HughBattle_Ch3_Type5
	sound_call Music_HughBattle_Ch3_Type5
	sound_call Music_HughBattle_Ch3_Type5
	sound_call Music_HughBattle_Ch3_Type5
	note F#, 3
	rest 1
	note E_, 4
;Bar 18
	note E_, 1
	rest 1
	sound_call Music_HughBattle_Ch3_Type5
	sound_call Music_HughBattle_Ch3_Type5
	sound_call Music_HughBattle_Ch3_Type5
	note F#, 3
	rest 1
	note F_, 2
	rest 2
	note B_, 2
	rest 2
;Bar 19
	sound_call Music_HughBattle_Ch3_Type1
	note G_, 4
	note E_, 4
;Bar 20
	sound_call Music_HughBattle_Ch3_Type1
	note A_, 3
	rest 1
	note G#, 2
	rest 2
;Bar 21
	sound_call Music_HughBattle_Ch3_Bar_21
;Bar 22
	sound_call Music_HughBattle_Ch3_Type6
	sound_call Music_HughBattle_Ch3_Type6
	sound_call Music_HughBattle_Ch3_Type6
	sound_call Music_HughBattle_Ch3_Type6
	note F_, 2
	rest 2
	note B_, 2
	rest 2
;Bar 23
	sound_call Music_HughBattle_Ch3_Type1
	note F#, 4
	note E_, 4
;Bar 24
	sound_call Music_HughBattle_Ch3_Type1
	note A_, 4
	note B_, 4
;Bar 25
	sound_call Music_HughBattle_Ch3_Bar_21
;Bar 26
	sound_call Music_HughBattle_Ch3_Type6
	sound_call Music_HughBattle_Ch3_Type6
	sound_call Music_HughBattle_Ch3_Type6
	sound_call Music_HughBattle_Ch3_Type6
	note E_, 2
	octave 1
	note B_, 1
	rest 5
;Bar 27
	sound_call Music_HughBattle_Ch3_Type4
;Bar 28
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	octave 3
	note C#, 4
	octave 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	octave 2
	note B_, 4
	octave 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	octave 2
	note A_, 4
	octave 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	octave 2
	note G#, 4
;Bar 29
Music_HughBattle_Ch3_Bar29:
	note D_, 3
	rest 1
	note C#, 1
	rest 1
	sound_loop 4, Music_HughBattle_Ch3_Bar29
	note D_, 3
	rest 1
	note C#, 4
;Bar 30
	sound_call Music_HughBattle_Ch3_Type9
	sound_call Music_HughBattle_Ch3_Type9
	octave 2
	note D_, 3
	rest 1
	sound_call Music_HughBattle_Ch3_Type9
	sound_call Music_HughBattle_Ch3_Type9
	octave 2
	note D_, 3
	rest 1
;Bar 31v
Music_HughBattle_Ch3_Bar31:
	octave 2
	note C#, 3
	rest 1
	octave 1
	note B_, 1
	rest 1
	sound_loop 4, Music_HughBattle_Ch3_Bar31
	octave 2
	note C#, 3
	rest 1
	octave 1
	note B_, 4
;Bar 32v
	octave 2
	note E_, 1
	rest 1
	sound_call Music_HughBattle_Ch3_Type5
	note F#, 3
	rest 1
	octave 3
	note F#, 4
	rest 2
	octave 2
	note E_, 1
	rest 1
	note F#, 3
	rest 1
	note A_, 4
	note G#, 4
;Bar 33v
	note D_, 4
	note C#, 2
	rest 2
	note G#, 1
	rest 1
	note A_, 5
	rest 1
	note F#, 4
	note C#, 2
	note D_, 1
	rest 1
	note G#, 2
	rest 2
	note A_, 4
;Bar 34v
	note D_, 4
	note B_, 1
	rest 3
	note A#, 1
	rest 1
	note B_, 5
	rest 1
	note E_, 4
	note D#, 2
	note E_, 1
	rest 1
	note G#, 2
	rest 2
	note B_, 4
;Bar 35v
	octave 3
	note C#, 4
	octave 2
	note G#, 1
	rest 1
	note G#, 4
	note F_, 1
	rest 1
	note F_, 4
	note C#, 1
	rest 1
	note C#, 4
	rest 2
	note C#, 4
	octave 3
	note C#, 3
	rest 1
;Bar 36v
	octave 2
	note C#, 1
	rest 1
	note F#, 3
	rest 1
	note F#, 1
	rest 1
	note A#, 3
	rest 1
	note A#, 1
	rest 1
	octave 3
	note C#, 3
	rest 1
	note C#, 1
	rest 1
	octave 2
	note A#, 3
	rest 1
	note C#, 4
	note F#, 4
;Bar 37
	note D_, 2
	rest 2
	sound_call Music_HughBattle_Ch3_Type7
	sound_call Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	sound_call Music_HughBattle_Ch3_Type7
	sound_call Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	note A_, 4
;Bar 38
	note D_, 2
	rest 2
	sound_call Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	sound_call Music_HughBattle_Ch3_Type7
	sound_call Music_HughBattle_Ch3_Type7
	sound_call Music_HughBattle_Ch3_Type7
	octave 3
	note F#, 4
	octave 2
	note A_, 4
;Bar 39
	note C#, 2
	rest 2
	sound_call Music_HughBattle_Ch3_Type8
	sound_call Music_HughBattle_Ch3_Type8
	octave 3
	note C#, 4
	octave 2
	sound_call Music_HughBattle_Ch3_Type8
	sound_call Music_HughBattle_Ch3_Type8
	octave 3
	note C#, 4
	octave 2
	note B_, 4
;Bar 40v
	sound_call Music_HughBattle_Ch3_Type5
	note C#, 3
	rest 1
	octave 1
	note B_, 1
	rest 1
	octave 2
	sound_call Music_HughBattle_Ch3_Type5
	note A#, 3
	rest 1
	note G#, 1
	rest 1
	note F#, 3
	rest 1
	note E_, 3
	rest 1
;Bar 41
	note D_, 2
	rest 2
	sound_call Music_HughBattle_Ch3_Type7
	sound_call Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	sound_call Music_HughBattle_Ch3_Type7
	sound_call Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	note A_, 4
;Bar 42
	note D_, 2
	rest 2
	sound_call Music_HughBattle_Ch3_Type7
	sound_call Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	sound_call Music_HughBattle_Ch3_Type7
	sound_call Music_HughBattle_Ch3_Type7
	octave 3
	note F#, 4
	octave 2
	note A_, 4
;Bar 43
	note C#, 2
	rest 2
	sound_call Music_HughBattle_Ch3_Type8
	octave 3
	note C#, 4
	octave 2
	sound_call Music_HughBattle_Ch3_Type8
	sound_call Music_HughBattle_Ch3_Type8
	sound_call Music_HughBattle_Ch3_Type8
	octave 3
	note C#, 4
	octave 2
	note G#, 4
;Bar 44
	note C#, 3
	rest 1
	octave 3
	note C#, 1
	rest 1
	octave 2
	note C#, 3
	rest 1
	octave 3
	note C#, 1
	octave 2
	note C#, 3
	octave 3
	note C#, 1
	rest 9
	note C#, 8
	sound_jump Music_HughBattle_Ch3_loop

Music_HughBattle_Ch3_Type1:
	note F#, 1;
	rest 3
	note E_, 1
	rest 1
	note F#, 5
	rest 1
	note C#, 4
	note C_, 2
	note C#, 1
	rest 1
	note E_, 1
	rest 3
	sound_ret

Music_HughBattle_Ch3_Type1_5:
	note F#, 3
	rest 1
	note E_, 1
	rest 1
	note F#, 5
	rest 1
	note C#, 4
	note C_, 2
	note C#, 1
	rest 1
	note E_, 2
	rest 2
	sound_ret

Music_HughBattle_Ch3_Type2:
	note F#, 2
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 2
	rest 4
	sound_loop 2, Music_HughBattle_Ch3_Type2
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	sound_ret

Music_HughBattle_Ch3_Type3:
	note F#, 1
	rest 1
	sound_loop 15, Music_HughBattle_Ch3_Type3
	sound_ret

Music_HughBattle_Ch3_Type4:
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 2
	rest 4
	sound_loop 2, Music_HughBattle_Ch3_Type4
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	sound_ret

Music_HughBattle_Ch3_Type5: ;6
	note F#, 3;
	rest 1
	note E_, 1
	rest 1
	sound_ret

Music_HughBattle_Ch3_Type6:
	note E_, 3;
	rest 1
	note D_, 1
	rest 1
	sound_ret

Music_HughBattle_Ch3_Bar_21:
	note D_, 2
	rest 2
	note C#, 1
	rest 1
	note D_, 5
	rest 1
	octave 1
	note A_, 4
	octave 2
	note D_, 2
	note C#, 1
	rest 1
	note D_, 2
	rest 2
	note F#, 4
	note C#, 4
	sound_ret

Music_HughBattle_Ch3_Type7:
	note D_, 1;
	rest 1
	note D_, 1
	rest 1
	sound_ret

Music_HughBattle_Ch3_Type8:
	note C#, 1;
	rest 1
	note C#, 1
	rest 1
	sound_ret

Music_HughBattle_Ch3_Type9:
	octave 2;
	note D_, 3
	rest 1
	octave 1
	note B_, 1
	rest 1
	sound_ret

; ============================================================================================================

Music_HughBattle_Ch4:
	toggle_noise 1
	drum_speed 6
;Bar 1
	sound_call Music_HughBattle_Ch4_Type7
	drum_note 10, 1
	drum_note 3, 2
;Bar 2
	drum_note 7, 4
	drum_note 10, 4
	drum_note 10, 6
	drum_note 10, 4
	drum_note 10, 6
	drum_note 10, 2
	drum_note 10, 6
;Bar 3
	sound_call Music_HughBattle_Ch4_Type7
	drum_note 2, 3
;Bar 4
	drum_note 7, 4
	drum_note 10, 4
	drum_note 11, 4
	drum_note 10, 4

	drum_note 11, 4
	drum_note 10, 4
	drum_note 11, 4
	drum_note 10, 4
;Bar 5
Music_HughBattle_Ch4_loop:
	drum_note 7, 4
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type1
;Bar 6
	drum_note 1, 4
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type2
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type3
;Bar 7
	drum_note 7, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
;Bar 8
	drum_note 1, 4
	drum_note 10, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 10, 6
	drum_note 1, 2
	drum_note 10, 4
	drum_note 1, 1
	drum_note 1, 1
;Bar 9
	drum_note 10, 8
	sound_call Music_HughBattle_Ch4_Type1
;Bar 10
	drum_note 1, 4
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type2
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type3
;Bar 11
	drum_note 7, 8
	sound_call Music_HughBattle_Ch4_Type2
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type3
;Bar 12
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 10, 4
	drum_note 1, 4
	drum_note 1, 4
	rest 16
	rest 16
;Bar 14
	drum_note 11, 2
	drum_note 11, 2
	drum_note 10, 4
	drum_note 11, 4
	drum_note 10, 4
	drum_note 11, 4
	drum_note 10, 4
	drum_note 11, 4
	drum_note 10, 4
;Bar 15
	drum_note 7, 4
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 10, 4
;Bar 16
	drum_note 1, 4
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type2
	drum_note 10, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 10, 4
;Bar 17
	sound_call Music_HughBattle_Ch4_Type2
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type2
	drum_note 1, 2
	drum_note 1, 2
;Bar 18
	sound_call Music_HughBattle_Ch4_Type1
	sound_call Music_HughBattle_Ch4_Type3
;Bar 19
	sound_call Music_HughBattle_Ch4_Type4
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type2
	sound_call Music_HughBattle_Ch4_Type5
;Bar 20
	drum_note 1, 4
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type2
	drum_note 10, 4
	drum_note 1, 4
	drum_note 1, 4
;Bar 21
	drum_note 10, 4
	drum_note 1, 4
	sound_call Music_HughBattle_Ch4_Type2
	sound_call Music_HughBattle_Ch4_Type5
;Bar 22
	drum_note 10, 4
	drum_note 1, 2
	drum_note 10, 4
	drum_note 1, 2
	drum_note 10, 4
	drum_note 1, 2
	drum_note 10, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 10, 4
	drum_note 1, 1
	drum_note 1, 1
;Bar 23
	sound_call Music_HughBattle_Ch4_Type4
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type2
	sound_call Music_HughBattle_Ch4_Type5
;Bar 24
	drum_note 1, 4
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type2
	drum_note 10, 4
	drum_note 1, 4
	drum_note 1, 4
;Bar 25
	drum_note 10, 4
	drum_note 1, 4
	sound_call Music_HughBattle_Ch4_Type2
	sound_call Music_HughBattle_Ch4_Type5
;Bar 26v
	drum_note 1, 4
	drum_note 10, 4
	sound_call Music_HughBattle_Ch4_Type3
	drum_note 1, 2
	drum_note 10, 6
	drum_note 1, 4
	drum_note 1, 4
;Bar 27v
	rest 16
	rest 16
;Bar 28v
	drum_note 11, 2
	drum_note 11, 2
	drum_note 10, 4
	drum_note 11, 4
	drum_note 10, 4
	drum_note 11, 4
	drum_note 10, 4
	drum_note 11, 4
	drum_note 10, 4
;Bar 29v
	drum_note 7, 4
	drum_note 10, 4
	drum_note 1, 4
	sound_call Music_HughBattle_Ch4_Type5
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
;Bar 30v
	drum_note 1, 4
	drum_note 10, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 10, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
;Bar 31v
	sound_call Music_HughBattle_Ch4_Bar31
;Bar 32v
	rest 2
	drum_note 7, 6
	drum_note 7, 6
	drum_note 7, 6
	drum_note 7, 12
;Bar 33v
	drum_note 7, 4
	drum_note 10, 4
	drum_note 1, 4
	sound_call Music_HughBattle_Ch4_Type5
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
;Bar 34v
	drum_note 1, 4
	drum_note 10, 4
	drum_note 1, 4
	sound_call Music_HughBattle_Ch4_Type5
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
;Bar 35v
	sound_call Music_HughBattle_Ch4_Bar31
;Bar 36v
	rest 2
	drum_note 7, 6
	drum_note 7, 6
	drum_note 7, 6
	drum_note 7, 12
;Bar 37v
	drum_note 7, 4
	sound_call Music_HughBattle_Ch4_Type6
	sound_call Music_HughBattle_Ch4_Type4
	sound_call Music_HughBattle_Ch4_Type6
;Bar 38v
	drum_note 1, 4
	sound_call Music_HughBattle_Ch4_Type6
	sound_call Music_HughBattle_Ch4_Type4
	sound_call Music_HughBattle_Ch4_Type6
;Bar 39v
	drum_note 1, 4
	sound_call Music_HughBattle_Ch4_Type6
	sound_call Music_HughBattle_Ch4_Type4
	sound_call Music_HughBattle_Ch4_Type6
;Bar 40v
	drum_note 1, 4
	sound_call Music_HughBattle_Ch4_Type6
	sound_call Music_HughBattle_Ch4_Type4
	sound_call Music_HughBattle_Ch4_Type6
;Bar 41v
	drum_note 1, 4
	sound_call Music_HughBattle_Ch4_Type6
	sound_call Music_HughBattle_Ch4_Type4
	sound_call Music_HughBattle_Ch4_Type6
;Bar 42v
	drum_note 1, 4 
	sound_call Music_HughBattle_Ch4_Type6 ;12
	sound_call Music_HughBattle_Ch4_Type4 ;4
	sound_call Music_HughBattle_Ch4_Type6 ;12
;Bar 43v
	drum_note 1, 4
	sound_call Music_HughBattle_Ch4_Type6
	sound_call Music_HughBattle_Ch4_Type4
	sound_call Music_HughBattle_Ch4_Type6
;Bar 44v
	drum_note 1, 4
	drum_note 2, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	sound_call Music_HughBattle_Ch4_Type6
	sound_jump Music_HughBattle_Ch4_loop

Music_HughBattle_Ch4_Type1:
	drum_note 1, 2;
	sound_loop 12, Music_HughBattle_Ch4_Type1
	sound_ret

Music_HughBattle_Ch4_Type2:
	drum_note 1, 2
	sound_loop 6, Music_HughBattle_Ch4_Type2
	sound_ret

Music_HughBattle_Ch4_Type3:
	drum_note 1, 2
	sound_loop 4, Music_HughBattle_Ch4_Type3
	sound_ret

Music_HughBattle_Ch4_Type4:
	drum_note 1, 1
	sound_loop 4, Music_HughBattle_Ch4_Type4
	sound_ret

Music_HughBattle_Ch4_Type5:
	drum_note 1, 2;
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	sound_ret

Music_HughBattle_Ch4_Type6:
	drum_note 1, 2;
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 2
	drum_note 1, 2
	sound_ret

Music_HughBattle_Ch4_Type7:
	drum_note 7, 5;
	drum_note 10, 1
	drum_note 10, 2
	drum_note 7, 4
	drum_note 10, 5
	drum_note 10, 1
	drum_note 10, 6
	drum_note 7, 5
	sound_ret
	
Music_HughBattle_Ch4_Bar31:
	drum_note 1, 4;
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 10, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	sound_ret