;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookScientist:
	channel_count 3
	channel 1, Music_LookScientist_Ch1
	channel 2, Music_LookScientist_Ch2
	channel 3, Music_LookScientist_Ch3

Music_LookScientist_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 10, 7
	tempo 156
;Bar 1
	octave 4
	volume_envelope 12, 7
	note D#, 6
	volume_envelope 11, 7
	note D_, 2
	note C_, 2
	octave 3
	note G_, 2
	volume_envelope 12, 7
	note A#, 6
;Bar 2
	volume_envelope 11, 7
	note A_, 2
	note E_, 2
	note F_, 2
	volume_envelope 12, 7
	note G#, 2
	volume_envelope 11, 7
	note G_, 2
	note D#, 2
	note E_, 2
;Bar 3
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	note D_, 2
	note D#, 2
	note G#, 2
	note G_, 2
	octave 4
	note D_, 2
	note C#, 2
;Bar 4
	volume_envelope 12, 7
	note E_, 6
	volume_envelope 11, 7
	note D#, 2
	note D_, 2
	octave 3
	note A_, 2
	note A#, 11
;Bar 5
	rest 3
	note_type 6, 12, 7
	note B_, 1
	rest 1
	volume_envelope 6, 7
	note B_, 1
	rest 1
	octave 4
	volume_envelope 11, 7
	note B_, 1
	rest 1
	volume_envelope 5, 7
	note B_, 1
	rest 1
	octave 3
	volume_envelope 11, 7
	note B_, 1
	rest 1
	volume_envelope 6, 7
	note B_, 1
	rest 1
;Bar 6
	rest 16
	rest 16
	sound_jump Music_LookScientist_Ch1

; ============================================================================================================

Music_LookScientist_Ch2:
	duty_cycle $1
	note_type 8, 10, 7
;Bar 1
	octave 2
	note C_, 2
	rest 1
	volume_envelope 4, 7
	note C_, 2
	rest 1
	octave 3
	note_type 12, 9, 7
	note G_, 1
	rest 1
	volume_envelope 4, 7
	note G_, 1
	rest 1
	volume_envelope 9, 7
	note G_, 1
	rest 1
	volume_envelope 4, 7
	note G_, 1
	rest 1
	octave 1
	note_type 8, 9, 7
	note G_, 2
	rest 1
	volume_envelope 4, 7
	note G_, 2
	rest 1
;Bar 2
	octave 3
	note_type 12, 9, 7
	note F#, 1
	rest 1
	volume_envelope 4, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note G#, 1
	rest 1
	volume_envelope 4, 7
	note G#, 1
	rest 1
	octave 2
	note_type 8, 9, 7
	note C_, 2
	rest 1
	volume_envelope 3, 7
	note C_, 2
	rest 1
	octave 3
	note_type 12, 9, 7
	note G_, 1
	rest 1
	volume_envelope 4, 7
	note G_, 1
	rest 1
;Bar 3
	volume_envelope 9, 7
	note G_, 1
	rest 1
	volume_envelope 4, 7
	note G_, 1
	rest 1
	octave 1
	note_type 8, 9, 7
	note G_, 2
	rest 1
	volume_envelope 3, 7
	note G_, 2
	rest 1
	octave 3
	note_type 12, 9, 7
	note G_, 1
	rest 1
	volume_envelope 4, 7
	note G_, 1
	rest 1
	volume_envelope 9, 7
	note G_, 1
	rest 1
	volume_envelope 4, 7
	note G_, 1
	rest 1
;Bar 4
	octave 1
	note_type 8, 10, 7
	note B_, 2
	rest 1
	volume_envelope 4, 7
	note B_, 2
	rest 1
	octave 3
	note_type 12, 9, 7
	note F#, 1
	rest 1
	volume_envelope 4, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 1
	rest 1
	volume_envelope 4, 7
	note F#, 1
	rest 1
	octave 1
	note_type 8, 9, 7
	note F#, 2
	rest 1
	volume_envelope 4, 7
	note F#, 2
	rest 1
;Bar 5
	octave 3
	note_type 12, 9, 7
	note F#, 1
	rest 1
	volume_envelope 4, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note G#, 1
	rest 1
	volume_envelope 4, 7
	note G#, 1
	rest 1
	octave 1
	note_type 8, 9, 7
	note B_, 2
	rest 1
	volume_envelope 3, 7
	note B_, 2
	rest 1
	octave 3
	note_type 12, 9, 7
	note F#, 1
	rest 1
	volume_envelope 4, 7
	note F#, 1
	rest 1
;Bar 6
	volume_envelope 9, 7
	note F#, 1
	rest 1
	volume_envelope 4, 7
	note F#, 1
	rest 1
	octave 1
	note_type 8, 9, 7
	note F#, 2
	rest 1
	volume_envelope 3, 7
	note F#, 2
	rest 1
	octave 3
	note_type 12, 9, 7
	note F#, 1
	rest 1
	volume_envelope 4, 7
	note F#, 1
	rest 1
	volume_envelope 9, 7
	note F#, 1
	rest 1
	volume_envelope 4, 7
	note F#, 1
	rest 1
	sound_jump Music_LookScientist_Ch2

; ============================================================================================================

Music_LookScientist_Ch3:
	note_type 12, 1, 3
;Bar 1
	octave 5
	volume_envelope 2, 3
	note D#, 8
	note G_, 4
	note F#, 8
;Bar 2
	note D_, 4
	note F_, 6
	note D#, 2
;Bar 3
	note C_, 4
	octave 4
	note B_, 8
	octave 5
	note D_, 4
;Bar 4
	note C#, 8
	note E_, 4
	octave 4
	note A#, 12
;Bar 5
	note B_, 12
;Bar 6
	octave 5
	note C#, 7
	rest 5
	sound_jump Music_LookScientist_Ch3

; ============================================================================================================

