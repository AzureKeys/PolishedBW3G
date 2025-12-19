;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookRival:
	channel_count 4
	channel 1, Music_InferEncounter_Ch1
	channel 2, Music_InferEncounter_Ch2
	channel 3, Music_InferEncounter_Ch3
	channel 4, Music_InferEncounter_Ch4

Music_InferEncounter_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 10, 7
	tempo 136
;Bar 1
	octave 4
	volume_envelope 12, 7
	note G#, 1
	note G_, 1
	note D#, 1
	note C_, 1
Music_InferEncounter_Ch1_loop:
	octave 3
	note B_, 10
	rest 4
;Bar 2
	volume_envelope 11, 7
	note A#, 1
	note B_, 1
	octave 4
	note C_, 4
	rest 2
	octave 3
	note B_, 1
	octave 4
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 12, 7
	note E_, 2
	volume_envelope 11, 7
	note D#, 2
;Bar 3
	volume_envelope 12, 7
	note G_, 2
	volume_envelope 11, 7
	note F#, 2
	volume_envelope 12, 7
	note A#, 10
	rest 4
;Bar 4
	note B_, 1
	rest 1
	note G#, 4
	rest 2
	note A_, 1
	rest 1
	note F#, 2
	note F_, 1
	rest 1
;Bar 5
	note A_, 2
	note G_, 1
	rest 1
	note G#, 10
	rest 2
;Bar 6
	note A_, 1
	note G#, 1
	note E_, 1
	note C_, 1
	volume_envelope 13, 7
	note D#, 10
	rest 4
;Bar 7
	volume_envelope 12, 7
	note E_, 1
	rest 1
	note G_, 4
	rest 2
	note F#, 1
	rest 1
	volume_envelope 13, 7
	note A_, 2
	volume_envelope 12, 7
	note G#, 1
	rest 1
;Bar 8
	octave 5
	volume_envelope 13, 7
	note C_, 2
	octave 4
	volume_envelope 12, 7
	note A#, 1
	rest 1
	note B_, 11
	rest 7
;Bar 9
	octave 5
	volume_envelope 13, 7
	note C_, 1
	volume_envelope 12, 7
	note C_, 1
	volume_envelope 11, 7
	note C_, 1
	rest 3
	volume_envelope 12, 7
	note C_, 1
	rest 1
	note C_, 1
	rest 3
;Bar 10
	note C_, 1
	rest 3
	octave 4
	note A#, 1
	note A#, 1
	volume_envelope 13, 7
	note A#, 1
	rest 3
	volume_envelope 12, 7
	note A#, 1
	rest 1
	note A#, 1
	rest 3
;Bar 11
	note A#, 1
	rest 3
	octave 5
	note C_, 1
	note C_, 1
	note C_, 1
	rest 3
	note C_, 1
	rest 1
	note C_, 1
	rest 3
;Bar 12
	note C_, 1
	rest 1
	volume_envelope 13, 7
	note D#, 1
	rest 1
	octave 4
	note_type 6, 12, 7
	note C_, 1
	rest 3
	volume_envelope 11, 7
	note C_, 1
	rest 3
	octave 5
	volume_envelope 12, 7
	note D#, 2
	rest 2
	octave 4
	note C_, 1
	rest 3
	volume_envelope 11, 7
	note C_, 1
	rest 3
;Bar 13
	octave 5
	volume_envelope 13, 7
	note D#, 2
	rest 2
	octave 4
	volume_envelope 12, 7
	note C_, 1
	rest 3
	volume_envelope 11, 7
	note C_, 1
	rest 3
	octave 5
	volume_envelope 12, 7
	note D#, 2
	rest 2
	octave 4
	note C_, 1
	rest 3
	note C_, 1
	rest 3
	note_type 12, 12, 7
	octave 5
	note E_, 1
	rest 3
;Bar 14
	octave 4
	note G#, 1
	note G_, 1
	note D#, 1
	note C_, 1
	sound_jump Music_InferEncounter_Ch1_loop

; ============================================================================================================

Music_InferEncounter_Ch2:
	duty_cycle $1
	note_type 12, 10, 7
;Bar 1
	rest 4
Music_InferEncounter_Ch2_loop:
	octave 3
	volume_envelope 9, 7
	note C_, 1
	note D#, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note A_, 1
	octave 4
	volume_envelope 10, 7
	note C_, 1
	octave 3
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note C_, 1
	octave 2
	volume_envelope 9, 7
	note A_, 1
	octave 3
	volume_envelope 10, 7
	note D#, 1
	note C_, 1
;Bar 2
	note F#, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note A_, 1
	volume_envelope 9, 7
	note F#, 1
	note C_, 1
	note D#, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note A_, 1
	octave 4
	volume_envelope 10, 7
	note C_, 1
	octave 3
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note F#, 1
	note D#, 1
