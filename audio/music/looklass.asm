;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookLass:
	channel_count 3
	channel 1, Music_LookLass_Ch1
	channel 2, Music_LookLass_Ch2
	channel 3, Music_LookLass_Ch3

Music_LookLass_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 7, 7
	tempo 111
;Bar 1
Music_LookLass_Ch1_loop:
	rest 2
	octave 3
	note F_, 2 ; WARNING: Auto-Sync says: Rounded up!
	octave 4
	note F_, 6
	rest 2
	note D#, 2
	rest 2 ; WARNING: Auto-Sync says: Rounded up!
;Bar 2
	note D_, 1
	rest 1
	note D_, 1
	rest 2
	note C#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 4
	octave 3
	note G_, 2
	octave 4
	note G#, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 3
	note D#, 1
	rest 1
	note D#, 1
	rest 3
	note F_, 4
	note_type 6, 7, 7
	octave 3
	note B_, 1
	octave 4
	note C_, 3
	note_type 12, 9, 7
	note G_, 2
	rest 2
;Bar 4
	octave 3
	note F_, 1
	rest 1
	note C_, 2
	octave 4
	note D#, 2
	rest 2
	note_type 6, 7, 7
	octave 3
	note B_, 1
	octave 4
	note C_, 3
	note_type 12, 9, 7
	octave 3
	note C_, 2
	octave 4
	note F_, 2
	octave 3
	note A_, 2
;Bar 5
	octave 4
	note C_, 1
	rest 1
	octave 3
	note A#, 1
	rest 1
	note D_, 1
	rest 1
	octave 4
	note F_, 4
	octave 3
	note A#, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	note D_, 1
	rest 1
;Bar 6
	octave 3
	note B_, 2
	note G_, 2
	octave 4
	note D#, 1
	note_type 6, 9, 7
	note E_, 1
	note F_, 9
	note_type 12, 9, 7
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
;Bar 7
	octave 4
	note F_, 2
	note D#, 2
	note D_, 1
	rest 1
	note D#, 3
	rest 1
	note D#, 3
	rest 1
	octave 3
	note A#, 1
	rest 1
;Bar 8
	note F_, 1
	rest 1
	note F_, 1
	rest 3
	octave 4
	note D_, 2
	rest 2
	note D#, 1
	rest 1
	note F_, 1
	rest 1
	note A#, 1
	rest 1
;Bar 9
	note_type 6, 9, 7
	octave 5
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	octave 4
	note_type 12, 9, 7
	note E_, 1
	rest 1
	note F_, 4
	octave 3
	note F_, 1
	note_type 6, 7, 7
	rest 3
	octave 4
	note D_, 1
	note_type 12, 7, 7
	rest 1
	note F_, 1
	rest 1
;Bar 10
	octave 5
	note C_, 1
	rest 3
	note C_, 1
	rest 3
	octave 4
	note B_, 1
	rest 1
	note B_, 1
	rest 2
	note G#, 1
	octave 5
	note C_, 1
	rest 3
;Bar 11
	octave 4
	note F_, 1
	rest 1
	octave 3
	note A_, 2
	octave 5
	note F_, 4
	octave 3
	note F_, 1
	rest 1
	octave 4
	note D#, 2
	rest 2
	sound_jump Music_LookLass_Ch1_loop

; ============================================================================================================

Music_LookLass_Ch2:
	duty_cycle $1
	note_type 12, 10, 7
;Bar 1
Music_LookLass_Ch2_loop:
	volume_envelope 11, 7
	rest 2
	octave 1
	volume_envelope 15, 7
	note F_, 1
	rest 1
	octave 2
	note F_, 5
	rest 1
	octave 1
	note F_, 1
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 1
	volume_envelope 14, 7
	note F_, 1
	rest 1
;Bar 2
	volume_envelope 15, 7
	note A#, 1
	rest 1
	volume_envelope 14, 7
	note A#, 1
	rest 7
	volume_envelope 15, 7
	note G_, 1
	rest 1
	octave 2
	note F_, 2
	rest 2
;Bar 3
	note C_, 1
	rest 1
	volume_envelope 14, 7
	note C_, 1
	rest 7
	octave 1
	volume_envelope 15, 7
	note C_, 1
	rest 1
	octave 2
	note C_, 2
	rest 2
