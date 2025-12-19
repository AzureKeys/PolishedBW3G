;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookRoughneck:
	channel_count 4
	channel 1, Music_LookRoughneck_Ch1
	channel 2, Music_LookRoughneck_Ch2
	channel 3, Music_LookRoughneck_Ch3
	channel 4, Music_LookRoughneck_Ch4

Music_LookRoughneck_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 8, 10, 7
	tempo 233
;Bar 1
	rest 2
	octave 2
	volume_envelope 9, 7
	note A#, 1
	octave 3
	note C#, 1
	rest 2
	note C#, 1
	note F#, 3
	rest 2
Music_LookRoughneck_Ch1_loop:
	rest 3
	note G#, 1
	rest 2
	volume_envelope 8, 7
	note A_, 1
	rest 1
	volume_envelope 9, 7
	note A#, 1
	rest 5
;Bar 2
	note C#, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note F#, 1
	rest 1
	note F#, 2
	rest 5
	note_type 4, 8, 7
	note G#, 2
	rest 3
	note G#, 1
	note_type 8, 9, 7
	note A_, 1
	rest 1
	note A#, 1
	rest 8
;Bar 3
	note C#, 1
	note F#, 1
	rest 1
	volume_envelope 8, 7
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	volume_envelope 9, 7
	note D#, 2
	rest 3
	volume_envelope 8, 7
	note C#, 1
	volume_envelope 9, 7
	note F#, 1
	rest 1
	note C#, 1
	rest 6
;Bar 4
	note A#, 1
	rest 2
	note A_, 1
	rest 1
	note G#, 1
	rest 2
	note F#, 3
	volume_envelope 7, 7
	note D#, 1
	rest 3
	rest 14
;Bar 5
	volume_envelope 8, 7
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note D#, 2
	note D#, 1
	rest 12
;Bar 6
	note F#, 1
	rest 4
	note C#, 1
	rest 5
	note F#, 1
	rest 3
	note_type 4, 9, 7
	note F#, 2
	rest 4
	octave 4
	volume_envelope 10, 7
	note C#, 3
	note D_, 1
	note_type 8, 9, 7
	note D#, 1
;Bar 7
	rest 3
	octave 3
	volume_envelope 8, 7
	note F#, 2
	rest 3
	note C#, 1
	rest 3
	note F#, 2
	note F#, 1
	rest 6
	note F#, 3
;Bar 8
	rest 2
	note F#, 1
	rest 5
	note C#, 1
	rest 15
;Bar 9
	rest 12
	sound_jump Music_LookRoughneck_Ch1_loop

; ============================================================================================================

Music_LookRoughneck_Ch2:
	duty_cycle $1
	note_type 8, 10, 7
;Bar 1
	octave 1
	volume_envelope 14, 7
	note A#, 1
	rest 2
	volume_envelope 13, 7
	note A#, 1
	rest 2
	volume_envelope 14, 7
	note A#, 1
	rest 1
	volume_envelope 13, 7
	note A#, 4
Music_LookRoughneck_Ch2_loop:
	octave 2
	volume_envelope 14, 7
	note D#, 1
	rest 11
;Bar 2
	rest 6
	octave 1
	note G#, 1
	rest 1
	volume_envelope 13, 7
	note A_, 1
	rest 1
	volume_envelope 12, 7
	note A#, 1
	rest 1
	octave 2
	volume_envelope 14, 7
	note D#, 1
	rest 2
	volume_envelope 13, 7
	note D#, 1
	rest 16
;Bar 3
	octave 1
	volume_envelope 14, 7
	note A#, 1
	rest 1
	volume_envelope 13, 7
	note A#, 1
	rest 1
	octave 2
	volume_envelope 14, 7
	note D#, 1
	rest 2
	volume_envelope 13, 7
	note D#, 1
	rest 4
	octave 1
	volume_envelope 14, 7
	note A#, 1
	rest 11
;Bar 4
	volume_envelope 13, 7
	note A#, 1
	rest 3
	octave 2
	volume_envelope 14, 7
	note D#, 1
	rest 1
	octave 1
	volume_envelope 13, 7
	note D#, 1
	rest 11
;Bar 5
	volume_envelope 14, 7
	note A#, 4
	octave 2
	note C#, 2
	octave 1
	volume_envelope 13, 7
	note A#, 1
	rest 1
	octave 2
	note C#, 1
	volume_envelope 12, 7
	note D_, 1
	volume_envelope 14, 7
	note D#, 2
	volume_envelope 12, 7
	note D#, 1
	rest 9
;Bar 6
	rest 8
	octave 1
	volume_envelope 14, 7
	note A#, 2
	volume_envelope 13, 7
	note A#, 2
	octave 2
	volume_envelope 14, 7
	note D#, 2
	volume_envelope 13, 7
	note D#, 1
	rest 9
