;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookWorker:
	channel_count 4
	channel 1, Music_LookWorker_Ch1
	channel 2, Music_LookWorker_Ch2
	channel 3, Music_LookWorker_Ch3
	channel 4, Music_LookWorker_Ch4

Music_LookWorker_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 6, 10, 7
	tempo 112
;Bar 1
	rest 16
Music_LookWorker_Ch1_loop:
	rest 8
	octave 4
	note_type 3, 9, 7
	note A_, 1
	volume_envelope 11, 7
	note A#, 5
	rest 10
;Bar 2
	note_type 6, 10, 7
	note G_, 2
	rest 14
	volume_envelope 11, 7
	note G_, 8
	rest 4
	volume_envelope 10, 7
	note G_, 1
	rest 7
;Bar 3
	note G_, 8
	rest 12
	note_type 3, 9, 7
	note A_, 1
	volume_envelope 11, 7
	note B_, 3
	rest 12
;Bar 4
	note_type 6, 10, 7
	note G_, 2
	rest 14
	volume_envelope 11, 7
	note G_, 7
	rest 5
	volume_envelope 10, 7
	note G_, 2
	rest 6
;Bar 5
	volume_envelope 11, 7
	note E_, 8
	volume_envelope 10, 7
	note G_, 2
	rest 2
	volume_envelope 11, 7
	note A_, 5
	rest 3
	volume_envelope 10, 7
	note A_, 5
	rest 3
;Bar 6
	volume_envelope 11, 7
	note A_, 8
	volume_envelope 10, 7
	note G_, 2
	rest 2
	note A_, 1
	rest 3
	note_type 3, 9, 7
	note A_, 1
	volume_envelope 10, 7
	note A#, 5
	rest 2
	note A_, 10
	rest 6
	volume_envelope 11, 7
	note G_, 10
;Bar 7
	rest 6
	note E_, 10
	rest 6
	volume_envelope 10, 7
	note G_, 1
	rest 7
	note_type 12, 11, 7
	note G_, 4
	rest 2
	note G_, 9
;Bar 8
	note_type 6, 11, 7
	rest 2
	rest 16
	rest 16
	sound_jump Music_LookWorker_Ch1_loop

; ============================================================================================================

Music_LookWorker_Ch2:
	duty_cycle $1
	note_type 12, 10, 7
;Bar 1
	volume_envelope 13, 7
	rest 8
Music_LookWorker_Ch2_loop:
	octave 2
	volume_envelope 12, 7
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
;Bar 2
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
;Bar 3
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 1
	volume_envelope 13, 7
	note G_, 1
	rest 1
	volume_envelope 12, 7
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 4
	octave 2
	volume_envelope 13, 7
	note D_, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	volume_envelope 13, 7
	note F_, 1
	rest 1
	volume_envelope 12, 7
	note F_, 1
	rest 1
	volume_envelope 13, 7
	note E_, 1
	rest 1
	volume_envelope 12, 7
	note E_, 1
	rest 1
;Bar 5
	volume_envelope 13, 7
	note D_, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	octave 1
	volume_envelope 13, 7
	note B_, 1
	rest 1
	volume_envelope 12, 7
	note B_, 1
	rest 1
	octave 2
	volume_envelope 13, 7
	note D_, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 1
	rest 1
;Bar 6
	volume_envelope 13, 7
	note A_, 1
	rest 1
	volume_envelope 12, 7
	note A_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	volume_envelope 13, 7
	note C_, 1
	rest 1
	volume_envelope 12, 7
	note C_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
;Bar 7
	volume_envelope 13, 7
	note G_, 1
	rest 1
	volume_envelope 12, 7
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 1
	volume_envelope 13, 7
	note G_, 1
	rest 1
	volume_envelope 12, 7
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 8
	octave 2
	volume_envelope 13, 7
	note D_, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	volume_envelope 13, 7
	note D_, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	note D_, 1
	rest 1
;Bar 9
	volume_envelope 13, 7
	note D_, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	sound_jump Music_LookWorker_Ch2_loop

; ============================================================================================================

Music_LookWorker_Ch3:
	note_type 3, 1, 3
;Bar 1
	volume_envelope 2, 3
	rest 16
	rest 9
	octave 3
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
Music_LookWorker_Ch3_loop:
	note_type 12, 2, 3
	note G_, 15
;Bar 2
	note_type 6, 2, 3
	note G_, 1
	note A_, 1
	note A#, 12
	note G_, 2
	rest 6
;Bar 3
	note G_, 12
	note_type 12, 2, 3
	note G_, 15
;Bar 4
	note_type 6, 2, 3
	note A_, 1
	note A#, 1
	note B_, 12
	note G_, 2
	rest 6
;Bar 5
	note G_, 8
	note_type 3, 2, 3
	octave 3
	rest 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	note_type 12, 2, 3
	note A_, 16
;Bar 6
	note G_, 16
;Bar 7
	note G_, 16
;Bar 8
	rest 14
;Bar 9
	note_type 3, 2, 3
	octave 3
	rest 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	sound_jump Music_LookWorker_Ch3_loop

; ============================================================================================================

Music_LookWorker_Ch4:
	toggle_noise 3 ; WARNING: this might sound bad.
	drum_speed 12
;Bar 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 8, 2
	drum_note 11, 4
Music_LookWorker_Ch4_loop:
	drum_note 12, 4
	drum_note 1, 2
	drum_note 11, 4
;Bar 2
	drum_note 11, 2
	drum_note 3, 4
	drum_note 11, 4
	drum_note 1, 4
;Bar 3
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 4
	drum_note 12, 4
	drum_note 1, 2
	drum_note 11, 4
;Bar 4
	drum_note 11, 2
	drum_note 3, 4
	drum_note 11, 4
	drum_note 1, 4
;Bar 5
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 4
	drum_note 12, 4
	drum_note 1, 2
	drum_note 11, 4
;Bar 6
	drum_note 11, 2
	drum_note 3, 4
	drum_note 11, 4
	drum_note 1, 4
;Bar 7
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 4
	drum_note 11, 4
	drum_note 1, 2
	drum_note 11, 4
;Bar 8
	drum_note 11, 2
	drum_note 3, 4
	drum_note 11, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 9
	drum_note 1, 2
	drum_note 1, 2
	drum_note 11, 1
	drum_note 10, 1
	drum_note 9, 1
	drum_note 8, 1
	sound_jump Music_LookWorker_Ch4_loop

; ============================================================================================================

