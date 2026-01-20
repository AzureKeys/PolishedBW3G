;Coverted using MIDI2ASM
;Version 2.0. (23-Sep-2019)
;Code by TriteHexagon
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_Mart:
	channel_count 4
	channel 1, Music_FriendlyShop_Ch1
	channel 2, Music_FriendlyShop_Ch2
	channel 3, Music_FriendlyShop_Ch3
	channel 4, Music_FriendlyShop_Ch4

Music_FriendlyShop_Ch1:
	volume 7, 7
	stereo_panning TRUE, FALSE
	duty_cycle $3
	note_type 12, 9, 2
	tempo 140
;Bar 1
	octave 4
	note C#, 4
	note C#, 4
	note C_, 2
	note C_, 4
	octave 3
	note B_, 6
;Bar 2
	volume_envelope 9, 4
	note A#, 12
;Bar 3
Music_FriendlyShop_Ch1_loop:
	note_type 6, 10, 1
	note D#, 8
	octave 2
	note A#, 4
	octave 3
	note D#, 8
	octave 2
	note F#, 8
	octave 3
	note D#, 8
;Bar 4
	octave 2
	note F#, 4
	note B_, 4
	note F#, 8
	octave 3
	note D#, 8
	octave 2
	note B_, 4
;Bar 5
	note A_, 8
	note F#, 4
	octave 3
	note D#, 8
	octave 2
	note A_, 8
	octave 3
	note D#, 8
;Bar 6
	octave 2
	note F#, 4
	note A_, 4
	note F#, 8
	octave 3
	note D#, 8
	octave 2
	note A_, 4
;Bar 7
	note G#, 8
	note B_, 4
	note E_, 8
	note B_, 8
	note G#, 8
;Bar 8
	note F_, 4
	octave 3
	note D_, 4
	octave 2
	note G#, 8
	octave 3
	note D_, 8
	note F_, 4
;Bar 9
	note B_, 8
	note F#, 4
	note B_, 4
	note F#, 4
	note_type 12, 9, 5
	note F_, 2
	note F#, 2
	note G#, 2
;Bar 10
	volume_envelope 10, 3
	note A#, 16
;Bar 11
	note_type 6, 9, 5
	note A#, 8
	sound_call Music_FriendlyShop_Ch1_Bar11
;Bar 12
	volume_envelope 10, 1
	note B_, 4
	note F#, 4
	note B_, 4
	octave 4
	volume_envelope 10, 5
	note C#, 8
	volume_envelope 10, 1
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	note D#, 4
;Bar 13
	octave 3
	volume_envelope 10, 5
	note A_, 8
	sound_call Music_FriendlyShop_Ch1_Bar11
;Bar 14
	note_type 6, 10, 1
	note A_, 4
	note D#, 4
	note F#, 4
	volume_envelope 10, 5
	note B_, 8
	note A_, 8
	note F#, 2
	note A_, 2
;Bar 15
	note B_, 8
	volume_envelope 10, 1
	note B_, 4
	volume_envelope 10, 5
	note E_, 8
	volume_envelope 10, 1
	note B_, 8
	note E_, 8
;Bar 16
	volume_envelope 10, 2
	octave 2
	note F_, 4
	octave 3
	note D_, 4
	note F_, 8
	note D_, 8
	note G#, 4
;Bar 17
	volume_envelope 10, 5
	note B_, 8
	note F#, 1
	rest 3
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note F#, 1
	rest 3
	note F_, 4
	note F#, 4
	note G#, 4
;Bar 18
	note A#, 5
	rest 11
	volume_envelope 10, 5
	note E_, 4
	volume_envelope 11, 1
	note C#, 4
	note F#, 4
	note E_, 4
;Bar 19
	note D#, 4
	octave 2
	note G_, 4
	note A#, 4
	note G_, 8
	note A#, 8
	octave 3
	note D#, 8
;Bar 20
	octave 2
	note G_, 4
	note A#, 4
	note G_, 8
	octave 3
	note D#, 8
	octave 2
	note A#, 4
;Bar 21
	octave 3
	note D#, 4
	octave 2
	note G#, 4
	note B_, 4
	note G#, 8
	octave 3
	note D#, 8
	octave 2
	note B_, 8
;Bar 22
	note G#, 4
	note B_, 4
	note G#, 8
	octave 3
	note D#, 8
	octave 2
	note G#, 4