;Bar 7
	rest 8
	octave 1
	volume_envelope 14, 7
	note A#, 2
	volume_envelope 13, 7
	note A#, 2
	octave 2
	volume_envelope 14, 7
	note D#, 2
	volume_envelope 13, 7
	note D#, 1
	rest 6
	volume_envelope 14, 7
	note D#, 1
	rest 10
;Bar 8
	octave 1
	note A#, 2
	volume_envelope 13, 7
	note A#, 2
	octave 2
	volume_envelope 14, 7
	note D#, 12
;Bar 9
	note D#, 3
	rest 9
	sound_jump Music_LookRoughneck_Ch2_loop

; ============================================================================================================

Music_LookRoughneck_Ch3:
	note_type 8, 1, 11
;Bar 1
	octave 4
	note C#, 1
	rest 2
	note C#, 1
	rest 2
	note C#, 2
	note F#, 4
Music_LookRoughneck_Ch3_loop:
	note F#, 1
	rest 4
	note D#, 1
	rest 14
;Bar 2
	note D#, 1
	rest 3
	note F#, 1
	rest 2
	volume_envelope 2, 11
	note F#, 1
	rest 1
	volume_envelope 1, 11
	note D#, 1
	rest 12
;Bar 3
	note D#, 1
	rest 7
	note D#, 1
	rest 5
	note D#, 1
	rest 6
;Bar 4
	note F#, 1
	rest 13
	octave 3
	note A#, 1
	octave 4
	note C#, 2
	note D#, 1
	rest 2
	note_type 4, 2, 11
	note A#, 5
;Bar 5
	octave 5
	note C_, 1
	volume_envelope 1, 11
	note C#, 2
	octave 4
	note A#, 10
	note G#, 4
	volume_envelope 2, 11
	note A_, 1
	volume_envelope 1, 11
	note A#, 3
	note F#, 6
	rest 5
	octave 5
	volume_envelope 2, 11
	note C_, 1
	volume_envelope 1, 11
	note C#, 4
	octave 4
	note A#, 2
	rest 3
	octave 5
	note D_, 1
	note D#, 2
;Bar 6
	rest 4
	note F#, 2
	note D#, 2
	rest 4
	note C#, 2
	octave 4
	note A#, 2
	note A_, 2
	note G#, 4
	note F#, 2
	rest 3
	octave 5
	note D_, 1
	note D#, 2
	rest 6
	note D#, 2
	rest 13
;Bar 7
	note A_, 1
	note A#, 8
	octave 6
	note C#, 6
	octave 5
	note A#, 2
	note A_, 2
	note G#, 2
	note F#, 4
	note F#, 2
	rest 5
	note F_, 1
	note F#, 4
	note F#, 2
	rest 6
;Bar 8
	note A#, 4
	note A_, 4
	note G_, 1
	note G#, 3
	note F#, 4
	note C_, 1
	note C#, 3
	note D_, 4
	note_type 12, 1, 11
	note D#, 12
	note_type 8, 1, 11
	octave 4
	rest 6
	sound_jump Music_LookRoughneck_Ch3_loop

; ============================================================================================================

Music_LookRoughneck_Ch4:
	toggle_noise 3 ; WARNING: this might sound bad.
	drum_speed 8
;Bar 1
	drum_note 11, 3
	drum_note 11, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 11, 6
Music_LookRoughneck_Ch4_loop:
	drum_note 12, 3
	drum_note 11, 3
	drum_note 5, 5
	drum_note 11, 3
;Bar 2
	drum_note 11, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 5, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 3
	drum_note 11, 3
	drum_note 5, 9
;Bar 3
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 5, 2
	drum_note 5, 2
	drum_note 11, 2
	drum_note 12, 3
	drum_note 11, 3
	drum_note 5, 2
	drum_note 5, 2
	drum_note 5, 2
;Bar 4
	drum_note 5, 2
	drum_note 11, 1
	drum_note 5, 3
	drum_note 11, 2
	drum_note 11, 1
	drum_note 5, 3
	drum_note 12, 3
	drum_note 11, 3
	drum_note 5, 5
	drum_note 11, 3
;Bar 5
	drum_note 11, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 5, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 3
	drum_note 11, 3
	drum_note 5, 5
	drum_note 11, 3
;Bar 6
	drum_note 11, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 5, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 2
	drum_note 5, 1
	drum_note 11, 3
	drum_note 5, 9
;Bar 7
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 5, 2
	drum_note 5, 2
	drum_note 11, 2
	drum_note 12, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 11, 1
	drum_note 5, 1
	drum_note 5, 1
	drum_note 5, 5
	drum_note 11, 3
;Bar 8
	drum_note 11, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 5, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 12
;Bar 9
	drum_note 5, 3
	drum_note 5, 3
	drum_note 5, 1
	drum_note 5, 1
	drum_note 11, 1
	drum_note 5, 1
	drum_note 11, 1
	drum_note 5, 1
	sound_jump Music_LookRoughneck_Ch4_loop

; ============================================================================================================

