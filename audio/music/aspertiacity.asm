Music_AspertiaCity:
	channel_count 4
	channel 1, Music_AspertiaCity_Ch1
	channel 2, Music_AspertiaCity_Ch2
	channel 3, Music_AspertiaCity_Ch3
	channel 4, Music_AspertiaCity_Ch4

Music_AspertiaCity_Ch1:
	volume 7, 7
	duty_cycle $3
	note_type 12, 10, 7
	stereo_panning TRUE, FALSE
	tempo 222
;Bar 1
	sound_call Music_AspertiaCity_Ch1_Bar1
;Bar 2
	sound_call Music_AspertiaCity_Ch1_Bar2
;Bar 3
	sound_call Music_AspertiaCity_Ch1_Bar1
;Bar 4
	note E_, 1
	octave 3
	note C_, 1
	note E_, 1
	note F#, 2
	note E_, 1
	note C_, 1
	octave 2
	note F#, 1
	note E_, 1
	octave 3
	note C_, 1
	note E_, 1
	note C_, 1
	note G#, 1
	note F#, 1
	note E_, 1
	note F#, 1
;Bar 5
Music_AspertiaCity_Ch1_Bar5:
	octave 2
	note E_, 1
	octave 3
	note C#, 1
	note E_, 1
	note F#, 2
	note E_, 1
	note C#, 1
	octave 2
	note F#, 1
	sound_loop 2, Music_AspertiaCity_Ch1_Bar5
;Bar 6
	note E_, 1
	octave 3
	note D_, 1
	note E_, 1
	note F#, 2
	note E_, 1
	note D_, 1
	octave 2
	note F#, 1
	note E_, 1
	octave 3
	note D_, 1
	note E_, 1
	note D_, 1
	note F#, 1
	note E_, 1
	note G#, 1
	note F#, 1
;Bar 7
	octave 2
	note A_, 1
	octave 3
	note E_, 1
	note A_, 1
	note B_, 2
	note A_, 1
	note E_, 1
	octave 2
	note B_, 1
	note A_, 1
	octave 3
	note E_, 1
	note A_, 1
	note E_, 1
	rest 1
	octave 4
	note C_, 1
	octave 3
	note A_, 1
	octave 4
	note E_, 1
;Bar 8
	octave 2
	note A_, 1
	octave 3
	note E_, 1
	note A_, 1
	octave 4
	note C_, 2
	octave 3
	note A_, 1
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note A_, 1
	octave 4
	note D_, 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note E_, 1
	note D_, 1
	note F#, 1
;Bar 9
	octave 3
	duty_cycle $2
	note E_, 4
	note D#, 4
	note F#, 4
	note E_, 4
;Bar 10
	note G#, 4
	note F#, 4
	note A_, 4
	note G#, 4
;Bar 11
	note B_, 8
	rest 13
;Bar 12
	volume_envelope 10, 7
	duty_cycle $3
	octave 2
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 2
	octave 3
	note D_, 4
	note C_, 2
;Bar 13
	octave 2
	note B_, 3
	note A_, 1
	note B_, 9
	rest 8
;Bar 14
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 2
	octave 3
	note D_, 2
	rest 2
	note E_, 2
;Bar 15
	note E_, 6
	rest 1
	note A_, 5
	octave 4
	note C#, 4
;Bar 16
	octave 3
	note E_, 6
	rest 1
	note A_, 5
	note_type 6, 10, 7
	note C_, 1
	note E_, 1
	note F#, 1
	note A_, 1
	octave 4
	note C_, 1
	note D#, 1
	note F#, 1
	note A_, 1
;Bar 17
	note_type 12, 10, 7
	note F#, 4
	note E_, 4
	note D_, 4
	octave 3
	note B_, 4