;Bar 23
	volume_envelope 10, 2
	octave 3
	note G_, 4
	volume_envelope 10, 1
	note D#, 4
	volume_envelope 10, 2
	note G_, 4
	volume_envelope 10, 1
	note D#, 4
	volume_envelope 10, 5
	note A#, 4
	note A_, 1
	rest 3
	note A#, 1
	rest 3
	octave 4
	note D#, 4
;Bar 24
	volume_envelope 10, 2
	octave 3
	note D#, 4
	octave 2
	note A#, 4
	volume_envelope 9, 2
	octave 4
	note D#, 2
	note D_, 2
	note D#, 2
	rest 2
	note F_, 2
	note E_, 2
	note F_, 2
	rest 2
	note G_, 2
	note F#, 2
	note G_, 2
	rest 2
;Bar 25
	note C#, 4
	octave 3
	note G#, 2
	rest 2
	octave 4
	note D#, 2
	rest 2
	octave 3
	note B_, 4
	rest 4
	volume_envelope 10, 1
	note D#, 8
	note C#, 8
;Bar 26
	octave 4
	note C#, 4
	note D#, 4
	octave 3
	volume_envelope 10, 5
	note B_, 4
	rest 4
	volume_envelope 10, 1
	note D#, 8
	octave 2
	note G#, 4
;Bar 27
	octave 3
	note D#, 4
	octave 2
	note B_, 4
	octave 3
	note D#, 4
	note G#, 8
	note B_, 8
	note D#, 4
;Bar 28
	note D_, 4
	octave 2
	note B_, 4
	octave 3
	note D_, 4
	note G#, 8
	note F_, 8
	note D_, 4
;Bar 29
	note C#, 4
	octave 2
	note F#, 4
	note A#, 4
	octave 3
	note C#, 4
	note F#, 4
	volume_envelope 9, 5
	note B_, 4
	octave 4
	note C#, 2
	rest 2
	octave 3
	note B_, 2
	rest 2
;Bar 30
	octave 4
	note C#, 4
	volume_envelope 10, 1
	octave 3
	note B_, 8
	note A#, 4
	rest 16
	sound_jump Music_FriendlyShop_Ch1_loop

Music_FriendlyShop_Ch1_Bar11:
	volume_envelope 10, 1
	note B_, 4
	volume_envelope 10, 5
	note D#, 8
	volume_envelope 10, 1
	note F#, 8
	volume_envelope 10, 2
	note D#, 2
	note F#, 2
	sound_ret

; ============================================================================================================

Music_FriendlyShop_Ch2:
	duty_cycle $1
	note_type 12, 8, 2
	vibrato 18, 1, 4
;Bar 1
	octave 4
	note F#, 4
	note F#, 4
	note F#, 2
	note F#, 4
	note F#, 6
;Bar 2
	volume_envelope 8, 6
	note F#, 6
	volume_envelope 9, 5
	octave 3
	note F#, 2
	note G#, 1
	rest 1
	note A#, 1
	rest 1

Music_FriendlyShop_Ch2_loop:
	duty_cycle $1
	note_type 12, 11, 5
	vibrato 18, 1, 4
	octave 4
	note C#, 3
	volume_envelope 9, 5
	octave 3
	note F#, 1
	volume_envelope 11, 5
	octave 4
	note D#, 1
	rest 1
	octave 3
	note B_, 4
	rest 4
	note B_, 1
	octave 4
	note C#, 1
;Bar 4
	note D#, 2
	note D_, 1
	rest 1
	note D#, 1
	rest 1
	note E_, 4
	rest 2
	note D#, 1
	note E_, 1
	note F#, 1
	rest 1
;Bar 5
	note C#, 3
	volume_envelope 9, 5
	octave 3
	note F#, 1
	volume_envelope 11, 5
	octave 4
	note D#, 1
	rest 1
	octave 3
	note B_, 4
	rest 4 
	note B_, 1
	octave 4
	note C#, 1
;Bar 6
	note D#, 2
	note D_, 1
	rest 1
	note D#, 1
	rest 1
	note G#, 4
	rest 2
	note E_, 1
	note D#, 1
	note C#, 1
	rest 1
;Bar 7
	note D#, 3
	volume_envelope 9, 5
	octave 3
	note G#, 1
	volume_envelope 11, 5
	octave 4
	note E_, 1
	rest 1
	note C#, 4
	rest 8