;Bar 3
	note A_, 1
	volume_envelope 9, 7
	note F#, 1
	octave 4
	volume_envelope 10, 7
	note C_, 1
	octave 3
	volume_envelope 9, 7
	note A_, 1
	note C_, 1
	note D#, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note A_, 1
	octave 4
	volume_envelope 10, 7
	note C_, 1
	octave 3
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note C_, 1
	octave 2
	volume_envelope 9, 7
	note A_, 1
	octave 3
	volume_envelope 10, 7
	note D#, 1
	note C_, 1
;Bar 4
	note F#, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note A_, 1
	volume_envelope 9, 7
	note F#, 1
	note C_, 1
	note D#, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note A_, 1
	octave 4
	volume_envelope 10, 7
	note C_, 1
	octave 3
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note C_, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note F#, 1
	note D#, 1
;Bar 5
	note A_, 1
	volume_envelope 9, 7
	note F#, 1
	octave 4
	volume_envelope 10, 7
	note C_, 1
	octave 3
	volume_envelope 9, 7
	note A_, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	volume_envelope 10, 7
	note F_, 1
	volume_envelope 9, 7
	note G#, 1
	volume_envelope 10, 7
	note B_, 1
	volume_envelope 9, 7
	note G#, 1
	volume_envelope 10, 7
	note F_, 1
	volume_envelope 9, 7
	note D_, 1
	octave 2
	volume_envelope 10, 7
	note B_, 1
	volume_envelope 9, 7
	note G#, 1
	octave 3
	volume_envelope 10, 7
	note D_, 1
	octave 2
	note B_, 1
;Bar 6
	octave 3
	note F_, 1
	volume_envelope 9, 7
	note D_, 1
	volume_envelope 10, 7
	note G#, 1
	volume_envelope 9, 7
	note F_, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	volume_envelope 10, 7
	note F_, 1
	volume_envelope 9, 7
	note G#, 1
	volume_envelope 10, 7
	note B_, 1
	volume_envelope 9, 7
	note G#, 1
	volume_envelope 10, 7
	note F_, 1
	volume_envelope 9, 7
	note D_, 1
	octave 2
	volume_envelope 10, 7
	note B_, 1
	octave 3
	volume_envelope 9, 7
	note D_, 1
	volume_envelope 10, 7
	note F_, 1
	note D_, 1
;Bar 7
	note G#, 1
	volume_envelope 9, 7
	note F_, 1
	volume_envelope 10, 7
	note B_, 1
	volume_envelope 9, 7
	note G#, 1
	note C_, 1
	note D#, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note A_, 1
	octave 4
	volume_envelope 10, 7
	note C_, 1
	octave 3
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note C_, 1
	octave 2
	volume_envelope 9, 7
	note A_, 1
	octave 3
	volume_envelope 10, 7
	note D#, 1
	note C_, 1
;Bar 8
	note F#, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note A_, 1
	volume_envelope 9, 7
	note F#, 1
	note C_, 1
	note D#, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note A_, 1
	octave 4
	volume_envelope 10, 7
	note C_, 1
	octave 3
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 10, 7
	note F#, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 11, 7
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note D_, 1
;Bar 9
	note D#, 1
	note F_, 1
	note G_, 1
	note B_, 1
	rest 2
	volume_envelope 10, 7
	note D#, 1
	volume_envelope 9, 7
	note D#, 1
	volume_envelope 10, 7
	note D#, 1
	rest 3
	note D#, 1
	rest 1
	volume_envelope 9, 7
	note D#, 1
	rest 3
;Bar 10
	volume_envelope 10, 7
	note D#, 1
	rest 3
	note F#, 1
	volume_envelope 9, 7
	note F#, 1
	volume_envelope 10, 7
	note F#, 1
	rest 3
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 1
	rest 3
;Bar 11
	volume_envelope 10, 7
	note F#, 1
	rest 3
	note A#, 1
	note A#, 1
	note A#, 1
	rest 3
	note A#, 1
	rest 1
	note A#, 1
	rest 1
;Bar 12
	note C_, 1
	volume_envelope 9, 7
	note D_, 1
	volume_envelope 10, 7
	note D#, 1
	octave 4
	volume_envelope 9, 7
	note C_, 1
	octave 3
	volume_envelope 10, 7
	note A_, 1
	rest 1
	note_type 6, 10, 7
	octave 2
	note B_, 1
	rest 3
	volume_envelope 9, 7
	note B_, 1
	rest 3
	octave 3
	volume_envelope 10, 7
	note A_, 2
	rest 2
	octave 2
	note B_, 1
	rest 3
	volume_envelope 9, 7
	note B_, 1
	rest 3
;Bar 13
	octave 3
	volume_envelope 10, 7
	note A_, 2
	rest 2
	octave 2
	note B_, 1
	rest 3
	volume_envelope 9, 7
	note B_, 1
	rest 3
	octave 3
	volume_envelope 10, 7
	note A_, 2
	rest 2
	octave 2
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	note_type 12, 10, 7
	octave 3
	note A#, 1
	rest 3
;Bar 14
	octave 4
	note E_, 4
	sound_jump Music_InferEncounter_Ch2_loop