;Bar 4
	octave 1
	note F_, 1
	rest 1
	volume_envelope 14, 7
	note F_, 1
	rest 3
	note F_, 1
	rest 1
	volume_envelope 15, 7
	note A_, 1
	rest 1
	volume_envelope 14, 7
	note A_, 1
	rest 3
	note A_, 1
	rest 1
;Bar 5
	volume_envelope 15, 7
	note A#, 1
	rest 1
	volume_envelope 14, 7
	note A#, 1
	rest 3
	volume_envelope 15, 7
	note A#, 4
	volume_envelope 14, 7
	note A#, 1
	rest 1
	volume_envelope 15, 7
	note D_, 1
	rest 1
	volume_envelope 14, 7
	note F_, 1
	rest 1
;Bar 6
	volume_envelope 15, 7
	note B_, 4
	rest 2
	volume_envelope 14, 7
	note B_, 2
	volume_envelope 15, 7
	note G_, 4
	rest 2
	volume_envelope 14, 7
	note G_, 2
;Bar 7
	octave 2
	volume_envelope 15, 7
	note C_, 4
	rest 2
	volume_envelope 14, 7
	note C_, 2
	octave 1
	volume_envelope 15, 7
	note D#, 4
	rest 2
	volume_envelope 14, 7
	note D#, 2
;Bar 8
	volume_envelope 15, 7
	note F_, 1
	rest 1
	volume_envelope 14, 7
	note F_, 1
	rest 13
;Bar 9
	volume_envelope 15, 7
	note F_, 1
	rest 1
	volume_envelope 14, 7
	note F_, 1
	rest 13
;Bar 10
	octave 2
	volume_envelope 15, 7
	note C_, 1
	rest 3
	volume_envelope 14, 7
	note C_, 1
	rest 3
	octave 1
	volume_envelope 15, 7
	note B_, 1
	rest 1
	volume_envelope 14, 7
	note B_, 1
	rest 3
	octave 2
	note C_, 1
	rest 3
;Bar 11
	octave 1
	volume_envelope 15, 7
	note F_, 1
	rest 1
	octave 2
	note F_, 4
	rest 2
	octave 1
	note F_, 1
	rest 1
	octave 2
	note F_, 1
	rest 1
	octave 1
	volume_envelope 14, 7
	note F_, 1
	rest 1
	sound_jump Music_LookLass_Ch2_loop

; ============================================================================================================

Music_LookLass_Ch3:
	note_type 12, 1, 3
;Bar 1
Music_LookLass_Ch3_loop:
	octave 5
	note F_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note F_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	note A_, 1
	rest 1
	note_type 6, 1, 3
	note F_, 1
	rest 3
	note_type 12, 1, 3
	octave 5
;Bar 2
	note C_, 1
	rest 1
	octave 4
	note A#, 1
	rest 1
	note A_, 1
	rest 1
	note A#, 1
	rest 1
	octave 5
	note D#, 1
	rest 1
	note D_, 1
	rest 1
	note D#, 1
	rest 1
	note F_, 1
	rest 1
	octave 4
;Bar 3
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	note G_, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	octave 5
	note C_, 1
	rest 1
	octave 4
;Bar 4
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note F_, 1
	rest 1
	note A#, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	octave 5
;Bar 5
	note D#, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	octave 4
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note F_, 1
	rest 1
	octave 5
;Bar 6
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	note G#, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	octave 4
	note G#, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	octave 5
;Bar 7
	note D_, 1
	rest 1
	note D#, 1
	rest 1
	note F_, 1
	rest 1
	note D#, 1
	rest 1
	note D_, 1
	rest 1
	octave 4
	note F#, 1
	rest 1
	note F_, 1
	rest 1
	note D#, 1
	rest 1
;Bar 8
	note D#, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	octave 5
	note C_, 1
	rest 1
	octave 4
	note A#, 1
	rest 1
	octave 5
;Bar 9
	note D#, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note G_, 1
	rest 1
;Bar 10
	note F_, 1
	rest 3
	note F_, 1
	rest 3
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	note F_, 1
	rest 3
;Bar 11
	octave 4
	note F_, 1
	rest 1
	octave 5
	note F_, 4
	rest 2
	octave 4
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	sound_jump Music_LookLass_Ch3_loop

; ============================================================================================================