;Bar 8
	octave 3
	volume_envelope 11, 5
	note G#, 6
	note A#, 2
	rest 2
	note B_, 2
	rest 2
;Bar 9
	octave 4
	note D#, 6
	note E_, 1
	note D#, 1
	note C#, 1
	rest 1
	octave 3
	note B_, 2
	note A#, 2
	note B_, 2
;Bar 10
	octave 4
	volume_envelope 9, 3
	note C#, 3
	rest 4
	note_type 6, 9, 5
	rest 1
	note A#, 1
	note_type 12, 11, 5
	note B_, 1
	rest 1
	note F#, 2
	note E_, 2
	note D#, 2
;Bar 11
	note C#, 3
	volume_envelope 9, 5
	octave 3
	note F#, 1
	volume_envelope 11, 5
	octave 4
	note D#, 1
	rest 1
	octave 3
	note B_, 4
	rest 4
	note B_, 1
	octave 4
	note C#, 1
;Bar 12
	note D#, 3
	rest 3
	note E_, 4
	note D#, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
;Bar 13
	note C#, 3
	volume_envelope 9, 5
	octave 3
	note F#, 1
	volume_envelope 11, 5
	octave 4
	note D#, 1
	rest 1
	octave 3
	note B_, 4
	rest 4
	note B_, 1
	octave 4
	note C#, 1
;Bar 14
	note D#, 3
	rest 2
	note_type 6, 9, 5
	rest 1
	note G_, 1
	note_type 12, 11, 5
	note G#, 4
	note F#, 4
	octave 3
	note B_, 1
	octave 4
	note C#, 1
;Bar 15
	note D#, 3
	volume_envelope 9, 5
	octave 3
	note G#, 1
	volume_envelope 11, 5
	octave 4
	note E_, 1
	rest 1
	note C#, 5
	rest 7
;Bar 16
	octave 3
	note G#, 2
	note G_, 2
	note G#, 2
	note A#, 1
	rest 1
	note G#, 2
	note A#, 2
	note_type 6, 11, 5
	note B_, 3
;Bar 17
	volume_envelope 9, 5
	octave 4
	note D_, 1
	note_type 12, 11, 5
	note D#, 6
	note E_, 1
	note D#, 1
	note C#, 1
	rest 1
	octave 3
	note B_, 2
	note A#, 2
	note B_, 2
;Bar 18
	octave 4
	volume_envelope 9, 3
	note C#, 3
	rest 9
	duty_cycle $2
	volume_envelope 10, 7
	octave 3
	note B_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
;Bar 19
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	note D_, 2
	note_type 6, 10, 7
	note D#, 3
	volume_envelope 8, 7
	note G#, 1
	note_type 12, 10, 7
	note A#, 6
;Bar 20
	volume_envelope 11, 5
	note G_, 2
	rest 2
	note D#, 2
	rest 2
	note C#, 2
	rest 2
;Bar 21
	volume_envelope 10, 7
	note C#, 3
	note_type 6, 9, 7
	note C#, 1
	note D_, 1
	note_type 12, 10, 7
	note D#, 1
	rest 1
	octave 3
	note B_, 4
	note A#, 2
	note B_, 2
	octave 4
	note C#, 6
;Bar 22
	note D#, 2
	note G#, 4
	rest 2
	octave 3
	note B_, 2
	octave 4
	note C#, 1
	rest 1
;Bar 23
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	note D_, 2
	note_type 6, 10, 7
	note D#, 3
	volume_envelope 9, 7
	note G#, 1
	note_type 12, 10, 7
	note A#, 6
;Bar 24
	note G_, 1
	volume_envelope 9, 7
	note F#, 1
	volume_envelope 10, 7
	note G_, 1
	rest 1
	note G#, 1
	volume_envelope 9, 7
	note G_, 1
	volume_envelope 10, 7
	note G#, 1
	rest 1
	note A#, 1
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 10, 7
	note A#, 1
	rest 1
;Bar 25
	note A#, 4
	note B_, 1
	rest 1
	note G#, 4
	note G_, 2
	note G#, 2
	note A#, 6
;Bar 26
	note B_, 1
	rest 1
	note_type 6, 9, 7
	note G#, 7
	duty_cycle $0
	vibrato 8, 2, 4
	octave 5
	note C_, 1
	note_type 12, 9, 8
	note C#, 2
	octave 4
	note B_, 1
	rest 1
	note A#, 1
	rest 1
