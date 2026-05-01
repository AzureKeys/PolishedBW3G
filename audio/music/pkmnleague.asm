Music_BWPokemonLeague:
	channel_count 4
	channel 1, Music_BWPokemonLeague_Ch1
	channel 2, Music_BWPokemonLeague_Ch2
	channel 3, Music_BWPokemonLeague_Ch3
	channel 4, Music_BWPokemonLeague_Ch4

Music_BWPokemonLeague_Ch1:
	volume 7, 7
	duty_cycle $1
	note_type 12, 11, 7
	tempo 159
;Bar 1
	octave 3
	sound_call Music_BWPokemonLeague_Ch1_Bar1
;Bar 2
	note A#, 4
	note G_, 1
	rest 1
	note G_, 1
	rest 9
;Bar 3
	note G_, 1
	rest 1
	note G_, 1
	rest 5
	octave 4
	note C_, 4
;Bar 4
	octave 3
	sound_call Music_BWPokemonLeague_Ch1_Bar1
;Bar 5
	octave 4
	note E_, 4
	octave 3
	note G_, 1
	rest 1
	note G_, 1
	rest 9
;Bar 6
	note G_, 1
	rest 1
	note G_, 1
	rest 5
	octave 4
	note F_, 4
	sound_jump Music_BWPokemonLeague_Ch1

Music_BWPokemonLeague_Ch1_Bar1:
	note G_, 1;
	rest 1
	note G_, 1
	rest 9
	note G_, 1
	rest 1
	note G_, 1
	rest 5
	sound_ret

; ============================================================================================================

Music_BWPokemonLeague_Ch2:
	duty_cycle $3
	note_type 12, 11, 7
;Bar 1
	octave 1
	sound_call Music_BWPokemonLeague_Ch2_Bar1
;Bar 2
	note D#, 4
	note C_, 1
	rest 1
	note C_, 1
	rest 9
;Bar 3
	note C_, 1
	rest 1
	note C_, 1
	rest 5
	note F#, 4
;Bar 4
	sound_call Music_BWPokemonLeague_Ch2_Bar1
;Bar 5
	note F#, 4
	note C_, 1
	rest 1
	note C_, 1
	rest 9
;Bar 6
	note C_, 1
	rest 1
	note C_, 1
	rest 5
	note F#, 4
	sound_jump Music_BWPokemonLeague_Ch2

Music_BWPokemonLeague_Ch2_Bar1:
	note C_, 1;
	rest 1
	note C_, 1
	rest 9
	note C_, 1
	rest 1
	note C_, 1
	rest 5
	sound_ret

; ============================================================================================================

Music_BWPokemonLeague_Ch3:
	note_type 12, 1, 3
;Bar 1
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 7
	sound_call Music_BWPokemonLeague_Ch3_main2
	sound_jump Music_BWPokemonLeague_Ch3

Music_BWPokemonLeague_Ch3_main2:
	octave 4
	note C_, 2
	note D_, 2
	note D#, 2
	note A#, 5
	rest 1
	note C_, 2
	note D_, 2
;Bar 8
	note D#, 2
	note A#, 5
	rest 1
	note C_, 2
	note D_, 2
	note D#, 2
	note A_, 5
;Bar 9
	rest 1
	note C_, 2
	note D_, 2
	note D#, 2
	note A_, 5
	rest 1
;Bar 10
	note C_, 2
	note D_, 2
	note D#, 2
	note G#, 5
	rest 1
	note C_, 2
	note D_, 2
;Bar 11
	note D#, 2
	note G#, 5
	rest 1
	note C_, 2
	note D_, 2
	note D#, 2
	note G_, 5
;Bar 12
	rest 1
	note C_, 2
	note D_, 2
	note D#, 2
	note G_, 5
	rest 1
	sound_loop 2, Music_BWPokemonLeague_Ch3_main2
	sound_ret

; ============================================================================================================

Music_BWPokemonLeague_Ch4:
	toggle_noise 1
	drum_speed 4
Music_BWPokemonLeague_Ch4_loop:
;Bar 1
	drum_note 7, 16
	rest 8
	sound_call Music_BWPokemonLeague_Ch4_Type1
	sound_call Music_BWPokemonLeague_Ch4_Type2
;Bar 2
	sound_call Music_BWPokemonLeague_Ch4_Type1
	sound_call Music_BWPokemonLeague_Ch4_Type2
;Bar 3
	sound_call Music_BWPokemonLeague_Ch4_Type1
	sound_call Music_BWPokemonLeague_Ch4_Type2
	sound_call Music_BWPokemonLeague_Ch4_Type1
;Bar 4
	sound_call Music_BWPokemonLeague_Ch4_Type2
	sound_call Music_BWPokemonLeague_Ch4_Type1
	sound_call Music_BWPokemonLeague_Ch4_Type2
;Bar 5
	drum_note 7, 12
	drum_note 7, 16
	rest 8
;Bar 6
	sound_call Music_BWPokemonLeague_Ch4_Type1
	sound_call Music_BWPokemonLeague_Ch4_Type2
	sound_call Music_BWPokemonLeague_Ch4_Type1
	sound_jump Music_BWPokemonLeague_Ch4_loop

Music_BWPokemonLeague_Ch4_Type1:
	drum_speed 3
	drum_note 11, 2
	drum_note 11, 2
	drum_speed 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	sound_ret

Music_BWPokemonLeague_Ch4_Type2:
	drum_note 11, 6;
	drum_note 11, 16
	rest 2
	sound_ret

