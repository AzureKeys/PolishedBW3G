;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookBeauty:
	channel_count 4
	channel 1, Music_LookBeauty_Ch1
	channel 2, Music_LookBeauty_Ch2
	channel 3, Music_LookBeauty_Ch3
	channel 4, Music_LookBeauty_Ch4

Music_LookBeauty_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 10, 7
	tempo 212
;Bar 1
	octave 4
	volume_envelope 13, 7
	note A_, 1
	octave 5
	volume_envelope 14, 7
	note A_, 12
	note_type 6, 12, 7
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 4
	volume_envelope 11, 7
	note B_, 1
;Bar 2
	volume_envelope 9, 7
	note A_, 1
	volume_envelope 8, 7
	note G_, 1
Music_LookBeauty_Ch1_loop:
	note_type 12, 14, 7
	octave 1
	note E_, 1
	rest 1
	volume_envelope 13, 7
	note E_, 2
	volume_envelope 12, 7
	note B_, 1
	octave 2
	volume_envelope 14, 7
	note D_, 2
	octave 1
	note A_, 1
	rest 1
	volume_envelope 11, 7
	note A_, 1
	rest 1
	volume_envelope 12, 7
	note A_, 1
	octave 2
	volume_envelope 14, 7
	note C#, 2
	note E_, 2
;Bar 3
	octave 1
	note F#, 1
	rest 1
	volume_envelope 13, 7
	note F#, 2
	octave 2
	volume_envelope 12, 7
	note C#, 1
	volume_envelope 14, 7
	note E_, 2
	note_type 6, 14, 7
	octave 1
	note B_, 2
	rest 2
	volume_envelope 11, 7
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	volume_envelope 12, 7
	note B_, 1
	rest 1
	octave 2
	volume_envelope 14, 7
	note D#, 2
	note F#, 6
;Bar 4
	octave 1
	note E_, 2
	volume_envelope 11, 7
	note E_, 1
	rest 1
	volume_envelope 13, 7
	note E_, 1
	rest 1
	note_type 12, 11, 7
	note E_, 1
	volume_envelope 12, 7
	note B_, 1
	octave 2
	volume_envelope 14, 7
	note D_, 2
	octave 1
	note A_, 1
	rest 1
	volume_envelope 11, 7
	note A_, 1
	rest 1
	volume_envelope 12, 7
	note A_, 1
	octave 2
	volume_envelope 14, 7
	note C#, 1
	note E_, 3
;Bar 5
	octave 1
	note F#, 1
	rest 1
	volume_envelope 13, 7
	note F#, 2
	octave 2
	volume_envelope 12, 7
	note C#, 1
	volume_envelope 14, 7
	note E_, 2
	octave 1
	note B_, 1
	rest 1
	note_type 6, 11, 7
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	volume_envelope 12, 7
	note B_, 1
	rest 1
	octave 2
	volume_envelope 14, 7
	note D#, 2
	octave 1
	note A_, 2
	rest 2
;Bar 6
	note F#, 2
	sound_jump Music_LookBeauty_Ch1_loop

; ============================================================================================================

Music_LookBeauty_Ch2:
	duty_cycle $1
	note_type 12, 10, 7
;Bar 1
	octave 3
	volume_envelope 12, 7
	note A_, 1
	octave 4
	volume_envelope 13, 7
	note A_, 3
	note G_, 1
	volume_envelope 11, 7
	note F_, 1
	volume_envelope 10, 7
	note E_, 1
	volume_envelope 9, 7
	note D_, 1
	octave 3
	note_type 6, 9, 7
	note A#, 2
	octave 4
	volume_envelope 12, 7
	note D_, 1
	rest 1
	volume_envelope 11, 7
	note D_, 2
	rest 2
	volume_envelope 13, 7
	note D_, 2
	rest 2
	volume_envelope 12, 7
	note E_, 6
Music_LookBeauty_Ch2_loop:
;Bar 2
	note_type 6, 10, 7
	note D_, 4
	volume_envelope 12, 7
	note C#, 1
	note C_, 1
	octave 3
	note B_, 2
	rest 2
	note B_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	volume_envelope 9, 7
	note B_, 2
	octave 4
	note C#, 14
;Bar 3
	volume_envelope 10, 7
	note E_, 4
	volume_envelope 11, 7
	note D#, 1
	note D_, 1
	volume_envelope 12, 7
	note C#, 2
	rest 2
	note C#, 1
	note D_, 1
	note F#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note_type 12, 12, 7
	note C#, 1
	volume_envelope 11, 7
	note D#, 1
	rest 1
	volume_envelope 12, 7
	note E_, 1
	volume_envelope 11, 7
	note D#, 4
;Bar 4
	rest 1
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 11, 7
	note G_, 1
	volume_envelope 9, 7
	note A_, 1
	rest 1
	volume_envelope 12, 7
	note A_, 1
	volume_envelope 11, 7
	note G_, 1
	note F#, 1
	volume_envelope 10, 7
	note D#, 1
	note E_, 7
;Bar 5
	rest 1
	volume_envelope 12, 7
	note C#, 1
	volume_envelope 11, 7
	note D_, 1
	note E_, 1
	rest 1
	volume_envelope 12, 7
	note E_, 1
	volume_envelope 11, 7
	note C#, 1
	octave 3
	note B_, 3
	octave 4
	note C#, 1
	note D#, 3
	note E_, 1
;Bar 6
	volume_envelope 10, 7
	note F#, 1
	sound_jump Music_LookBeauty_Ch2_loop

; ============================================================================================================

Music_LookBeauty_Ch3:
	note_type 6, 1, 0
;Bar 1
	volume_envelope 2, 0
	rest 2
	octave 5
	note A_, 4
	rest 2
	note G_, 2
	rest 4
	note G_, 4
	note D_, 4
	rest 2
	note D_, 1
	rest 3
	note E_, 6
Music_LookBeauty_Ch3_loop:
;Bar 2
	note F#, 8
	rest 2
	note F#, 4
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note F_, 6
;Bar 3
	note E_, 8
	rest 2
	note E_, 4
	note G#, 1
	rest 3
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G_, 5
;Bar 4
	rest 1
	note F#, 8
	rest 2
	note F#, 4
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note F_, 6
;Bar 5
	note E_, 8
	rest 2
	note E_, 4
	note G#, 1
	rest 3
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G#, 1
	rest 3
	note G_, 6
	sound_jump Music_LookBeauty_Ch3_loop

; ============================================================================================================

Music_LookBeauty_Ch4:
	toggle_noise 1 ; WARNING: this might sound bad.
	drum_speed 12
;Bar 1
	rest 1
	drum_note 1, 1
	drum_note 5, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 5, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 5, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 5, 1
	drum_note 1, 1
Music_LookBeauty_Ch4_loop:
;Bar 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 5, 1
	drum_note 1, 1
	sound_loop 15, Music_LookBeauty_Ch4_loop
;Bar 5
	drum_note 5, 1
	drum_note 1, 1
	drum_note 5, 1
	drum_note 1, 1
	sound_jump Music_LookBeauty_Ch4_loop

; ============================================================================================================