;Bar 18
	note_type 8, 10, 7
	note D_, 1
	octave 2
	note B_, 1
	note G_, 1
	note E_, 1
	note G_, 1
	note B_, 1
	octave 3
	note G_, 1
	note E_, 1
	note C#, 1
	octave 2
	note A_, 1
	octave 3
	note C#, 1
	note E_, 1
	note A_, 1
	note G_, 1
	note E_, 1
	note C#, 1
	note E_, 1
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	note A_, 1
	note F#, 1
	note D#, 1
	note F#, 1
	note A_, 1
;Bar 19
	note_type 12, 10, 7
	octave 2
	note B_, 5
	rest 1
	octave 3
	note C_, 1
	octave 2
	note B_, 1
	note A_, 2
	note B_, 1
	note F#, 2
	note E_, 2
	octave 3
	note D_, 1
;Bar 20
	octave 2
	note A_, 5
	rest 1
	note B_, 1
	note A_, 1
	note G#, 1
	octave 3
	note E_, 1
	note B_, 1
	note E_, 1
	note B_, 1
	note E_, 1
	note D_, 1
	octave 2
	note B_, 1
;Bar 21
	octave 3
	note C_, 5
	rest 1
	note E_, 1
	note D_, 1
	note C_, 2
	octave 2
	note A_, 1
	note B_, 1
	note A_, 3
	note B_, 1
;Bar 22
	note F#, 5
	rest 1
	note F_, 1
	note F#, 1
	note F_, 1
	note B_, 1
	octave 3
	note B_, 1
	note F_, 1
	note B_, 1
	note F_, 1
	note B_, 1
	octave 4
	note D_, 1
;Bar 23
	octave 3
	note E_, 1
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note B_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	octave 3
	note D#, 1
	note B_, 1
	note D#, 1
	note B_, 1
	note D#, 1
	note B_, 1
	octave 4
	note D#, 1
;Bar 24
	octave 3
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	note B_, 1
	note D#, 1
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	note B_, 1
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	note B_, 1
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	note G_, 1
	note E_, 1
;Bar 25
	note G_, 5
	rest 1
	note G_, 1
	note G_, 1
	note D#, 4
	note C_, 1
	note C_, 1
	rest 1
	note C_, 1
;Bar 26
	sound_call Music_AspertiaCity_Ch1_Bar1
;Bar 27
	sound_call Music_AspertiaCity_Ch1_Bar2
	sound_jump Music_AspertiaCity_Ch1

Music_AspertiaCity_Ch1_Bar1:
	octave 2
	note E_, 1;
	note B_, 1
	octave 3
	note E_, 1
	note F#, 2
	note E_, 1
	octave 2
	note B_, 1
	note F#, 1
	note E_, 1
	note B_, 1
	octave 3
	note E_, 1
	note F#, 2
	note E_, 1
	octave 2
	note B_, 1
	note F#, 1
	sound_ret

Music_AspertiaCity_Ch1_Bar2:
	note E_, 1;
	note B_, 1
	octave 3
	note E_, 1
	note F#, 2
	note E_, 1
	octave 2
	note B_, 1
	note F#, 1
	note E_, 1
	note B_, 1
	octave 3
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note G#, 1
	note F#, 1
	note E_, 1
	note F#, 1
	sound_ret

; ============================================================================================================

Music_AspertiaCity_Ch2:
	duty_cycle $1
	note_type 12, 12, 7
	vibrato 18, 1, 4
;Bar 1
	rest 16
;Bar 2
	rest 12
	octave 3
	note B_, 4
;Bar 3
	octave 4
	note F#, 2
	note E_, 1
	octave 3
	note B_, 3
	octave 4
	note E_, 1
	note F#, 3
	note E_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note D#, 1
	note E_, 1
;Bar 4
	note F#, 3
	rest 2
	note E_, 1
	note F#, 1
	note G#, 5
	rest 4
;Bar 5
	note F#, 2
	note E_, 1
	octave 3
	note B_, 3
	octave 4
	note E_, 1
	note F#, 3
	note E_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	note D_, 7
;Bar 6
	note C#, 1
	octave 3
	note B_, 3
	rest 2
	note G#, 4