;Bar 27
	note B_, 11
	volume_envelope 9, 5
	vibrato 0, 2, 4
	note B_, 4
	vibrato 8, 2, 4
	note_type 6, 9, 8
	note G#, 1
	note A#, 1
;Bar 28
	note_type 12, 9, 8
	note B_, 6
	volume_envelope 9, 5
	vibrato 0, 2, 4
	note B_, 4
	vibrato 8, 2, 4
	volume_envelope 9, 8
	note G#, 2
	note A#, 1
	rest 1
	note B_, 1
	rest 1
;Bar 29
	note A#, 6
	vibrato 0, 2, 4
	volume_envelope 9, 5
	note A#, 4
	vibrato 8, 2, 4
	volume_envelope 9, 8
	note G#, 2
	note A#, 1
	rest 1
	note G#, 1
	rest 1
;Bar 30
	note A#, 2
	note G#, 1
	rest 3
	note F#, 4
	vibrato 8, 2, 4
	volume_envelope 9, 5
	note F#, 4
	rest 2
	sound_jump Music_FriendlyShop_Ch2_loop

; ============================================================================================================

Music_FriendlyShop_Ch3:
	note_type 12, 2, 5
	vibrato 8, 1, 10
;Bar 1
	octave 4
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	note D_, 1
	rest 1
	note D_, 1
	rest 3
	note C#, 1
	rest 5
;Bar 2
	octave 3
	note F#, 4
	rest 8
;Bar 3
Music_FriendlyShop_Ch3_loop:
	octave 2
	sound_call Music_FriendlyShop_Ch3_Bar3
;Bar 4
	sound_call Music_FriendlyShop_Ch3_Bar3
;Bar 5
	sound_call Music_FriendlyShop_Ch3_Bar3
;Bar 6
	sound_call Music_FriendlyShop_Ch3_Bar3
;Bar 7
	note E_, 4
	rest 2
	note E_, 1
	rest 1
	note B_, 4
	rest 2
	note B_, 1
	rest 1
;Bar 8
	note F_, 4
	rest 2
	note F_, 1
	rest 1
	note B_, 4
	rest 2
	note B_, 1
	rest 1
;Bar 9
	note F#, 4
	rest 2
	note F#, 1
	rest 1
	octave 3
	note F#, 4
	rest 2
	note F#, 1
	rest 1
;Bar 10
	octave 2
	note F#, 2
	rest 14
;Bar 11
	sound_call Music_FriendlyShop_Ch3_Bar11
;Bar 12
	sound_call Music_FriendlyShop_Ch3_Bar11
;Bar 13
	sound_call Music_FriendlyShop_Ch3_Bar11
;Bar 14
	sound_call Music_FriendlyShop_Ch3_Bar11
;Bar 15
	note E_, 4
	octave 6
	volume_envelope 3, 5
	note G#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note E_, 1
	rest 1
	note B_, 4
	octave 5
	volume_envelope 3, 5
	note G#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note B_, 1
	rest 1
;Bar 16
	note F_, 4
	octave 6
	volume_envelope 3, 5
	note G#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note F_, 1
	rest 1
	note B_, 4
	octave 6
	volume_envelope 3, 5
	note G#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note B_, 1
	rest 1
;Bar 17
	note F#, 4
	octave 6
	volume_envelope 3, 5
	note F#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note F#, 1
	rest 1
	octave 3
	note F#, 4
	octave 6
	volume_envelope 3, 5
	note G#, 1
	volume_envelope 2, 5
	octave 3
	rest 1
	note F#, 1
	rest 1
;Bar 18
	octave 2
	note F#, 1
	rest 7
	octave 3
	note C#, 4
	octave 2
	note F#, 4
;Bar 19
	note D#, 4
	rest 2
	note D#, 1
	rest 1
	note G_, 4
	rest 2
	note G_, 1
	rest 1
;Bar 20
	note A#, 4
	rest 2
	note A#, 1
	rest 1
	note D#, 4
	note G_, 4
;Bar 21
	note G#, 4
	rest 2
	note G#, 1
	rest 1
	note G_, 4
	rest 2
	note G_, 1
	rest 1
;Bar 22
	note F#, 4
	rest 2
	note F#, 1
	rest 1
	note F_, 4
	note E_, 4
