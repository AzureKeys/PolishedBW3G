Music_UnovaRoute1: ; ec000
	channel_count 3
	channel 1, Music_UnovaRoute1_Ch1
	channel 2, Music_UnovaRoute1_Ch2
	channel 3, Music_UnovaRoute1_Ch3
; ec009

	db $3

Music_UnovaRoute1_Ch1: ; ec00a
	stereo_panning FALSE, TRUE
	tempo 118
	volume 7, 7
	vibrato 22, 1, 1
	duty_cycle $3
	note_type 12, 8, 3
	octave 4
	note F_, 6
	note D#, 6
	note E_, 6
	volume_envelope 8, 7
	note F_, 4
	note D_, 2
Music_UnovaRoute1_Ch1_loop:
	note_type 12, 7, 4
	duty_cycle $3
	octave 3
	note C_, 4
	note G_, 2
	rest 4
	octave 4
	note E_, 2
	octave 3
	note D_, 4
	note A_, 2
	rest 4
	octave 4
	note F_, 2
	octave 3
	note E_, 4
	note B_, 2
	rest 4
	octave 4
	note G_, 2
	octave 3
	volume_envelope 7, 7
	note A_, 4
	octave 4
	note G_, 2
	octave 5
	note C#, 4
	octave 4
	note A#, 2
	note A_, 4
	rest 2
	octave 5
	note F_, 4
	octave 4
	note B_, 2
	note F_, 4
	note A_, 2
	octave 5
	note G_, 4
	octave 4
	note C_, 2
	octave 5
	note D_, 2
	rest 4
	octave 4
	note B_, 2
	rest 4
	octave 5
	note C_, 4
	octave 4
	note B_, 6
	note F_, 2
	duty_cycle $2
	note_type 6, 8, 1
	octave 5
	note C_, 2
	volume_envelope 4, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	volume_envelope 8, 1
	note C_, 4
	note C_, 4
	octave 4
	note B_, 4
	octave 5
	note C_, 4
	note D_, 2
	volume_envelope 4, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	volume_envelope 8, 1
	note D_, 4
	note D_, 4
	note C#, 4
	note D_, 4
	note E_, 2
	volume_envelope 4, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	volume_envelope 8, 1
	note E_, 4
	note D#, 4
	note E_, 4
	note A_, 2
	volume_envelope 4, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	volume_envelope 8, 1
	note G_, 4
	note F_, 4
	note D#, 4
	rest 4
	note A_, 2
	volume_envelope 4, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	volume_envelope 8, 1
	note A_, 1
	volume_envelope 4, 1
	note A_, 1
	note A_, 1
	note A_, 1
	volume_envelope 8, 1
	note C_, 4
	note A_, 1
	volume_envelope 4, 1
	note A_, 1
	note A_, 1
	note A_, 1
	volume_envelope 8, 1
	note B_, 1
	volume_envelope 4, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	octave 6
	volume_envelope 8, 1
	note C_, 1
	volume_envelope 4, 1
	note C_, 1
	note C_, 1
	note C_, 1
	volume_envelope 8, 1
	note D_, 1
	volume_envelope 4, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	volume_envelope 8, 1
	octave 5
	note B_, 2
	volume_envelope 4, 1
	note B_, 2
	volume_envelope 8, 3
	octave 6
	note C_, 9
	octave 5
	note G_, 1
	note A_, 1
	note B_, 1
	octave 6
	note C_, 9
	octave 5
	note G_, 1
	note A_, 1
	note B_, 1
	note C_, 12
	note A#, 2
	volume_envelope 4, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