;Bar 7
	octave 5
	volume_envelope 5, -5
	note C#, 3
	volume_envelope 12, 7
	octave 4
	note B_, 1
	note B_, 1
	note A_, 1
	rest 1
	note A_, 5
	rest 2
	note E_, 1
	note E_, 1
;Bar 8
	octave 5
	note C_, 2
	octave 4
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note A_, 1
	note A_, 5
	rest 2
	note G#, 1
	note A_, 1
;Bar 9
	volume_envelope 12, 8
	note B_, 14
	volume_envelope 12, 7
	note B_, 10
;Bar 10
	rest 14
;Bar 11
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note F#, 2
	note E_, 1
	note F#, 1
	rest 1
	note F#, 1
	note G#, 1
	rest 1
;Bar 12
	octave 3
	note B_, 3
	note A_, 1
	note B_, 3
	rest 13
;Bar 13
	rest 1
	note_type 3, 12, 7
	note G_, 1
	note G#, 3
	note_type 12, 12, 7
	note B_, 1
	octave 4
	note E_, 1
	note F#, 2
	note E_, 1
	note F#, 2
	note F#, 1
	note_type 6, 12, 7
	note G#, 3
	note A#, 1
	note_type 12, 12, 7
;Bar 14
	note B_, 3
	note A_, 1
	note B_, 3
	rest 8
	note B_, 1
;Bar 15
	octave 5
	note C#, 3
	octave 4
	note B_, 1
	note B_, 1
	note A_, 1
	rest 1
	note A_, 5
	rest 2
	note E_, 1
	note E_, 1
;Bar 16
	octave 5
	note C_, 2
	octave 4
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note A_, 1
	note A_, 5
	rest 2
	note G#, 1
	note A_, 1
;Bar 17
	volume_envelope 12, 8
	note B_, 6
	volume_envelope 12, 7
	note B_, 10
;Bar 18
	note D_, 4
	note C#, 4
	note E_, 4
	note F#, 4
;Bar 19
	note E_, 5
	rest 1
	note E_, 1
	note E_, 1
	note G_, 2
	note A_, 1
	note F#, 2
	note E_, 2
	rest 1
;Bar 20
	note D_, 4
	note A_, 4
	note G#, 2
	note F#, 1
	note G#, 1
	rest 1
	note A_, 1
	note B_, 1
	rest 1
;Bar 21
	octave 3
	note G_, 5
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note C_, 2
	note D_, 1
	octave 3
	note B_, 2
	note A_, 2
	rest 1
;Bar 22
	note B_, 4
	octave 4
	note F#, 4
	note F_, 2
	note E_, 1
	note F_, 1
	rest 1
	note E_, 1
	note D_, 1
	rest 1
;Bar 23
	note C_, 5
	rest 1
	note E_, 1
	note E_, 1
	note D#, 1
	rest 1
	note D#, 1
	note E_, 2
	rest 1
	note F#, 2
;Bar 24
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note A_, 1
	note G_, 2
	note A_, 1
	rest 1
	note B_, 2
	octave 5
	note E_, 6
;Bar 25
	rest 1
	octave 4
	note G_, 1
	note G_, 1
	note F#, 1
	rest 1
	note G_, 1
	note A_, 4
	note F#, 1
;Bar 26
	volume_envelope 12, 8
	note G#, 6
	volume_envelope 12, 7
	note G#, 10
;Bar 27
	rest 16
	sound_jump Music_AspertiaCity_Ch2

; ============================================================================================================

Music_AspertiaCity_Ch3:
	note_type 12, 1, 6
	stereo_panning FALSE, TRUE
;Bar 1
	octave 2
	note E_, 12
	rest 2
	octave 1
	note B_, 1
	rest 1
;Bar 2
	octave 2
	note E_, 12
	rest 4
;Bar 3
	note E_, 12
	rest 2
	octave 1
	note B_, 1
	rest 1
;Bar 4
	octave 2
	note E_, 12
	rest 2
	note C#, 2
;Bar 5
	note E_, 12
	rest 2
	octave 1
	note B_, 2
