;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookPlasma:
	channel_count 4
	channel 1, Music_LookPlasma_Ch1
	channel 2, Music_LookPlasma_Ch2
	channel 3, Music_LookPlasma_Ch3
	channel 4, Music_LookPlasma_Ch4

Music_LookPlasma_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 8, 10, 7
	tempo 105
;Bar 1
	rest 2
	octave 2 
	note F#, 1
	rest 3
	octave 3
	note E_, 1
	rest 3
	note D#, 1
	rest 3
	octave 2
	note B_, 1
	rest 3
	octave 3
	note A_, 1
	rest 3
	note G#, 1
	rest 3
;Bar 2
	note F#, 1
	rest 3
	octave 4
	volume_envelope 8, 7
	note E_, 1
	rest 3
	volume_envelope 7, 7
	note D#, 1
	rest 3
	octave 3
	volume_envelope 9, 7
	note B_, 1
	rest 3
	octave 4
	volume_envelope 7, 7
	note A_, 1
	rest 3
	volume_envelope 5, 7
	note G#, 4
Music_LookPlasma_Ch1_loop:
;Bar 3
	volume_envelope 10, 7
	note E_, 3
	rest 1
	note E_, 1
	rest 11
	note E_, 2
	rest 6
;Bar 4
	note E_, 3
	rest 1
	note E_, 1
	rest 11
	note F_, 6
;Bar 5
	volume_envelope 9, 7
	note D_, 1
	note D#, 1
	volume_envelope 10, 7
	note E_, 3
	rest 1
	note E_, 1
	rest 11
	note E_, 2
	rest 6
;Bar 6
	note E_, 3
	rest 1
	note E_, 1
	rest 11
	note F_, 6
;Bar 7
	volume_envelope 9, 7
	note G_, 1
	rest 1
	volume_envelope 10, 7
	note E_, 3
	rest 1
	note E_, 1
	rest 11
	note E_, 2
	rest 8
;Bar 8
	octave 3
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	note B_, 1
	rest 1
	note B_, 1
	rest 3
	volume_envelope 11, 7
	note A#, 8
;Bar 9
	octave 2
	volume_envelope 9, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note B_, 1
	rest 1
	volume_envelope 9, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note B_, 1
	rest 1
	volume_envelope 9, 7
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	note B_, 1
	rest 3
;Bar 10
	note B_, 1
	rest 3
	octave 3
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	note C_, 1
	rest 3
	octave 2
	note A_, 1
	rest 3
	octave 3
	note C_, 1
	rest 3
;Bar 11
	octave 2
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note B_, 1
	rest 1
	volume_envelope 9, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note B_, 1
	rest 1
	volume_envelope 9, 7
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	note B_, 1
	rest 3
;Bar 12
	note B_, 1
	rest 3
	octave 3
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	note C_, 1
	rest 3
	note G_, 1
	rest 3
	note F#, 1
	rest 3
;Bar 13
	note D#, 1
	rest 3
	volume_envelope 5, 7
	note D#, 1
	rest 1
	volume_envelope 9, 7
	note D#, 1
	rest 3
	volume_envelope 5, 7
	note D#, 1
	rest 1
	volume_envelope 9, 7
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	note D#, 1
	rest 3
;Bar 14
	note D#, 1
	rest 3
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note E_, 1
	rest 3
	note C#, 1
	rest 3
	note E_, 1
	rest 3
;Bar 15
	note D#, 1
	rest 3
	volume_envelope 5, 7
	note D#, 1
	rest 1
	volume_envelope 9, 7
	note D#, 1
	rest 3
	volume_envelope 5, 7
	note D#, 1
	rest 1
	volume_envelope 9, 7
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	note D#, 1
	rest 3
;Bar 16
	note D#, 1
	rest 3
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note E_, 1
	rest 3
	octave 4
	note C_, 1
	rest 3
	octave 3
	note B_, 1
	rest 3
;Bar 17
	note F#, 1
	rest 3
	octave 4
	note E_, 1
	rest 3
	note D#, 1
	rest 3
	octave 3
	note B_, 1
	rest 3
	octave 4
	note A_, 1
	rest 3
	note G#, 1
	rest 3
