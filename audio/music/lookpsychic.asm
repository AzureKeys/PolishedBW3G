;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookPsychic:
	channel_count 4
	channel 1, Music_LookPsychic_Ch1
	channel 2, Music_LookPsychic_Ch2
	channel 3, Music_LookPsychic_Ch3
	channel 4, Music_LookPsychic_Ch4

Music_LookPsychic_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 10, 7
	tempo 76
Music_LookPsychic_Ch1_Loop:
;Bar 1
	octave 3
	note C_, 8
	rest 8
;Bar 2
	octave 2
	note C_, 8
	rest 8
;Bar 3
	octave 1
	volume_envelope 13, 7
	note B_, 8
	rest 8
;Bar 4
	octave 2
	volume_envelope 12, 7
	note C_, 8
	rest 8
;Bar 5
	volume_envelope 8, 7
	note B_, 4
	rest 8
	octave 3
	note D_, 4
;Bar 6
	rest 16
;Bar 7
	octave 2
	note G#, 4
	rest 8
	octave 3
	note D#, 4
;Bar 8
	rest 8
	octave 2
	note C#, 4
	rest 12
;Bar 9
	note E_, 4
	rest 12
;Bar 10
	octave 1
	note A#, 4
	rest 8
;Bar 11
	octave 2
	note F_, 4
	rest 8
;Bar 12
	rest 16
;Bar 13
	rest 16
;Bar 14
	rest 16
;Bar 15
	rest 16
;Bar 16
	rest 16
;Bar 17
	rest 16
;Bar 18
	rest 16
;Bar 19
	octave 3
	volume_envelope 10, 7
	note C#, 8
	sound_jump Music_LookPsychic_Ch1_Loop

; ============================================================================================================

Music_LookPsychic_Ch2:
	duty_cycle $1
	note_type 12, 10, 7
Music_LookPsychic_Ch2_Loop:
;Bar 1
	volume_envelope 9, 7
	rest 8
	octave 2
	volume_envelope 10, 7
	note F_, 16
;Bar 2
	note F_, 16
;Bar 3
	note F_, 1
	octave 3
	volume_envelope 9, 7
	note C_, 1
	octave 2
	volume_envelope 10, 7
	note B_, 1
	volume_envelope 9, 7
	note A#, 1
	volume_envelope 10, 7
	note G_, 1
	octave 3
	note D#, 1
	note A#, 1
	volume_envelope 9, 7
	note F#, 1
;Bar 4
	volume_envelope 10, 7
	note D_, 1
	octave 2
	note B_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note G_, 1
	note G#, 1
	note C_, 1
	note D#, 3
	rest 1
	note D#, 4
;Bar 5
	octave 3
	note D#, 8
	note D_, 8
;Bar 6
	note G#, 8
	note G_, 8
;Bar 7
	note C#, 8
	note F#, 8
;Bar 8
	note F_, 8
	octave 2
	note B_, 8
;Bar 9
	octave 3
	note F_, 8
	note E_, 8
;Bar 10
	octave 2
	note F_, 4
	rest 4
	note F_, 4
	rest 12
;Bar 11
	note F_, 4
	note F_, 4
;Bar 12
	note F_, 4
	rest 12
;Bar 13
	note F_, 2
	rest 6
	note F_, 8
;Bar 14
	note E_, 8
	note B_, 8
;Bar 15
	note G_, 8
	octave 3
	note F#, 8
;Bar 16
	note C#, 8
	octave 2
	note G#, 8
;Bar 17
	note E_, 8
	note C#, 8
;Bar 18
	note C_, 16
;Bar 19
	octave 1
	note B_, 8
	sound_jump Music_LookPsychic_Ch2_Loop

; ============================================================================================================

Music_LookPsychic_Ch3:
	note_type 12, 1, 3
Music_LookPsychic_Ch3_Loop:
;Bar 1
	rest 16
;Bar 2
	octave 5
	volume_envelope 1, 3
	note F_, 16
;Bar 3
	note F_, 8
	octave 6
	note D#, 16
;Bar 4
	note D#, 12
;Bar 5
	note E_, 4
	octave 5
	note B_, 16
;Bar 6
	note B_, 8
;Bar 7
	note A#, 16
;Bar 8
	note A#, 8
	note A_, 16
;Bar 9
	note A_, 8
;Bar 10
	note G#, 4
	rest 4
	note G#, 4
	rest 12
;Bar 11
	note G#, 2
	rest 2
	volume_envelope 2, 3
	note G#, 2
	rest 2
;Bar 12
	volume_envelope 1, 3
	note G#, 4
	rest 12
;Bar 13
	note G#, 2
	rest 6
	note G#, 8
;Bar 14
	note G_, 16
;Bar 15
	note G_, 16
;Bar 16
	note G_, 16
;Bar 17
	note G_, 16
;Bar 18
	rest 16
;Bar 19
	rest 8
	sound_jump Music_LookPsychic_Ch3_Loop

; ============================================================================================================

Music_LookPsychic_Ch4:
	drum_speed 12
	toggle_noise 1
;Bar 1
Music_LookPsychic_Ch4_Loop:
	rest 8
	drum_note 1, 4
	drum_note 1, 4
;Bar 2
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
;Bar 3
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
;Bar 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
;Bar 5
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
;Bar 6
	drum_note 1, 4
	drum_note 1, 4
	toggle_noise 3
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 2
	drum_note 11, 2
;Bar 7
	drum_note 11, 2
	drum_note 12, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 2
;Bar 8
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 2
	drum_note 11, 2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 11, 2
	drum_note 11, 2
;Bar 9
	drum_note 12, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 2
	drum_note 11, 2
;Bar 10
	drum_note 12, 4
	drum_note 11, 4
	drum_note 12, 4
	drum_note 11, 4
;Bar 11
	rest 8
	drum_note 11, 4
	drum_note 11, 4
;Bar 12
	drum_note 11, 4
	rest 12
;Bar 13
	drum_note 11, 8
	drum_note 11, 8
;Bar 14
	drum_note 11, 8
	rest 8
;Bar 15
	rest 16
;Bar 16
	rest 16
;Bar 17
	rest 16
;Bar 18
	rest 16
;Bar 19
	rest 8
	toggle_noise 1
	sound_jump Music_LookPsychic_Ch4_Loop

; ============================================================================================================

