;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookCyclist:
	channel_count 4
	channel 1, Music_LookCyclist_Ch1
	channel 2, Music_LookCyclist_Ch2
	channel 3, Music_LookCyclist_Ch3
	channel 4, Music_LookCyclist_Ch4

Music_LookCyclist_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 11, 7
	tempo 144
;Bar 1
	rest 5
	octave 3
	volume_envelope 11, 7
	note G_, 3
	octave 4
	note C_, 3
	note F_, 3
	note A#, 3
;Bar 2
	note D#, 3
	note G#, 8
	rest 1
	octave 3
	note C#, 1
	note F#, 1
	note A#, 1
;Bar 3
	note B_, 3
	note F#, 1
	note_type 6, 11, 7
	octave 2
	note E_, 1
	rest 1
	note B_, 6
	octave 3
	note E_, 2
	rest 2
	note G#, 2
	note A_, 2
	octave 4
	note F#, 8
Music_LookCyclist_Ch1_loop:
;Bar 4
	note_type 3, 11, 7
	octave 3
	note A#, 2
	rest 2
	note A#, 1
	rest 3
	note G#, 2
	rest 2
	note G#, 1
	rest 3
	note A#, 4
	note B_, 2
	rest 5
	note A#, 2
	rest 3
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	rest 16
;Bar 5
	note B_, 2
	rest 2
	note B_, 1
	rest 3
	note A_, 2
	rest 2
	note A_, 1
	rest 3
	note B_, 4
	octave 4
	note C_, 2
	rest 5
	octave 3
	note B_, 2
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	rest 16
;Bar 6
	octave 4
	note C_, 2
	rest 2
	note C_, 1
	rest 3
	octave 3
	note A#, 2
	rest 2
	note A#, 1
	rest 3
	octave 4
	note C_, 4
	note C#, 2
	rest 5
	note C_, 2
	rest 3
	octave 3
	note G#, 1
	rest 3
	note G#, 1
	rest 3
	note G#, 1
	rest 3
	note G#, 1
	rest 7
	octave 4
	volume_envelope 8, 7
	note C#, 10
	rest 2
;Bar 7
	volume_envelope 11, 7
	note C#, 2
	rest 6
	octave 3
	note B_, 2
	rest 2
	note B_, 1
	rest 3
	octave 4
	note C#, 4
	note D#, 2
	rest 6
	note C#, 2
	rest 2
	rest 16
	rest 16
	sound_jump Music_LookCyclist_Ch1_loop

; ============================================================================================================

Music_LookCyclist_Ch2:
	duty_cycle $1
	note_type 3, 10, 7
;Bar 1
	volume_envelope 11, 7
	rest 16
	octave 1
	note G_, 12
	octave 2
	note C_, 12
	note F_, 12
	octave 1
	note A_, 4
	volume_envelope 9, 7
	note A#, 1
	rest 1
	volume_envelope 5, 7
	note A#, 1
	rest 1
	volume_envelope 8, 7
	note A#, 1
	rest 1
	volume_envelope 6, 7
	note A#, 1
	rest 1
;Bar 2
	note_type 12, 11, 7
	note A#, 2
	octave 2
	note A#, 2
	note G#, 2
	note D#, 1
	octave 1
	note G#, 3
	octave 3
	note C#, 2
	rest 1
	octave 2
	note A#, 2
	octave 1
	note B_, 2
;Bar 3
	note_type 3, 11, 7
	octave 2
	note B_, 2
	rest 2
	note B_, 8
	note E_, 4
	octave 1
	note B_, 4
	octave 2
	note A_, 8
	octave 1
	note A_, 1
	rest 1
	volume_envelope 10, 7
	note A_, 1
	rest 1
	volume_envelope 11, 7
	note A_, 4
	octave 2
	note D_, 8
	octave 1
	note F#, 4
	octave 2
	note F#, 4
	octave 1
	volume_envelope 8, 7
	note F#, 8
Music_LookCyclist_Ch2_loop:
;Bar 4
	volume_envelope 11, 7
	note F#, 1
	rest 1
	volume_envelope 8, 7
	note F#, 1
	rest 1
	volume_envelope 10, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 1
	rest 1
	octave 2
	volume_envelope 11, 7
	note F#, 8
	octave 1
	note F#, 4
	note F#, 1
	rest 1
	volume_envelope 8, 7
	note F#, 1
	rest 1
	volume_envelope 10, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 1
	rest 1
	octave 2
	volume_envelope 11, 7
	note F#, 4
	octave 1
	note F#, 4
	volume_envelope 9, 7
	note F#, 1
	rest 1
	volume_envelope 7, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 1
	rest 1
	volume_envelope 7, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 4
	octave 2
	volume_envelope 11, 7
	note F#, 4
	octave 1
	note F#, 6
	rest 2
	volume_envelope 10, 7
	note F#, 4
