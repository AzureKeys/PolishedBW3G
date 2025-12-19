;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookAceTrainer:
	channel_count 4
	channel 1, Music_LookAceTrainer_Ch1
	channel 2, Music_LookAceTrainer_Ch2
	channel 3, Music_LookAceTrainer_Ch3
	channel 4, Music_LookAceTrainer_Ch4

Music_LookAceTrainer_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 6, 10, 7
	tempo 134
;Bar 1
	octave 4
	volume_envelope 11, 7
	note C_, 1
	rest 3
	note C_, 1
	rest 3
	note C#, 1
	rest 1
	note C#, 1
	rest 3
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	note F_, 1
	octave 5
	volume_envelope 10, 7
	note E_, 1
	volume_envelope 9, 7
	note D_, 1
	note C_, 1
	octave 3
	volume_envelope 11, 7
	note A_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	volume_envelope 10, 7
	note F_, 1
	rest 1
Music_LookAceTrainer_Ch1_Loop:
;Bar 2
	note A_, 4
	octave 5
	volume_envelope 11, 7
	note C_, 1
	octave 4
	volume_envelope 10, 7
	note A_, 1
	octave 5
	note C_, 1
	octave 4
	note A_, 1
	octave 5
	note C_, 1
	octave 4
	note A_, 1
	octave 5
	volume_envelope 9, 7
	note C_, 1
	octave 4
	volume_envelope 11, 7
	note A_, 7
	note G_, 2
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	note F_, 2
	note C_, 3
	volume_envelope 10, 7
	note C#, 1
	note D_, 2
;Bar 3
	rest 2
	volume_envelope 11, 7
	note D_, 2
	note C_, 4
	note F_, 1
	rest 1
	note C_, 1
	rest 3
	volume_envelope 10, 7
	note G_, 1
	note G#, 1
	volume_envelope 11, 7
	note A_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	note G_, 2
	note F_, 3
	note E_, 1
	volume_envelope 10, 7
	note D_, 1
	note G#, 1
;Bar 4
	volume_envelope 11, 7
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note A#, 2
	note A_, 1
	rest 1
	note C_, 1
	rest 1
	note G_, 2
	note F_, 3
	volume_envelope 10, 7
	note E_, 1
	note D_, 1
	note C_, 1
	octave 3
	volume_envelope 11, 7
	note A_, 2
	octave 4
	note C_, 2
	note F_, 2
	note C#, 1
	rest 1
	note G_, 1
	rest 1
	note C#, 1
	rest 1
;Bar 5
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note G#, 1
	rest 1
	note A_, 2
	volume_envelope 10, 7
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	volume_envelope 11, 7
	note A_, 2
	note G_, 2
	note G#, 2
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note A_, 4
	octave 5
	note G_, 1
	rest 1
	note F_, 2
	note E_, 1
	volume_envelope 10, 7
	note D_, 1
;Bar 6
	volume_envelope 11, 7
	note C#, 4
	note C_, 1
	rest 1
	octave 4
	note B_, 4
	note A#, 1
	rest 1
	note A_, 4
	note G#, 1
	rest 1
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	note F_, 4
	volume_envelope 10, 7
	note E_, 1
	note D#, 1
	note D_, 1
	volume_envelope 11, 7
	note C#, 2
	volume_envelope 10, 7
	note C_, 1
;Bar 7
	octave 5
	volume_envelope 11, 7
	note F_, 1
	rest 1
	note E_, 4
	note D#, 1
	rest 1
	note D_, 4
	note C#, 1
	rest 1
	note C_, 4
	octave 4
	note B_, 1
	rest 1
	note A#, 1
	rest 1
	volume_envelope 10, 7
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	volume_envelope 11, 7
	note F_, 1
	rest 1
	volume_envelope 10, 7
	note G_, 1
	note A_, 1
	note A#, 1
	volume_envelope 9, 7
	note F_, 1
;Bar 8
	volume_envelope 11, 7
	note E_, 2
	note D#, 1
	rest 1
	note E_, 4
	note F_, 1
	rest 1
	note E_, 2
	note D#, 1
	rest 1
	note E_, 4
	note D_, 1
	volume_envelope 10, 7
	note C_, 1
	octave 3
	note B_, 1
	note A_, 1
	octave 4
	note E_, 2
	note F_, 1
	note E_, 1
	volume_envelope 11, 7
	note F_, 2
	octave 3
	note G#, 2
	note B_, 1
	rest 1
;Bar 9
	octave 4
	note C_, 1
	rest 3
	note C_, 1
	rest 3
	note C#, 1
	rest 1
	note C#, 1
	rest 3
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	note F_, 1
	volume_envelope 10, 7
	note E_, 1
	note D_, 1
	note C_, 1
	octave 3
	volume_envelope 11, 7
	note A_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	volume_envelope 10, 7
	note F_, 1
	rest 1
	sound_jump Music_LookAceTrainer_Ch1_Loop