;;;;;;;;;;;;;;mark
	duty_cycle $3
	note_type 12, 8, 4
	octave 4
	note E_, 3
	rest 1
	note E_, 2
	rest 8
	note E_, 1
	rest 3
	note D_, 3
	rest 1
	note E_, 1
	rest 1
	note D_, 3
	rest 1
	note D_, 2
	rest 8
	note D_, 1
	rest 3
	note C_, 3
	rest 1
	note D_, 1
	rest 1
	note C_, 3
	rest 1
	note C_, 2
	rest 8
	note C_, 1
	rest 3
	octave 3
	note B_, 3
	rest 1
	note A_, 2
	note B_, 3
	rest 1
	note B_, 2
	rest 8
	note G_, 1
	rest 3
	note A#, 3
	rest 1
	note A_, 1
	rest 1
	octave 4
	note E_, 3
	rest 1
	note E_, 2
	rest 8
	note E_, 1
	rest 3
	note D_, 3
	rest 1
	note D_, 1
	rest 1
	note D_, 3
	rest 1
	note D_, 2
	rest 8
	note D_, 1
	rest 3
	note C_, 3
	rest 1
	note D_, 2
	octave 3
	note G#, 2
	note D_, 2
	note G#, 2
	octave 4
	note G#, 2
	note G_, 2
	note G#, 2
	note C_, 2
	octave 3
	note D_, 2
	octave 4
	note C_, 2
	octave 3
	note G#, 2
	note G_, 2
	note G#, 2
	volume_envelope 8, 7
	octave 4
	note F_, 10
	note G_, 2
	note B_, 12
	sound_jump Music_UnovaRoute1_Ch1_loop
; ec0eb

Music_UnovaRoute1_Ch2: ; ec0eb
	stereo_panning TRUE, FALSE
	vibrato 18, 2, 2
	duty_cycle $2
	note_type 6, 9, 4
	octave 5
	note C_, 4
	rest 6
	octave 4
	note G_, 1
	note A_, 1
	note A#, 1
	note B_, 3
	rest 6
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 7
	note_type 12, 9, 4
	octave 4
	note B_, 2
	note A_, 4
	note B_, 2
Music_UnovaRoute1_Ch2_loop:
	note E_, 2
	rest 8
	note D_, 1
	note E_, 1
	note F_, 2
	rest 8
	note E_, 1
	note F_, 1
	volume_envelope 9, 0
	note G_, 6
	volume_envelope 9, 7
	note G_, 6
	octave 5
	note C_, 4
	octave 4
	note G_, 2
	note F_, 4
	note E_, 2
	volume_envelope 9, 0
	note A_, 6
	volume_envelope 9, 7
	note A_, 6
	note B_, 4
	octave 5
	note C_, 2
	note D_, 4
	octave 4
	note B_, 2
	volume_envelope 9, 4
	note G_, 6
	note E_, 6
	volume_envelope 9, 7
	note F_, 4
	note A_, 4
	rest 2
	volume_envelope 9, 4
	duty_cycle $1
	note G_, 1
	note F_, 1
	note E_, 2
	rest 2
	note E_, 2
	rest 4
	note D_, 1
	note E_, 1
	note F_, 2
	rest 2
	note F_, 2
	rest 4
	note E_, 1
	note F_, 1
	volume_envelope 9, 0
	note G_, 6
	volume_envelope 9, 7
	note G_, 6
	octave 5
	note C_, 4
	octave 4
	note G_, 2
	note F_, 2
	note D#, 2
	note E_, 2
	volume_envelope 9, 0
	note A_, 6
	volume_envelope 9, 7
	note A_, 6
	note B_, 4
	octave 5
	note C_, 2
	note D_, 4
	octave 4
	note B_, 2
	note_type 6, 9, 4
	octave 5
	note C_, 4
	rest 6
	octave 4
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 3
	rest 6
	octave 4
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 3
	rest 8
	note_type 12, 9, 7
	octave 4
	note A#, 6
;;;;;;;;;;;;;;mark
	volume_envelope 10, 4
	duty_cycle $2
	rest 4
	note F_, 2
	note A_, 2
	rest 2
	octave 5
	note E_, 2
	note D_, 2
	rest 2
	note E_, 2
	note D_, 2
	octave 4
	note B_, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	octave 5
	note D_, 4
	volume_envelope 10, 7
	note C_, 12
	rest 6
	octave 4
	volume_envelope 10, 4
	note C_, 2
	note F_, 2
	rest 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	rest 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	rest 2
	note A_, 2
	note G_, 2
	note E_, 2
	note F_, 2
	note G_, 4
	note A_, 4
	note A#, 4
	octave 5
	note C_, 4
	note D_, 2
	note E_, 4
	duty_cycle $1
	octave 4
	note F_, 2
	note A_, 2
	rest 2
	octave 5
	note E_, 2
	note D_, 2
	rest 2
	note E_, 2
	note D_, 2
	octave 4
	note B_, 2
	note G#, 2
	note G_, 2
	note E_, 2
	note G_, 2
	octave 5
	note A_, 2
	rest 2
	volume_envelope 10, 7
	note G_, 14
	volume_envelope 11, 4