;Bar 5
	volume_envelope 11, 7
	note F#, 1
	rest 1
	volume_envelope 8, 7
	note F#, 1
	rest 1
	volume_envelope 10, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 1
	rest 1
	volume_envelope 11, 7
	note B_, 8
	note F#, 12
	octave 2
	note C#, 8
	note E_, 12
	octave 1
	note F#, 4
	octave 2
	note F#, 4
	octave 1
	volume_envelope 8, 7
	note F#, 8
;Bar 6
	octave 2
	volume_envelope 11, 7
	note F#, 4
	octave 1
	volume_envelope 9, 7
	note F#, 4
	rest 4
	note F#, 4
	volume_envelope 11, 7
	note F#, 4
	note F#, 1
	rest 1
	volume_envelope 8, 7
	note F#, 1
	rest 1
	volume_envelope 10, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 1
	rest 1
	octave 2
	volume_envelope 11, 7
	note F#, 4
	octave 1
	note F#, 4
	volume_envelope 9, 7
	note F#, 1
	rest 1
	volume_envelope 7, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 1
	rest 1
	volume_envelope 7, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 4
	octave 2
	volume_envelope 11, 7
	note F#, 4
	octave 1
	note F#, 6
	rest 2
	volume_envelope 10, 7
	note F#, 4
;Bar 7
	volume_envelope 11, 7
	note F#, 1
	rest 1
	volume_envelope 8, 7
	note F#, 1
	rest 1
	volume_envelope 10, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 1
	rest 1
	volume_envelope 11, 7
	note B_, 8
	note F#, 12
	note B_, 4
	rest 4
	octave 2
	note E_, 12
	rest 16
	octave 1
	sound_jump Music_LookCyclist_Ch2_loop

; ============================================================================================================

Music_LookCyclist_Ch3:
	note_type 12, 1, 0
;Bar 1
	volume_envelope 1, 0
	rest 5
	octave 4
	note G_, 3
	octave 5
	note C_, 3
	note F_, 3
	octave 4
	note A#, 3
;Bar 2
	octave 5
	note D#, 3
	octave 4
	note G#, 8
	rest 1
	octave 5
	note C#, 3
;Bar 3
	note F#, 1
	rest 1
	note B_, 1
	rest 2
	octave 4
	note B_, 3
	octave 5
	note E_, 1
	rest 1
	note G#, 1
	note A_, 1
	note A#, 1
	volume_envelope 2, 0
	note C#, 3
	note_type 3, 2, 0
Music_LookCyclist_Ch3_loop:
;Bar 4
	rest 4
	note C#, 12
	rest 8
	note C#, 10
	rest 2
	note C#, 10
	rest 6
	note D_, 12
;Bar 5
	note D_, 2
	rest 6
	note D_, 6
	rest 2
	note D_, 12
	note D_, 2
	rest 6
	note D_, 12
	rest 4
	note D#, 12
;Bar 6
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	note D#, 9
	rest 3
	note D#, 1
	rest 7
	note D#, 2
	rest 6
	note D#, 4
	rest 4
	note E_, 12
;Bar 7
	note E_, 4
	rest 4
	note E_, 8
	note E_, 4
	note E_, 8
	note E_, 1
	rest 7
	note E_, 12
	rest 16
	sound_jump Music_LookCyclist_Ch3_loop

; ============================================================================================================

Music_LookCyclist_Ch4:
	toggle_noise 3
	drum_speed 6
;Bar 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 6
	drum_note 9, 6
	drum_note 5, 6
	rest 8
;Bar 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 8
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
;Bar 3
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
	drum_note 1, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
Music_LookCyclist_Ch4_loop:
;Bar 4
	drum_note 11, 6
	drum_note 11, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 8, 2
	drum_note 7, 2
	drum_note 11, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 6, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
;Bar 5
	drum_note 11, 6
	drum_note 11, 2
	drum_note 11, 6
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 2
	drum_note 12, 6
	drum_note 11, 2
;Bar 6
	drum_note 11, 6
	drum_note 11, 2
	drum_note 9, 1
	drum_note 9, 1
	drum_note 8, 2
	drum_note 7, 2
	drum_note 11, 2
	drum_note 9, 2
	drum_note 8, 2
	drum_note 6, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
;Bar 7
	drum_note 1, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
	drum_note 1, 6
	drum_note 11, 4
	drum_note 11, 2
	sound_jump Music_LookCyclist_Ch4_loop

; ============================================================================================================