;Bar 23
	note D#, 4
	octave 4
	volume_envelope 3, 5
	note A#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note D#, 1
	rest 1
	note G_, 4
	octave 4
	volume_envelope 3, 5
	note G_, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note G_, 1
	rest 1
;Bar 24
	note A#, 4
	octave 4
	volume_envelope 3, 5
	note A#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note A#, 1
	rest 1
	note D#, 4
	note G_, 4
;Bar 25
	note G#, 4
	octave 6
	volume_envelope 3, 5
	note D#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note G#, 1
	rest 1
	note G_, 4
	octave 6
	volume_envelope 3, 5
	note D#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note G_, 1
	rest 1
;Bar 26
	note F#, 4
	octave 6
	volume_envelope 3, 5
	note D#, 1
	rest 1
	volume_envelope 2, 5
	octave 2
	note F#, 1
	rest 1
	note F_, 4
	octave 6
	volume_envelope 3, 5
	note D#, 1
	rest 1
	volume_envelope 2, 5
	octave 2
	note F_, 1
	rest 1
;Bar 27
	note E_, 4
	octave 6
	volume_envelope 3, 5
	note G#, 1
	rest 1
	volume_envelope 2, 5
	octave 2
	note E_, 1
	rest 1
	octave 1
	note B_, 4
	octave 5
	volume_envelope 3, 5
	note G#, 1
	rest 1
	volume_envelope 2, 5
	octave 1
	note B_, 1
	rest 1
;Bar 28
	octave 2
	note F_, 4
	octave 6
	volume_envelope 3, 5
	note G#, 1
	rest 1
	volume_envelope 2, 5
	octave 2
	note F_, 1
	rest 1
	octave 1
	note B_, 4
	octave 6
	volume_envelope 3, 5
	note D_, 1
	rest 1
	volume_envelope 2, 5
	octave 1
	note B_, 1
	rest 1
;Bar 29
	octave 2
	note F#, 4
	octave 6
	volume_envelope 3, 5
	note F#, 1
	rest 1
	volume_envelope 2, 5
	octave 2
	note F#, 1
	rest 1
	octave 3
	note C#, 4
	octave 5
	volume_envelope 3, 5
	note F#, 1
	rest 1
	volume_envelope 2, 5
	octave 3
	note C#, 1
	rest 1
;Bar 30
	octave 2
	note F#, 1
	rest 1
	note F#, 1
	rest 3
	note F#, 4
	note F#, 1
	rest 1
	note G#, 1
	rest 1
	note A#, 1
	rest 1
	sound_jump Music_FriendlyShop_Ch3_loop

Music_FriendlyShop_Ch3_Bar3:
	note B_, 4
	rest 2
	note B_, 1
	rest 1
	note F#, 4
	rest 2
	note F#, 1
	rest 1
	sound_ret

Music_FriendlyShop_Ch3_Bar11:
	note B_, 4
	octave 6
	volume_envelope 3, 5
	note F#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note B_, 1
	rest 1
	note F#, 4
	octave 5
	volume_envelope 3, 5
	note F#, 1
	volume_envelope 2, 5
	octave 2
	rest 1
	note F#, 1
	rest 1
	sound_ret

; ============================================================================================================

Music_FriendlyShop_Ch4:
	toggle_noise 3
	stereo_panning FALSE, TRUE
	drum_speed 12
;Bar 1
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 6
;Bar 2
	drum_note 6, 12
;Bar 3
Music_FriendlyShop_Ch4_loop:
	drum_note 12, 4
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
;Bar 4
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
;Bar 5
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
;Bar 6
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
;Bar 7
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
;Bar 8
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
;Bar 9
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
;Bar 10
	drum_note 3, 16
;Bar 11
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
;Bar 12
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
;Bar 13
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
;Bar 14
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
;Bar 15
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
;Bar 16
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
;Bar 17
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 2, 2
;Bar 18
	drum_note 3, 16
;Bar 19
Music_FriendlyShop_Ch4_part2:
	drum_note 6, 4
	drum_note 3, 2
	drum_note 2, 2
	sound_loop 22, Music_FriendlyShop_Ch4_part2
;Bar 30
	drum_note 3, 2
	drum_note 6, 4
	drum_note 6, 4
	drum_note 2, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_jump Music_FriendlyShop_Ch4_loop