; ============================================================================================================

Music_InferEncounter_Ch3:
	note_type 12, 1, 3
;Bar 1
	volume_envelope 2, 3
	rest 4
Music_InferEncounter_Ch3_loop:
	rest 2
	octave 4
	note F#, 1
	note F#, 1
	note F#, 1
	rest 1
	note F#, 1
	rest 3
	note F#, 1
	rest 3
;Bar 2
	note F#, 1
	rest 3
	note F#, 1
	note F#, 1
	note F#, 1
	rest 1
	note F#, 1
	rest 3
	note A_, 1
	rest 3
;Bar 3
	note F#, 1
	rest 3
	note F#, 1
	note F#, 1
	note F#, 1
	rest 1
	note F#, 1
	rest 3
	note F#, 1
	rest 3
;Bar 4
	note F#, 1
	rest 3
	note F#, 1
	note F#, 1
	note F#, 1
	rest 1
	note F#, 1
	rest 3
	note A_, 1
	rest 3
;Bar 5
	note F#, 1
	rest 3
	note F_, 1
	note F_, 1
	note F_, 1
	rest 1
	note F_, 1
	rest 3
	note F_, 1
	rest 3
;Bar 6
	note F_, 1
	rest 3
	note F_, 1
	note F_, 1
	note F_, 1
	rest 1
	note F_, 1
	rest 3
	note G#, 1
	rest 3
;Bar 7
	note F_, 1
	rest 3
	note F_, 1
	note F_, 1
	note F_, 1
	rest 1
	note F_, 1
	rest 3
	note F_, 1
	rest 3
;Bar 8
	note F_, 1
	rest 3
	note F#, 1
	note F#, 1
	note F#, 1
	rest 1
	note F#, 1
	rest 3
	note A_, 1
	rest 3
;Bar 9
	note F#, 1
	rest 3
	note A_, 1
	note A_, 1
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note A_, 1
	rest 3
;Bar 10
	note A_, 1
	rest 3
	note A#, 1
	note A#, 1
	note A#, 1
	rest 3
	note A#, 1
	rest 1
	note A#, 1
	rest 3
;Bar 11
	note A#, 1
	rest 3
	octave 5
	note C_, 1
	note C_, 1
	note C_, 1
	rest 3
	note C_, 1
	rest 1
	note C_, 1
	rest 3
;Bar 12
	note C_, 1
	rest 1
	note D#, 1
	rest 1
	note_type 6, 2, 3
	octave 4
	note C_, 1
	rest 3
	note C_, 1
	rest 3
	octave 5
	note D#, 2
	rest 2
	octave 4
	note C_, 1
	rest 3
	note C_, 1
	rest 3
;Bar 13
	octave 5
	note D#, 2
	rest 2
	octave 4
	note C_, 1
	rest 3
	note C_, 1
	rest 3
	octave 5
	note D#, 2
	rest 2
	octave 4
	note C_, 1
	rest 3
	note C_, 1
	rest 3
	note_type 12, 2, 3
	octave 5
	note E_, 1
	rest 3
;Bar 14
	note E_, 4
	sound_jump Music_InferEncounter_Ch3_loop

; ============================================================================================================

Music_InferEncounter_Ch4:
	toggle_noise 3 ; WARNING: this might sound bad.
	drum_speed 6
;Bar 1
	rest 8
Music_InferEncounter_Ch4_loop:
	drum_note 12, 4
	drum_note 11, 2 ; WARNING: Auto-Sync says: Rounded up!
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 4
	drum_note 11, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2 ; WARNING: Auto-Sync says: Rounded up!
	drum_note 11, 2 ; WARNING: Auto-Sync says: Rounded up!
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2 ; WARNING: Auto-Sync says: Rounded up!
	drum_note 11, 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1 ; WARNING: Auto-Sync says: Rounded up!
	drum_note 11, 1
	drum_note 11, 4
	drum_note 11, 4
;Bar 3
	drum_note 11, 2 ; WARNING: Auto-Sync says: Rounded up!
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4 ; WARNING: Auto-Sync says: Rounded up!
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 4
	drum_note 11, 4
;Bar 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
;Bar 5
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 4
	drum_note 11, 4
;Bar 6
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 4
	drum_note 11, 4
;Bar 7
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 4
	drum_note 11, 4
;Bar 8
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 4
	drum_note 11, 4
;Bar 9
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 6
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 8
	drum_note 11, 4
	drum_note 11, 8
;Bar 10
	drum_note 11, 8
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 8
	drum_note 11, 4
	drum_note 11, 8
;Bar 11
	drum_note 11, 8
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 8
	drum_note 11, 4
	drum_note 11, 4
;Bar 12
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 12, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 12, 4
	drum_note 11, 4
	drum_note 11, 4
;Bar 13
	drum_note 12, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 12, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 12, 8
;Bar 14
	drum_note 12, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	sound_jump Music_InferEncounter_Ch4_loop

; ============================================================================================================

