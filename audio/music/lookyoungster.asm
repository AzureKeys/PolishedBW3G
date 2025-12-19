;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookYoungster:
	channel_count 3
	channel 1, Music_LookYoungster_Ch1
	channel 2, Music_LookYoungster_Ch2
	channel 3, Music_LookYoungster_Ch3

Music_LookYoungster_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 10, 7
	tempo 119
;Bar 1
	octave 4
	volume_envelope 11, 7
	note D_, 1
	volume_envelope 10, 7
	note E_, 1
	volume_envelope 11, 7
	note D_, 1
	volume_envelope 10, 7
	note C_, 1
	octave 3
	volume_envelope 11, 7
	note B_, 1
	octave 4
	volume_envelope 10, 7
	note C_, 1
	octave 3
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 10, 7
	note A_, 1
	note G_, 1
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 10, 7
	note B_, 1
	octave 4
	volume_envelope 9, 7
	note C_, 1
	volume_envelope 10, 7
	note D_, 1
	volume_envelope 9, 7
	note E_, 1
	volume_envelope 10, 7
	note F_, 1
	volume_envelope 9, 7
	note F#, 1
;Bar 2
Music_LookYoungster_Ch1_loop:
	note_type 12, 10, 7
	volume_envelope 11, 7
	note G_, 1 ; WARNING: Auto-Sync says: Rounded down!
	rest 1 ; WARNING: Auto-Sync says: Rounded up!
	note F#, 1
	rest 1
	note E_, 1
	rest 1
	volume_envelope 10, 7
	note D_, 1
	rest 1
	volume_envelope 11, 7
	note E_, 1
	rest 1
	volume_envelope 10, 7
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
;Bar 3
	volume_envelope 11, 7
	note A_, 1
	rest 1
	volume_envelope 10, 7
	note B_, 1
	rest 1
	octave 4
	volume_envelope 11, 7
	note C_, 1
	rest 1
	note D_, 1
	rest 3
	note D_, 1
	rest 1
	volume_envelope 10, 7
	note E_, 1
	rest 1
	volume_envelope 11, 7
	note F#, 1
	rest 1
;Bar 4
	note G_, 1
	volume_envelope 10, 7
	note G_, 1
	volume_envelope 11, 7
	note G_, 1
	rest 1
	note E_, 1
	rest 1
	note G_, 1
	rest 1
	volume_envelope 10, 7
	note F#, 1
	rest 1
	volume_envelope 11, 7
	note G_, 1
	rest 1
	volume_envelope 10, 7
	note A_, 1
	rest 1
	volume_envelope 11, 7
	note D_, 1
	volume_envelope 10, 7
	note D_, 1
;Bar 5
	volume_envelope 11, 7
	note D_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	note_type 4, 10, 7
	octave 3
	note B_, 2
	octave 4
	volume_envelope 9, 7
	note E_, 2
	octave 3
	volume_envelope 10, 7
	note B_, 2
	note_type 6, 10, 7
	octave 4
	volume_envelope 9, 7
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	volume_envelope 7, 7
	note E_, 1
	octave 3
	volume_envelope 8, 7
	note B_, 1
	octave 4
	volume_envelope 6, 7
	note E_, 1
	octave 3
	volume_envelope 7, 7
	note B_, 1
	octave 4
	volume_envelope 5, 7
	note E_, 1
	rest 9
	sound_jump Music_LookYoungster_Ch1_loop

; ============================================================================================================

Music_LookYoungster_Ch2:
	duty_cycle $1
	note_type 12, 10, 7
;Bar 1
	volume_envelope 5, 7
	rest 16
;Bar 2
Music_LookYoungster_Ch2_loop:
	octave 3
	volume_envelope 12, 7
	note B_, 1
	octave 4
	volume_envelope 11, 7
	note C_, 1
	volume_envelope 12, 7
	note D_, 1
	volume_envelope 11, 7
	note C_, 1
	octave 3
	volume_envelope 12, 7
	note B_, 1
	rest 1
	volume_envelope 11, 7
	note A_, 1
	rest 1
	volume_envelope 12, 7
	note B_, 1
	rest 1
	volume_envelope 11, 7
	note A_, 1
	rest 1
	volume_envelope 12, 7
	note G_, 1
	rest 1
	volume_envelope 11, 7
	note E_, 1
	rest 1
;Bar 3
	volume_envelope 12, 7
	note F#, 1
	rest 1
	volume_envelope 11, 7
	note G_, 1
	rest 1
	volume_envelope 12, 7
	note A_, 1
	rest 1
	note B_, 2
	rest 2
	note G_, 1
	rest 1
	volume_envelope 11, 7
	note F#, 1
	rest 1
	volume_envelope 12, 7
	note E_, 1
	rest 1
;Bar 4
	note E_, 1
	rest 1
	volume_envelope 11, 7
	note C_, 1
	rest 1
	octave 2
	volume_envelope 12, 7
	note G_, 1
	rest 1
	octave 3
	volume_envelope 11, 7
	note E_, 1
	rest 1
	volume_envelope 12, 7
	note D_, 1
	rest 1
	volume_envelope 11, 7
	note F#, 1
	rest 1
	volume_envelope 12, 7
	note A_, 1
	rest 1
	volume_envelope 11, 7
	note D_, 1
	rest 1
;Bar 5
	volume_envelope 12, 7
	note D_, 1
	rest 1
	octave 2
	volume_envelope 11, 7
	note B_, 1
	rest 1
	octave 3
	volume_envelope 12, 7
	note F#, 1
	rest 1
	volume_envelope 11, 7
	note E_, 4
	rest 6
	sound_jump Music_LookYoungster_Ch2_loop

; ============================================================================================================

Music_LookYoungster_Ch3:
	note_type 12, 1, 0
;Bar 1
	octave 4
	volume_envelope 1, 0
	note D_, 4
	octave 3
	note A_, 2
	octave 4
	note D_, 1
	rest 3
	octave 3
	note A_, 6
;Bar 2
Music_LookYoungster_Ch3_loop:
	note G_, 4
	octave 4
	note D_, 1
	rest 1
	octave 3
	note_type 6, 1, 0
	note G_, 1
	rest 3
	octave 4
	note_type 12, 1, 0
	note C_, 4
	note G_, 1
	rest 1
	note C_, 1
	rest 1
;Bar 3
	note D_, 4
	note A_, 1
	rest 1
	note E_, 3
	rest 1
	note E_, 2
	note_type 6, 1, 0
	note B_, 4
	note E_, 3
	rest 1
	note_type 12, 1, 0
;Bar 4
	note C_, 4
	note G_, 1
	rest 1
	note C_, 1
	rest 1
	note D_, 2
	note A_, 2
	note D_, 1
	rest 1
	octave 3
	note B_, 4
;Bar 5
	octave 4
	note D_, 2
	note A_, 1
	rest 1
	note_type 6, 1, 0
	note E_, 7
	rest 1
	note_type 12, 1, 0
	note E_, 2
	octave 3
	note B_, 2
	note E_, 2
	sound_jump Music_LookYoungster_Ch3_loop

; ============================================================================================================

