;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 4.0 (17-Jun-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_CasteliaSewers:
	channel_count 4
	channel 1, Music_CasteliaSewers_Ch1
	channel 2, Music_CasteliaSewers_Ch2
	channel 3, Music_CasteliaSewers_Ch3
	channel 4, Music_CasteliaSewers_Ch4

Music_CasteliaSewers_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 8, 7
	pitch_offset $0001
	stereo_panning TRUE, TRUE
	tempo 124
;Bar 1
	sound_call Music_CasteliaSewers_Ch1_Type1
	sound_call Music_CasteliaSewers_Ch1_Type2
	sound_call Music_CasteliaSewers_Ch1_Type3
	sound_call Music_CasteliaSewers_Ch1_Type4
;Bar 4
	sound_call Music_CasteliaSewers_Ch1_Type1
	sound_call Music_CasteliaSewers_Ch1_Type2
	sound_call Music_CasteliaSewers_Ch1_Type3
	sound_call Music_CasteliaSewers_Ch1_Type4
;Bar 7
	sound_call Music_CasteliaSewers_Ch1_Type5
	sound_call Music_CasteliaSewers_Ch1_Type6
	sound_call Music_CasteliaSewers_Ch1_Type7
	sound_call Music_CasteliaSewers_Ch1_Type2
;Bar 10
	sound_call Music_CasteliaSewers_Ch1_Type5
	sound_call Music_CasteliaSewers_Ch1_Type6
	sound_call Music_CasteliaSewers_Ch1_Type7
	sound_call Music_CasteliaSewers_Ch1_Type2
;Bar 13
	stereo_panning TRUE, FALSE
	volume_envelope 10, 7
	transpose 1, 0
	sound_call Music_CasteliaSewers_Ch1_2_Bar13_15
	transpose 0, 0
;Bar 16
	octave 4
	duty_cycle $3
	note G#, 1
	rest 1
	octave 3
	note G#, 1
	rest 3
	octave 4
	note D#, 4
	octave 3
	note G#, 2
	octave 4
	note G_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
;Bar 17
	octave 4
	note D_, 4
	octave 3
	note D_, 2
	note G_, 2
	octave 4
	stereo_panning TRUE, TRUE
	volume_envelope 10, 7
	note C#, 16
	rest 8
;Bar 19
	note C_, 16
	rest 8
;Bar 20
	note D#, 16
	rest 8
;Bar 22
	note F_, 12
	note F#, 12
	sound_jump Music_CasteliaSewers_Ch1

Music_CasteliaSewers_Ch1_Type1:
	octave 1;
	duty_cycle $3
	note D_, 2
	duty_cycle $2
	octave 3
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	sound_ret

Music_CasteliaSewers_Ch1_Type2:
	duty_cycle $3
	octave 1;
	note C#, 2
	octave 3
	duty_cycle $2
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	sound_ret

Music_CasteliaSewers_Ch1_Type3:
	duty_cycle $3
	octave 1;
	note F_, 2
	octave 3
	duty_cycle $2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	sound_ret

Music_CasteliaSewers_Ch1_Type4:
	duty_cycle $3
	octave 1;
	note E_, 2
	octave 3
	duty_cycle $2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	sound_ret

Music_CasteliaSewers_Ch1_Type5:
	duty_cycle $3
	octave 1;
	note B_, 2
	octave 2
	duty_cycle $2
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	sound_ret

Music_CasteliaSewers_Ch1_Type6:
	duty_cycle $3
	octave 1;
	note A#, 2
	octave 2
	duty_cycle $2
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	sound_ret

Music_CasteliaSewers_Ch1_Type7:
	duty_cycle $3
	octave 1;
	note D_, 2
	octave 3
	duty_cycle $2
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	sound_ret

Music_CasteliaSewers_Ch1_2_Bar13_15:
	octave 4
	note F#, 1;
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note G_, 1
	rest 3
	note A#, 1
	rest 1
	note A_, 1
	rest 3
;Bar 14
	octave 5
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	note G_, 1
	rest 1
	note C#, 2
	note D_, 1
	rest 3
	octave 3
	note B_, 1
	rest 1
;Bar 15
	octave 4
	note C#, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	note A#, 4
	octave 5
	note C_, 2
	sound_ret

; ============================================================================================================

Music_CasteliaSewers_Ch2:
	duty_cycle $2
	note_type 12, 11, 6
	;vibrato $12, $16
	stereo_panning FALSE, TRUE
;Bar 1
	octave 5
	note D_, 8
	note A_, 4
	note G#, 8
;Bar 2
	octave 6
	note D_, 4
	note C#, 8
;Bar 3
	octave 5
	note G_, 4
	note G#, 8
	note C#, 4
;Bar 4
	note D_, 8
	octave 4
	note G_, 4
	note G#, 8
;Bar 5
	octave 5
	note D_, 4
	note C#, 16
;Bar 6
	rest 8
;Bar 7
	octave 4
	note B_, 8
	octave 5
	note F#, 4
	note F_, 8
;Bar 8
	note B_, 4
	note A#, 8
;Bar 9
	note E_, 4
	note F_, 8
	octave 4
	note A#, 4
;Bar 10
	note B_, 8
	note E_, 4
	note F_, 8
;Bar 11
	note B_, 4
	note A#, 12
;Bar 12
	note B_, 12
;Bar 13
	duty_cycle $1
	volume_envelope 12, 7
	sound_call Music_CasteliaSewers_Ch1_2_Bar13_15
;Bar 16
	note C#, 1
	rest 1
	octave 4
	note C#, 1
	rest 3
	note G#, 4
	note C#, 2
	octave 5
	note C_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
;Bar 17
	note G_, 4
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	rest 4
	volume_envelope 10, 5
	duty_cycle $2
	note A#, 2
	octave 5
	note C#, 2
;Bar 18
	note D#, 2
	octave 4
	note F#, 2
	note G#, 2
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	note C#, 2
	note G#, 2
	note C#, 2
;Bar 19
	rest 2
	note F_, 2
	octave 5
	note C_, 2
	note D_, 2
	octave 4
	note F_, 2
	note C_, 2
	note D_, 2
	note F_, 2
;Bar 20
	note G_, 2
	note G#, 2
	note A_, 2
	note F_, 2
	rest 1
	octave 3
	note G#, 1
	note G_, 1
	note G#, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	note F_, 1
;Bar 21
	note D#, 1
	note F#, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note A#, 1
	note G#, 1
	note F_, 1
	note E_, 1
	note C#, 1
	note D#, 1
	note G#, 1
	octave 5
	note C_, 1
	note C#, 1
	note C_, 1
	octave 4
	note D#, 1
;Bar 22
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note G_, 1
;Bar 23
	note F#, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 1
	note C#, 1
	sound_jump Music_CasteliaSewers_Ch2

; ============================================================================================================

Music_CasteliaSewers_Ch3:
	note_type 12, 1, 4
	stereo_panning TRUE, FALSE
;Bar 1
	sound_call Music_CasteliaSewers_Ch3_Type1
;Bar 4
	sound_call Music_CasteliaSewers_Ch3_Type1
;Bar 7
	sound_call Music_CasteliaSewers_Ch3_Type2
;Bar 10
	sound_call Music_CasteliaSewers_Ch3_Type2
;Bar 13
	stereo_panning TRUE, TRUE
	volume_envelope 1, 15
	octave 2
	note F#, 1
	rest 1
	note F#, 4
	note F_, 1
	rest 3
	note F#, 1
	rest 1
	note G#, 1
	rest 1
	note G_, 4
;Bar 14
	note A#, 1
	rest 3
	note F_, 4
	note F#, 4
	note F_, 1
	rest 3
;Bar 15
	note F#, 2
	note G#, 1
	rest 1
	note G_, 4
	note A#, 1
	rest 3
	octave 3
	note C_, 2
;Bar 16
	note C#, 1
	rest 1
	note C#, 1
	rest 3
	note C#, 4
	octave 2
	note B_, 2
	octave 3
	note C_, 1
	rest 1
	note C_, 1
	rest 1
;Bar 17
	note C_, 4
	octave 2
	note F_, 4
	note F#, 2
	octave 1
	note A#, 2
	note B_, 2
	octave 2
	note C_, 2
;Bar 18
	note C#, 2
	octave 1
	note C#, 2
	note F#, 2
	note A#, 2
	note B_, 2
	note D#, 2
	note E_, 2
	note F_, 2
;Bar 19
	octave 2
	note F_, 2
	octave 1
	note A_, 2
	note A#, 2
	note B_, 2
	octave 2
	note C_, 2
	octave 1
	note C_, 2
	note F_, 2
	note A_, 2
;Bar 20
	note A#, 2
	octave 2
	note D_, 2
	note D#, 2
	note E_, 2
	note G#, 2
	note C_, 2
	note C#, 2
	note D_, 2
;Bar 21
	note D#, 2
	note A#, 2
	note G#, 2
	note F_, 2
	note C#, 2
	note F_, 2
	note F#, 2
	note G_, 2
;Bar 22
	note A#, 16
	volume_envelope 2, 5
	note A#, 8
	sound_jump Music_CasteliaSewers_Ch3

Music_CasteliaSewers_Ch3_Type1:
	volume_envelope 1, 4;
	octave 2
	note D_, 2
	volume_envelope 1, 14
	octave 3
	note D_, 2
	note G_, 2
	octave 4
	note D_, 2
	note G_, 2
	note D_, 2
	volume_envelope 1, 4
	octave 2
	note C#, 2
	volume_envelope 1, 14
	octave 3
	note C#, 2
;Bar 5
	note F#, 2;
	octave 4
	note C#, 2
	note F#, 2
	note C#, 2
	volume_envelope 1, 4
	octave 2
	note F_, 2
	volume_envelope 1, 14
	octave 3
	note F_, 2
	note A#, 2
	octave 4
	note F_, 2
;Bar 6
	note A#, 2;
	note F_, 2
	volume_envelope 1, 4
	octave 2
	note E_, 2
	volume_envelope 1, 14
	octave 3
	note E_, 2
	note A_, 2
	octave 4
	note E_, 2
	note A_, 2
	note E_, 2
	sound_ret

Music_CasteliaSewers_Ch3_Type2:
	volume_envelope 1, 4;
	octave 1
	note B_, 2
	volume_envelope 1, 14
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	volume_envelope 1, 4
	octave 1
	note A#, 2
	volume_envelope 1, 14
	octave 2
	note A#, 2
;Bar 8
	octave 3
	note D#, 2
	note A#, 2
	octave 4
	note D#, 2
	octave 3
	note A#, 2
	volume_envelope 1, 4
	octave 2
	note D_, 2
	volume_envelope 1, 14
	octave 3
	note D_, 2
	note G_, 2
	octave 4
	note D_, 2
;Bar 9
	note G_, 2
	note D_, 2
	volume_envelope 1, 4
	octave 2
	note C#, 2
	volume_envelope 1, 14
	octave 3
	note C#, 2
	note F#, 2
	octave 4
	note C#, 2
	note F#, 2
	note C#, 2
	sound_ret

; ============================================================================================================

Music_CasteliaSewers_Ch4:
	toggle_noise 5
	drum_speed 12
;Bar 1
Music_CasteliaSewers_Ch4_loop:
	drum_note 11, 2
	drum_note 3, 2
	drum_note 5, 2
	drum_note 11, 1
	drum_note 3, 1
	drum_note 5, 1
	drum_note 11, 1
	drum_note 3, 1
	drum_note 5, 1
	sound_jump Music_CasteliaSewers_Ch4_loop

; ============================================================================================================