;Bar 18
	volume_envelope 7, 7
	note F#, 1
	rest 3
	octave 5
	note E_, 1
	rest 3
	volume_envelope 6, 7
	note D#, 1
	rest 3
	octave 4
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 6, 7
	octave 5
	note A_, 1
	rest 3
	note G#, 4
	octave 4
	sound_jump Music_LookPlasma_Ch1_loop

; ============================================================================================================

Music_LookPlasma_Ch2:
	duty_cycle $1
	note_type 8, 10, 7
;Bar 1
	volume_envelope 6, 7
	rest 2
	octave 1
	volume_envelope 9, 7
	note B_, 16
	note B_, 8
;Bar 2
	rest 16
	rest 8
Music_LookPlasma_Ch2_loop:
;Bar 3
	note_type 4, 11, 7
	note E_, 8
	volume_envelope 9, 7
	note E_, 1
	rest 3
	octave 2
	volume_envelope 8, 7
	note E_, 1
	rest 3
	octave 3
	note D_, 1
	rest 3
	octave 2
	note E_, 1
	rest 3
	note C#, 4
	octave 3
	note E_, 1
	rest 7
	note E_, 8
;Bar 4
	rest 4
	octave 2
	note C_, 8
	octave 3
	note E_, 1
	rest 3
	octave 2
	note E_, 1
	rest 3
	octave 3
	note E_, 8
	octave 2
	volume_envelope 10, 7
	note E_, 4
	note G_, 4
	note A#, 12
;Bar 5
	volume_envelope 8, 7
	note A#, 1
	rest 3
	octave 1
	volume_envelope 11, 7
	note E_, 8
	volume_envelope 9, 7
	note E_, 1
	rest 3
	octave 2
	volume_envelope 8, 7
	note E_, 1
	rest 3
	octave 3
	note D_, 1
	rest 3
	octave 2
	note E_, 1
	rest 3
	note C#, 4
	octave 3
	note E_, 1
	rest 7
	note E_, 8
;Bar 6
	rest 4
	octave 2
	note C_, 8
	octave 3
	note E_, 1
	rest 3
	octave 2
	note E_, 1
	rest 3
	octave 3
	note E_, 8
	octave 2
	volume_envelope 10, 7
	note E_, 4
	note G_, 4
	note A#, 12
;Bar 7
	volume_envelope 8, 7
	note A#, 1
	rest 3
	octave 1
	volume_envelope 11, 7
	note E_, 8
	octave 2
	note E_, 2
	rest 2
	volume_envelope 8, 7
	note E_, 1
	rest 3
	octave 3
	note D_, 1
	rest 3
	octave 2
	note E_, 1
	rest 3
	note C#, 4
	octave 3
	note E_, 1
	rest 7
	note E_, 8
;Bar 8
	rest 4
	octave 1
	note B_, 4
	octave 2
	note B_, 2
	rest 6
	note B_, 1
	rest 7
	octave 1
	note B_, 1
	rest 3
	octave 2
	volume_envelope 9, 7
	note B_, 2
	rest 2
	volume_envelope 8, 7
	note F_, 4
	octave 1
	volume_envelope 11, 7
	note A#, 14
;Bar 9
	rest 16
	rest 16
	rest 16
;Bar 10
	rest 16
	rest 16
	rest 16
;Bar 11
	rest 16
	rest 16
	rest 16
;Bar 12
	rest 16
	rest 16
	rest 6
	octave 2
	volume_envelope 8, 7
	note F#, 12
;Bar 13
	octave 1
	note B_, 2
	rest 2
	volume_envelope 5, 7
	note B_, 1
	rest 3
	volume_envelope 7, 7
	note B_, 1
	rest 3
	octave 2
	volume_envelope 6, 7
	note B_, 1
	rest 3
	octave 1
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note B_, 1
	rest 3
	volume_envelope 6, 7
	note B_, 1
	rest 3
	octave 2
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note F#, 1
	rest 3
	volume_envelope 6, 7
	note B_, 8