;Bar 6
	octave 2
	note E_, 12
	rest 2
	octave 1
	note B_, 2
;Bar 7
	octave 2
	note A_, 7
	octave 3
	note E_, 1
	note C_, 6
	octave 2
	note B_, 2
;Bar 8
	note A_, 4
	octave 3
	note C_, 4
	note D_, 4
	note F#, 3
	note E_, 1
;Bar 9
	octave 2
	note B_, 4
	octave 3
	note E_, 4
	note C#, 4
	octave 2
	note B_, 4
;Bar 10
	note A_, 4
	note F#, 4
	note B_, 4
	note B_, 4
;Bar 11
	note E_, 1
	rest 5
	note E_, 1
	note E_, 1
	rest 2
	note D#, 2
	note E_, 1
	rest 1
	octave 1
	note B_, 2
;Bar 12
	octave 2
	note E_, 1
	rest 5
	note E_, 1
	note E_, 1
	rest 4
	note D#, 4
;Bar 13
	note E_, 1
	rest 5
	note E_, 1
	note E_, 1
	rest 2
	note D#, 2
	note E_, 1
	rest 1
	octave 1
	note B_, 2
;Bar 14
	octave 2
	note E_, 1
	rest 5
	note E_, 1
	note E_, 1
	note G#, 1
	note D_, 1
	rest 1
	octave 1
	note B_, 3
	note G#, 2
;Bar 15
	octave 2
	note A_, 1
	note A_, 1
	rest 4
	note A_, 1
	note A_, 1
	rest 2
	note G#, 2
	note A_, 1
	rest 1
	note E_, 2
;Bar 16
	note A_, 1
	note A_, 1
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	note E_, 1
	note D_, 1
	rest 2
	note C#, 2
	note D_, 1
	rest 1
	note F#, 2
;Bar 17
	note G_, 1
	rest 5
	note G_, 1
	note G_, 1
	rest 2
	note G_, 2
	note G_, 1
	note G_, 1
	note E_, 2
;Bar 18
	note A_, 1
	rest 5
	note G#, 1
	note A_, 1
	rest 2
	note B_, 2
	note A_, 1
	note A_, 1
	note F#, 2
;Bar 19
	note C_, 1
	note C_, 1
	rest 4
	note C_, 1
	note C_, 1
	rest 2
	note C_, 1
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	note D_, 1
	octave 1
	note A_, 2
;Bar 20
	note B_, 1
	note B_, 1
	rest 4
	octave 2
	note B_, 1
	note B_, 1
	rest 2
	note E_, 2
	note E_, 1
	note E_, 1
	note D_, 2
;Bar 21
	note A_, 1
	note A_, 1
	note C_, 2
	note C_, 1
	rest 1
	note A_, 1
	note A_, 1
	rest 2
	note A_, 2
	note A_, 1
	note D_, 1
	rest 1
	note C_, 1
;Bar 22
	note G_, 1
	note G_, 1
	rest 4
	note G_, 1
	note G_, 1
	rest 2
	note G#, 2
	note G#, 1
	note E_, 1
	rest 1
	note C_, 1
;Bar 23
	octave 3
	note C_, 1
	note C_, 1
	octave 2
	note C_, 2
	note C_, 1
	rest 1
	octave 3
	note C_, 1
	note C_, 1
	rest 2
	octave 2
	note B_, 2
	note B_, 1
	note B_, 1
	octave 1
	note B_, 2
;Bar 24
	octave 2
	note E_, 4
	note D#, 4
	note D_, 2
	note C#, 2
	note C_, 2
	octave 1
	note B_, 2
;Bar 25
	octave 2
	note A_, 1
	note A_, 1
	note D_, 2
	note D_, 1
	rest 1
	note A_, 1
	note A_, 1
	rest 2
	note D_, 2
	octave 3
	note C_, 1
	octave 2
	note D_, 1
	rest 1
	note A_, 1