Music_UnovaRoute1_Ch2_branch_1:
	note G_, 2
	note F_, 2
	note D#, 2
	sound_loop 3, Music_UnovaRoute1_Ch2_branch_1
	note C_, 2
	note D_, 2
	note D#, 2
	volume_envelope 11, 7
	note G_, 6
	rest 2
	note D_, 2
	note F_, 2
	note G_, 10
	duty_cycle $2
	volume_envelope 9, 4
	octave 4
	note G_, 1
	note F_, 1
	sound_jump Music_UnovaRoute1_Ch2_loop
	
	
Music_UnovaRoute1_Ch3: ; ec1b8
	stereo_panning TRUE, TRUE
	vibrato 16, 2, 3
	note_type 12, 2, 5
	octave 3
	note C_, 2
	rest 4
	octave 2
	note G_, 2
	rest 4
	octave 3
	note C_, 2
	rest 4
	octave 2
	note B_, 4
	note G_, 2
Music_UnovaRoute1_Ch3_loop:
	octave 2
	sound_call Music_UnovaRoute1_Ch3_branch_1
	note F_, 10
	note E_, 2
	note D_, 6
	rest 6
	octave 3
	note E_, 2
	rest 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	rest 2
	note D#, 2
	note D_, 4
	octave 2
	note G_, 6
	note B_, 2
	sound_call Music_UnovaRoute1_Ch3_branch_1
	note F_, 2
	note C_, 2
	note A_, 2
	rest 4
	note G#, 2
	note G_, 2
	note D_, 2
	note B_, 2
	rest 4
	note B_, 2
	octave 3
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	rest 2
	octave 2
	note C_, 1
	rest 1
	note E_, 6
;;;;;;;;;;;;;;mark
	note F_, 3
	rest 1
	note C_, 2
	rest 8
	note F_, 1
	rest 3
	note F_, 3
	rest 1
	note F_, 1
	rest 1
	note E_, 3
	rest 1
	note E_, 2
	rest 8
	note E_, 1
	rest 3
	note E_, 3
	rest 1
	note E_, 1
	rest 1
	note D_, 3
	rest 1
	note D_, 2
	rest 8
	note D_, 1
	rest 3
	note D_, 3
	rest 1
	note F#, 2
	note G_, 3
	rest 1
	note C_, 2
	rest 8
	note C#, 1
	rest 3
	note C#, 3
	rest 1
	note G_, 1
	rest 1
	note F_, 3
	rest 1
	octave 1
	note A_, 2
	rest 8
	octave 2
	note F_, 1
	rest 3
	note F_, 3
	rest 1
	note G#, 1
	rest 1
	note E_, 3
	rest 1
	octave 1
	note B_, 2
	rest 8
	octave 2
	note E_, 1
	rest 3
	note G_, 3
	rest 1
	note E_, 1
	rest 1
	note G#, 3
	rest 1
	note C_, 2
	rest 8
	note G#, 1
	rest 3
	note G#, 3
	rest 1
	note G#, 1
	rest 1
	note G_, 2
	rest 2
	note G_, 1
	rest 5
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 3
	rest 1
	octave 1
	note G_, 2
	sound_jump Music_UnovaRoute1_Ch3_loop

Music_UnovaRoute1_Ch3_branch_1:
	note C_, 2
	rest 4
	octave 1
	note G_, 2
	rest 4
	octave 2
	note D_, 2
	rest 4
	octave 1
	note G_, 2
	rest 4
	octave 2
	note E_, 2
	rest 4
	octave 1
	note B_, 2
	rest 4
	note A_, 4
	octave 2
	note E_, 2
	note G_, 4
	note F#, 2
	sound_ret