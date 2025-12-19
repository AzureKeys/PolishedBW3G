;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookHiker:
	channel_count 4
	channel 1, Music_LookHiker_Ch1
	channel 2, Music_LookHiker_Ch2
	channel 3, Music_LookHiker_Ch3
	channel 4, Music_LookHiker_Ch4

Music_LookHiker_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 4, 10, 7
	tempo 144
;Bar 1
Music_LookHiker_Ch1_loop:
	octave 3
	note F_, 2
	rest 6
	note A#, 1
	rest 3
	octave 4
	note C_, 2
	rest 2 ; WARNING: Auto-Sync says: Rounded up!
	octave 3
	note F_, 1
	rest 3
	octave 4
	note C_, 1
	rest 3
	volume_envelope 11, 7
	note D_, 7
	rest 1
	octave 3
	volume_envelope 10, 7
	note A#, 1
	rest 3 ; WARNING: Auto-Sync says: Rounded up!
	volume_envelope 11, 7
	note F_, 6
	rest 2
	volume_envelope 10, 7
	note A#, 1
	rest 3
;Bar 2
	octave 4
	note C_, 6
	rest 2
	octave 3
	volume_envelope 9, 7
	note A#, 2
	rest 2
	volume_envelope 10, 7
	note A_, 1
	rest 3
	note G#, 1
	rest 3
	note G_, 1
	rest 3
	note F_, 8
	volume_envelope 9, 7
	note G_, 2
	rest 2
	volume_envelope 10, 7
	note F_, 10
	rest 2
;Bar 3
	note F_, 2
	rest 6
	note A#, 1
	rest 3
	octave 4
	note C_, 2
	rest 2
	octave 3
	note F_, 1
	rest 3
	octave 4
	note C_, 1
	rest 3
	volume_envelope 11, 7
	note D_, 7
	rest 1
	octave 3
	volume_envelope 10, 7
	note A#, 1
	rest 3
	volume_envelope 11, 7
	note F_, 6
	rest 2
	volume_envelope 10, 7
	note A#, 1
	rest 3
;Bar 4
	octave 4
	note C_, 6
	rest 2
	octave 3
	volume_envelope 9, 7
	note A#, 2
	rest 2
	volume_envelope 10, 7
	note A_, 1
	rest 3
	note G_, 1
	rest 3
	note A_, 1
	rest 3
	note A#, 12
	rest 12
	sound_jump Music_LookHiker_Ch1_loop

; ============================================================================================================

Music_LookHiker_Ch2:
	duty_cycle $1
	note_type 4, 10, 7
;Bar 1
Music_LookHiker_Ch2_loop:
	octave 2
	volume_envelope 11, 7
	note F_, 3
	rest 9
	note D#, 3
	rest 9
	note D_, 3
	rest 9
	octave 1
	note A#, 3
	rest 9
;Bar 2
	octave 2
	note C_, 3
	rest 9
	octave 1
	note F_, 3
	rest 9
	octave 2
	note C_, 3
	rest 9
	note C_, 3
	rest 1
	volume_envelope 10, 7
	note D_, 3
	rest 1
	note E_, 3
	rest 1
;Bar 3
	volume_envelope 12, 7
	note F_, 3
	rest 9
	note D#, 3
	rest 9
	note D_, 3
	rest 9
	octave 1
	volume_envelope 11, 7
	note A#, 3
	rest 9
;Bar 4
	octave 2
	volume_envelope 12, 7
	note C_, 3
	rest 9
	note F_, 3
	rest 9
	octave 1
	note A#, 10
	rest 2
	note A#, 3
	rest 9
	sound_jump Music_LookHiker_Ch2_loop

; ============================================================================================================

Music_LookHiker_Ch3:
	note_type 4, 1, 0
;Bar 1
Music_LookHiker_Ch3_loop:
	octave 4
	volume_envelope 1, 0
	note D_, 2
	rest 10
	note D_, 2
	rest 2
	volume_envelope 2, 0
	note D_, 2
	rest 2
	volume_envelope 1, 0
	note D_, 2
	rest 2
	note D_, 2
	rest 10
	note D_, 2
	rest 10
;Bar 2
	note D#, 2
	rest 10
	note C_, 2
	rest 10
	octave 3
	note A_, 2
	rest 10
	octave 4
	note D#, 11
	rest 1
;Bar 3
	note D_, 2
	rest 10
	note D_, 2
	rest 2
	volume_envelope 2, 0
	note D_, 2
	rest 2
	volume_envelope 1, 0
	note D_, 2
	rest 2
	note D_, 2
	rest 10
	note D_, 2
	rest 10
;Bar 4
	note D#, 2
	rest 10
	note C_, 2
	rest 10
	note D_, 10
	rest 2
	octave 3
	note A#, 2
	rest 10
	sound_jump Music_LookHiker_Ch3_loop

; ============================================================================================================

Music_LookHiker_Ch4:
	toggle_noise 1 ; WARNING: this might sound bad.
	drum_speed 4
;Bar 1
Music_LookHiker_Ch4_loop:
	drum_note 11, 8
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 8
	drum_note 11, 4
	drum_note 11, 8
	drum_note 11, 4
;Bar 2
	drum_note 11, 8
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 12
;Bar 3
	drum_note 11, 8
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 8
	drum_note 11, 4
	drum_note 11, 8
	drum_note 11, 4
;Bar 4
	drum_note 11, 8
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 12
	rest 12
	sound_jump Music_LookHiker_Ch4_loop

; ============================================================================================================