;Bar 26
Music_AspertiaCity_Ch3_Bar26:
	note E_, 1
	note E_, 1
	rest 4
	note E_, 1
	note E_, 1
	rest 2
	note E_, 2
	note E_, 1
	octave 1
	note B_, 1
	rest 1
	note B_, 1
	sound_loop 2, Music_AspertiaCity_Ch3_Bar26
	sound_jump Music_AspertiaCity_Ch3

; ============================================================================================================

Music_AspertiaCity_Ch4:
	toggle_noise 3
	drum_speed 12
;Bar 1
	rest 16
Music_AspertiaCity_Ch4_loop:
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
;Bar 10
	drum_speed 6
	drum_note 2, 1
	drum_note 1, 1
	drum_note 7, 4
	drum_note 7, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 7, 4
;Bar 11
	drum_note 11, 4
	drum_note 7, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 2, 4
	drum_note 7, 4
	drum_note 1, 8
;Bar 12
	drum_note 11, 2
	drum_note 2, 2
	drum_note 7, 2
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 2, 4
	drum_note 7, 4
	drum_note 1, 6
	drum_note 1, 2
;Bar 13
	drum_note 11, 4
	drum_note 7, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 2, 4
	drum_note 7, 4
	drum_note 1, 4
	drum_note 2, 4
;Bar 14
	drum_note 11, 4
	drum_note 7, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 7, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 7, 4
;Bar 15
	sound_call Music_AspertiaCity_Ch4_Type2
	drum_note 11, 2
	drum_note 2, 4
	drum_note 7, 4
	drum_note 1, 4
	drum_note 11, 4
;Bar 16
	drum_note 11, 2
	drum_note 11, 2
	sound_call Music_AspertiaCity_Ch4_Type1
;Bar 17
	drum_note 11, 4
	drum_note 7, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 7, 4
	drum_note 1, 2
	drum_note 11, 4
	drum_note 11, 2
;Bar 18
	drum_note 11, 4
	sound_call Music_AspertiaCity_Ch4_Type1
;Bar 19
	sound_call Music_AspertiaCity_Ch4_Type2
	drum_note 1, 2
	drum_note 2, 4
	drum_note 7, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 2, 4
;Bar 20
	sound_call Music_AspertiaCity_Ch4_Type2
	drum_note 11, 2
	drum_note 2, 4
	drum_note 7, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 2, 2
	drum_note 1, 2
;Bar 21
	drum_note 11, 2
	drum_note 1, 2
	drum_note 7, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 1, 2
	drum_note 2, 4
	drum_note 7, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 7, 4
;Bar 22
	sound_call Music_AspertiaCity_Ch4_Type2
	drum_note 11, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 7, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 1, 2
;Bar 23
	sound_call Music_AspertiaCity_Ch4_Type2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 7, 4
	drum_note 1, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 1, 2
;Bar 24
	drum_note 11, 2
	drum_note 11, 2
	drum_note 7, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 7, 2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 11, 2
;Bar 25
	sound_call Music_AspertiaCity_Ch4_Type2
	drum_note 11, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 7, 4
	drum_note 1, 2
	drum_note 2, 2
	drum_note 7, 2
	drum_note 11, 2
;Bar 26
	sound_call Music_AspertiaCity_Ch4_Type2
	drum_note 1, 2
	drum_note 2, 4
	drum_note 7, 4
	drum_note 1, 4
	drum_note 2, 2
	drum_note 11, 2
;Bar 27
	drum_note 11, 2
	drum_note 11, 10
	drum_note 11, 2
	drum_note 11, 6
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 6
;Bar 28
	drum_note 11, 1
	rest 15
	sound_jump Music_AspertiaCity_Ch4_loop

Music_AspertiaCity_Ch4_Type1:
	drum_note 7, 4;
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 7, 4
	drum_note 1, 8
	sound_ret

Music_AspertiaCity_Ch4_Type2:
	drum_note 11, 2;
	drum_note 11, 2
	drum_note 7, 4
	drum_note 1, 4
	drum_note 11, 2
	sound_ret