;Bar 14
	volume_envelope 5, 7
	note F#, 1
	rest 3
	octave 1
	volume_envelope 8, 7
	note B_, 2
	rest 2
	volume_envelope 5, 7
	note B_, 1
	rest 3
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 10, 7
	note B_, 1
	rest 3
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note B_, 1
	rest 3
	volume_envelope 6, 7
	note B_, 1
	rest 3
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note B_, 1
	rest 3
	volume_envelope 8, 7
	note B_, 4
	volume_envelope 5, 7
	note B_, 1
	rest 3
;Bar 15
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 8, 7
	note B_, 2
	rest 2
	volume_envelope 5, 7
	note B_, 1
	rest 3
	volume_envelope 7, 7
	note B_, 1
	rest 3
	octave 2
	volume_envelope 6, 7
	note B_, 1
	rest 3
	octave 1
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note B_, 1
	rest 3
	volume_envelope 6, 7
	note B_, 1
	rest 3
	octave 2
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note F#, 1
	rest 3
	volume_envelope 6, 7
	note B_, 8
;Bar 16
	volume_envelope 5, 7
	note F#, 1
	rest 3
	octave 1
	volume_envelope 8, 7
	note B_, 2
	rest 2
	octave 2
	volume_envelope 9, 7
	note A_, 8
	octave 1
	volume_envelope 10, 7
	note B_, 1
	rest 3
	octave 2
	volume_envelope 9, 7
	note F_, 8
	octave 1
	volume_envelope 10, 7
	note B_, 1
	rest 3
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note B_, 1
	rest 3
	volume_envelope 8, 7
	note B_, 4
	volume_envelope 5, 7
	note B_, 1
	rest 3
;Bar 17
	note B_, 1
	rest 3
	volume_envelope 8, 7
	note B_, 2
	rest 2
	octave 2
	volume_envelope 9, 7
	note F_, 8
	octave 1
	volume_envelope 10, 7
	note B_, 1
	rest 3
	volume_envelope 9, 7
	note A#, 8
	volume_envelope 10, 7
	note B_, 1
	rest 3
	volume_envelope 7, 7
	note B_, 1
	rest 3
	volume_envelope 5, 7
	note B_, 1
	rest 3
	volume_envelope 8, 7
	note B_, 4
	volume_envelope 5, 7
	note B_, 1
	rest 3
;Bar 18
	note B_, 1
	rest 3
	volume_envelope 8, 7
	note B_, 2
	rest 2
	octave 2
	volume_envelope 9, 7
	note E_, 8
	octave 1
	volume_envelope 10, 7
	note B_, 1
	rest 3
	volume_envelope 9, 7
	octave 2
	volume_envelope 5, 7
	note B_, 1
	rest 3
	volume_envelope 9, 7
	note B_, 1
	rest 3
	octave 1
	volume_envelope 10, 7
	note B_, 2
	rest 2
	octave 2
	volume_envelope 7, 7
	note B_, 1
	rest 3
	octave 1
	volume_envelope 8, 7
	note B_, 4
	octave 2
	note A_, 12
	octave 1
	sound_jump Music_LookPlasma_Ch2_loop

; ============================================================================================================

Music_LookPlasma_Ch3:
	note_type 8, 1, 2
;Bar 1
	volume_envelope 2, 2
	rest 2
	octave 4
	note B_, 4
	octave 5
	note D#, 2
	note F_, 4
	note D#, 2
	octave 4
	note B_, 4
	octave 5
	note F_, 2
	note D#, 4
;Bar 2
	note F_, 2
	octave 4
	note B_, 9
	note B_, 9
	rest 6
Music_LookPlasma_Ch3_loop:
;Bar 3
	note E_, 4
	octave 5
	note D_, 1
	rest 1
	octave 4
	note B_, 4
	octave 5
	note D_, 1
	rest 1
	octave 4
	note A#, 4
	octave 5
	note D_, 1
	rest 1
	note E_, 4
;Bar 4
	note D_, 1
	rest 1
	note D_, 4
	octave 4
	note B_, 1
	rest 1
	note A#, 4
	note B_, 1
	rest 5
	note A#, 6