; ============================================================================================================

Music_LookAceTrainer_Ch2:
	duty_cycle $1
	note_type 6, 10, 7
;Bar 1
	octave 2
	volume_envelope 12, 7
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 4
	octave 1
	volume_envelope 13, 7
	note A_, 2
	octave 2
	note C_, 2
	note C#, 2
Music_LookAceTrainer_Ch2_Loop:
;Bar 2
	note D_, 6
	volume_envelope 12, 7
	note A_, 6
	octave 3
	note D_, 8
	octave 2
	note D_, 4
	note F_, 2
	note G_, 2
	note G#, 2
	note A_, 2
;Bar 3
	note D_, 6
	note A_, 6
	octave 3
	note D_, 8
	octave 2
	note D_, 4
	note F_, 2
	note G_, 2
	note G#, 2
	note A_, 2
;Bar 4
	note G_, 6
	octave 3
	note D_, 6
	note F_, 8
	octave 2
	note G_, 4
	note B_, 2
	octave 3
	note C_, 2
	note C#, 2
	note D_, 2
;Bar 5
	octave 2
	note A_, 6
	octave 3
	note E_, 6
	note A_, 8
	octave 2
	note A_, 4
	octave 3
	note C#, 2
	note D_, 2
	note D#, 2
	note E_, 2
;Bar 6
	octave 2
	note D_, 6
	note A_, 6
	octave 3
	note D_, 8
	octave 2
	note D_, 4
	note F_, 2
	note G_, 2
	note G#, 2
	note A_, 2
;Bar 7
	note G_, 6
	octave 3
	note D_, 6
	note F_, 8
	octave 2
	note G_, 4
	note B_, 2
	octave 3
	note C_, 2
	note C#, 2
	note D_, 2
;Bar 8
	octave 2
	note G#, 6
	octave 3
	note E_, 6
	note G#, 8
	octave 2
	note G#, 4
	octave 3
	note F_, 2
	note F#, 2
	note G_, 2
	note G#, 2
;Bar 9
	note A_, 2
	rest 2
	octave 2
	note A_, 2
	rest 2
	note A_, 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 4
	octave 1
	volume_envelope 13, 7
	note A_, 2
	octave 2
	note C_, 2
	note C#, 2
	sound_jump Music_LookAceTrainer_Ch2_Loop

; ============================================================================================================

Music_LookAceTrainer_Ch3:
	note_type 6, 1, 0
;Bar 1
	octave 3
	volume_envelope 2, 0
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note F_, 2
	note F_, 2
	rest 2
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note A_, 10
Music_LookAceTrainer_Ch3_Loop:
;Bar 2
	note B_, 6
	octave 4
	note C#, 6
	octave 3
	note F#, 8
	note E_, 4
	note A_, 8
;Bar 3
	note F#, 4
	note E_, 4
	note A_, 2
	note E_, 4
	note F#, 6
	note A_, 4
	note B_, 2
	octave 4
	note C_, 6
;Bar 4
	note C#, 6
	note E_, 6
	octave 3
	note E_, 8
	note B_, 4
	note A_, 8
;Bar 5
	note B_, 4
	note C#, 2
	octave 4
	note C#, 4
	note C#, 2
	note E_, 4
	note C#, 2
	note C_, 2
	octave 3
	note B_, 2
	note E_, 2
	note B_, 2
	note A_, 6
;Bar 6
	note B_, 6
	note A#, 6
	note A_, 6
	note B_, 2
	octave 4
	note C_, 2
	note C#, 2
	octave 3
	note E_, 2
	note A_, 6
;Bar 7
	note G#, 6
	note G_, 6
	note F#, 6
	note F_, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note F#, 4
	note D#, 2
;Bar 8
	note G#, 4
	note A_, 2
	note G#, 4
	note C#, 2
	note C_, 4
	note E_, 2
	note D#, 4
	note D_, 2
	note D#, 2
	note C#, 2
	note D_, 2
	note D#, 2
;Bar 9
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note F_, 2
	note F_, 2
	rest 2
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note A_, 10
	sound_jump Music_LookAceTrainer_Ch3_Loop

; ============================================================================================================

Music_LookAceTrainer_Ch4:
	toggle_noise 3 ; WARNING: this might sound bad.
	drum_speed 6
;Bar 1
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 6
	drum_note 10, 2
	drum_note 9, 2
Music_LookAceTrainer_Ch4_Loop:
;Bar 2
	drum_note 11, 8
	drum_note 1, 6
	drum_note 11, 4
	drum_note 11, 6
	drum_note 1, 2
	drum_note 1, 6
	sound_loop 7, Music_LookAceTrainer_Ch4_Loop
;Bar 9
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 8
	drum_note 12, 2
	sound_jump Music_LookAceTrainer_Ch4_Loop

; ============================================================================================================