;Bar 5
	note G_, 1
	rest 1
	note E_, 4
	octave 5
	note D_, 1
	rest 1
	octave 4
	note B_, 4
	octave 5
	note D_, 1
	rest 1
	octave 4
	note A#, 4
	octave 5
	note D_, 1
	rest 1
	note E_, 4
;Bar 6
	note D_, 1
	rest 1
	note D_, 4
	octave 4
	note B_, 1
	rest 1
	note A#, 4
	note B_, 1
	rest 5
	note A#, 6
;Bar 7
	note B_, 1
	rest 1
	note E_, 4
	octave 5
	note D_, 1
	rest 1
	octave 4
	note B_, 4
	octave 5
	note D_, 1
	rest 1
	octave 4
	note A#, 4
	octave 5
	note D_, 1
	rest 1
	octave 4
	note A_, 4
;Bar 8
	octave 5
	note D_, 1
	rest 3
	octave 4
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	note D#, 1
	rest 1
	note D#, 1
	rest 3
	note A#, 8
;Bar 9
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 4
	note B_, 6
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
;Bar 10
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 11
	note B_, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 4
	note B_, 6
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
;Bar 12
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 13
	note B_, 1
	rest 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 4
	note B_, 6
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
;Bar 14
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 15
	note B_, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 4
	note B_, 6
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
;Bar 16
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 17
	note B_, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 18
	note B_, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
;Bar 19
	note B_, 1
	rest 1
	sound_jump Music_LookPlasma_Ch3_loop

; ============================================================================================================

Music_LookPlasma_Ch4:
	toggle_noise 3 ; WARNING: this might sound bad.
	drum_speed 8
;Bar 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 4
	rest 16
	rest 16
;Bar 2
	rest 12
Music_LookPlasma_Ch4_loop:
;Bar 3
	drum_note 8, 4
	drum_note 8, 2
	drum_note 3, 4
	drum_note 12, 2
	drum_note 2, 4
	drum_note 12, 2
	drum_note 1, 4
;Bar 4
	drum_note 12, 2
	drum_note 11, 4
	drum_note 12, 2
	drum_note 8, 4
	drum_note 12, 2
	drum_note 9, 2
	drum_note 12, 2
	drum_note 2, 6
;Bar 5
	drum_note 7, 2
	drum_note 8, 6
	drum_note 3, 4
	drum_note 12, 2
	drum_note 2, 4
	drum_note 12, 2
	drum_note 1, 4
;Bar 6
	drum_note 12, 2
	drum_note 11, 4
	drum_note 12, 2
	drum_note 8, 4
	drum_note 12, 2
	drum_note 9, 2
	drum_note 12, 2
	drum_note 2, 6
;Bar 7
	drum_note 7, 2
	drum_note 8, 4
	drum_note 8, 2
	drum_note 3, 4
	drum_note 12, 2
	drum_note 2, 4
	drum_note 12, 2
	drum_note 1, 4
;Bar 8
	drum_note 12, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 12, 6
;Bar 9
	drum_note 7, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 7, 4
	drum_note 1, 4
;Bar 10
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 7, 4
	drum_note 1, 4
;Bar 11
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 7, 4
	drum_note 1, 4
;Bar 12
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 7, 4
	drum_note 1, 4
;Bar 13
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 7, 4
	drum_note 1, 4
;Bar 14
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 7, 4
	drum_note 1, 4
;Bar 15
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 7, 4
	drum_note 1, 4
;Bar 16
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 7, 4
	drum_note 1, 4
;Bar 17
	drum_note 3, 2
	drum_note 1, 4
	drum_note 3, 2
	drum_note 8, 4
	drum_note 3, 4
	drum_note 7, 4
	drum_note 1, 4
;Bar 18
	drum_note 3, 2
	drum_note 8, 4
	drum_note 3, 2
	drum_note 1, 4
	drum_note 3, 2
	drum_note 8, 2
	drum_note 9, 2
	drum_note 7, 2
	drum_note 1, 2
;Bar 19
	drum_note 2, 2
	sound_jump Music_LookPlasma_Ch4_loop

; ============================================================================================================

