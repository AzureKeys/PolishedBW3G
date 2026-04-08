Music_AnvilleTown:
	channel_count 3
	channel 1, Music_AnvilleTown_Ch1
	channel 2, Music_AnvilleTown_Ch2
	channel 3, Music_AnvilleTown_Ch3

Music_AnvilleTown_Ch1:
	tempo 175
	duty_cycle $1
	pitch_offset $0001
	note_type 12, 7, 3
	octave 3
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note F_, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note E_, 2
	note C_, 2
	octave 3
	note G#, 2
	note E_, 2
Music_AnvilleTown_Ch1_loop:
	sound_call Music_AnvilleTown_Ch1_branch_1
	note C_, 6
	duty_cycle $0
	volume_envelope 9, 7
	note G_, 4
	note F#, 2
	note F_, 4
	note E_, 2
	note D#, 4
	note D_, 2
	note D_, 4
	note F_, 2
	rest 6
	octave 2
	note D#, 4
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A#, 2
	note F#, 2
	octave 3
	note E_, 4
	note G_, 2
	rest 6
	note C_, 4
	note D_, 2
	note A#, 4
	note A_, 2
	note G_, 16
	note_type 6, 9, 7
	rest 1
	note F#, 1
	note E_, 1
	note D#, 1
	note_type 12, 9, 7
	note C_, 4
	note F#, 2
	octave 2
	note G_, 6
	octave 3
	note C_, 2
	octave 2
	note B_, 2
	note A#, 2
	note A_, 6
	octave 3
	note C_, 2
	octave 2
	note B_, 2
	note A#, 2
	sound_call Music_AnvilleTown_Ch1_branch_1
	duty_cycle $0
	volume_envelope 9, 7
	octave 2
	note A_, 2
	note G#, 2
	note A_, 2
	octave 3
	note G_, 4
	note F#, 2
	octave 2
	note F#, 2
	note F_, 2
	note F#, 2
	octave 3
	note D#, 4
	note E_, 2
	note D_, 4
	note F_, 2
	rest 6
	octave 2
	note D#, 4
	note F_, 2
	octave 3
	note C#, 3
	note_type 6, 9, 7
	note C_, 1
	octave 2
	note A#, 1
	note_type 12, 9, 7
	note F#, 2
	octave 3
	note E_, 4
	note G_, 2
	rest 6
	note C_, 4
	note D_, 2
	note A#, 4
	note A_, 2
	note F_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 4
	note A_, 2
	octave 2
	rest 2
	note E_, 2
	octave 3
	note E_, 6
	note G_, 4
	note F_, 8
	note D_, 6
	note C_, 6
	octave 2
	note A#, 6
	volume_envelope 7, 4
	duty_cycle $1
	octave 3
	note D#, 2
	note D_, 2
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 2
	note D#, 1
	note D#, 1
	note F#, 4
	note F#, 1
	note F#, 1
	note F#, 4
	note D_, 2
	note C_, 2
	octave 2
	note B_, 2
	rest 1
	note G_, 1
	note B_, 1
	octave 3
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note C_, 1
	note C_, 1
	note F_, 4
	note F_, 2
	note E_, 4
	rest 2
	note E_, 4
	rest 2
	note F_, 4
	rest 2
	note F_, 4
	rest 8
	note A_, 4
	note A_, 2
	duty_cycle $1
	volume_envelope 7, 3
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note E_, 2
	note C_, 2
	octave 3
	note G#, 2
	note E_, 2
	sound_jump Music_AnvilleTown_Ch1_loop
	
Music_AnvilleTown_Ch1_branch_1:
	volume_envelope 7, 4
	duty_cycle $1
	octave 3
	note G_, 6
	note D_, 4
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note F#, 4
	note F#, 2
	octave 4
	note F_, 2
	octave 3
	note D_, 2
	note G_, 2
	note A#, 4
	octave 4
	note G_, 4
	octave 3
	note E_, 2
	note G_, 2
	note E_, 4
	note E_, 2
	octave 4
	note A_, 4
	octave 3
	note C_, 1
	note A_, 1
	octave 4
	note G_, 4
	note D_, 4
	octave 3
	note F_, 2
	note A#, 2
	note C#, 4
	note G#, 2
	sound_ret

Music_AnvilleTown_Ch2:
	pitch_offset $0001
	duty_cycle 2
	note_type 12, 7, 3
	octave 4
	note C_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G#, 2
	note A#, 2
	rest 1
	octave 6
	note C_, 2
	octave 5
	note G#, 2
	note E_, 2
	note C_, 2
	octave 4
	note G#, 3
Music_AnvilleTown_Ch2_loop:
	octave 1
	duty_cycle $2
	volume_envelope 9, 6
	note F_, 4
	note C_, 2
	rest 6
	note D_, 4
	note D_, 2
	rest 6
	octave 1
	note G_, 4
	note D_, 2
	rest 6
	octave 2
	note C_, 4
	octave 1
	note C_, 2
	rest 6
	note F_, 4
	note F_, 2
	rest 6
	note A#, 4
	note C#, 2
	rest 4
	note D_, 2
	note E_, 6
	note A_, 6
	note D_, 6
	note F#, 4
	note A_, 2
	note G_, 4
	note D_, 2
	rest 6
	note A#, 4
	octave 2
	note F_, 2
	note D#, 2
	note C#, 2
	octave 1
	note A#, 2
	note A_, 4
	octave 2
	note C_, 2
	rest 6
	octave 1
	note D_, 4
	note D_, 2
	note A_, 4
	note G#, 2
	note G_, 12
	octave 2
	note C_, 6
	octave 1
	note C_, 6
	note A_, 6
	note G#, 6
	note G_, 6
	note F#, 6
	note F_, 4
	note F_, 2
	rest 6
	note D_, 4
	note D_, 2
	rest 6
	note G_, 4
	note D_, 2
	rest 6
	octave 2
	note C_, 6
	octave 1
	note C_, 6
	note F_, 4
	rest 2
	note F_, 6
	note A#, 4
	rest 2
	note A#, 6
	note A_, 10
	note F#, 2
	note D_, 6
	note F#, 4
	note A_, 2
	note G_, 4
	note G_, 2
	rest 6
	note A#, 4
	octave 2
	note F_, 2
	note D#, 2
	note C#, 2
	octave 1
	note A#, 2
	note A_, 4
	octave 2
	note C_, 2
	rest 6
	octave 1
	note D_, 4
	note D_, 2
	rest 6
	note G_, 4
	octave 2
	note D_, 2
	rest 4
	octave 1
	note G_, 2
	octave 2
	note C_, 6
	note C_, 2
	octave 1
	note A#, 2
	note G_, 2
	note F_, 6
	note G_, 6
	note A_, 6
	note G_, 6
;;;;;;;;;;;;;;;mark
	note F_, 10
	note G#, 2
	note A#, 6
	note F_, 4
	note E_, 2
	note D#, 4
	note D#, 2
	note G_, 4
	note D#, 2
	note A#, 4
	note G_, 2
	octave 2
	note A#, 2
	note G_, 2
	note D#, 2
	note D_, 6
	octave 1
	note F_, 4
	note D_, 2
	note G_, 6
	note G_, 6
	note C_, 4
	note G_, 2
	octave 2
	note D_, 4
	octave 1
	note G_, 2
	duty_cycle 2
	note_type 12, 7, 3
	rest 1
	octave 6
	note C_, 2
	octave 5
	note G#, 2
	note E_, 2
	note C_, 2
	octave 4
	note G#, 3
	sound_jump Music_AnvilleTown_Ch2_loop
	

Music_AnvilleTown_Ch3:
	stereo_panning TRUE, TRUE
	note_type 12, 2, 5
	vibrato 22, 1, 3
	octave 2
	note G_, 8
	volume_envelope 3, 5
	note G_, 4
	volume_envelope 2, 5
	note C_, 6
	octave 3
	note C#, 4
	octave 2
	note A#, 2
Music_AnvilleTown_Ch3_branch_1:
	volume_envelope 1, 3
	octave 5
	note C_, 10
	octave 6
	note C_, 1
	octave 5
	note F_, 1
	note A#, 4
	note A_, 2
	rest 6
	octave 5
	note D_, 10
	octave 6
	note D_, 1
	octave 5
	note G_, 1
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	rest 4
	note A_, 1
	note A#, 1
	octave 6
	note C_, 8
	volume_envelope 2, 3
	note C_, 4
	volume_envelope 1, 3
	note G_, 6
	volume_envelope 3, 3
	note G_, 2
	rest 2
	volume_envelope 1, 3
	note F_, 2
	note C_, 12
	volume_envelope 2, 3
	note C_, 6
	volume_envelope 3, 3
	note C_, 6
	volume_envelope 1, 3
	note D_, 8
	octave 5
	note D_, 2
	note F_, 2
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	rest 6
	octave 6
	note C_, 8
	octave 4
	note A_, 2
	octave 5
	note C_, 2
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	note_type 6, 1, 3
	rest 3
	note B_, 1
	octave 6
	note_type 12, 1, 3
	note C_, 2
	octave 5
	note A_, 6
	rest 4
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	note A_, 6
	note C_, 2
	rest 2
	note E_, 8
	note D#, 6
	note D_, 6
	note E_, 6
;;;;;;;;;;;;;;mark
	note C_, 2
	note D_, 2
	note E_, 2
	note_type 6, 1, 3
	note F_, 3
	note B_, 1
	note_type 12, 1, 3
	octave 6
	note C_, 2
	rest 1
	octave 5
	note F_, 1
	note A#, 4
	note A_, 2
	rest 6
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 4
	octave 6
	note D_, 1
	octave 5
	note G_, 1
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	rest 4
	note A_, 1
	note A#, 1
	octave 6
	note C_, 8
	note_type 6, 2, 3
	note C_, 7
	volume_envelope 1, 3
	note F#, 1
	note_type 12, 1, 3
	note G_, 4
	note A_, 2
	volume_envelope 3, 3
	note A_, 2
	volume_envelope 1, 3
	note G_, 4
	note C_, 12
	volume_envelope 2, 3
	note C_, 6
	note_type 6, 3, 3
	note C_, 11
	volume_envelope 1, 3
	note C#, 1
	note_type 12, 1, 3
	note D_, 6
	volume_envelope 3, 3
	note D_, 2
	volume_envelope 1, 3
	octave 5
	note D_, 2
	note F_, 2
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	volume_envelope 3, 3
	note A#, 2
	rest 4
	volume_envelope 1, 3
	octave 6
	note C_, 8
	volume_envelope 3, 3
	note C_, 2
	volume_envelope 1, 3
	octave 4
	note A_, 1
	octave 5
	note C_, 1
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	note_type 6, 3, 3
	note A#, 3
	volume_envelope 1, 3
	note B_, 1
	note_type 12, 1, 3
	octave 6
	note C_, 2
	octave 5
	note A_, 8
	volume_envelope 3, 3
	note A_, 2
	volume_envelope 1, 3
	rest 2
	octave 4
	note B_, 1
	octave 5
	note C_, 1
	note_type 6, 1, 3
	note G#, 11
	note G_, 1
	note_type 12, 1, 3
	note G#, 4
	note F_, 12
	volume_envelope 2, 3
	note F_, 6
	volume_envelope 1, 3
	rest 10
;;;;;;;;;;;;;;mark
	note A#, 1
	note B_, 1
	octave 6
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 2
	note G_, 4
	note A#, 1
	note F#, 5
	note D_, 2
	note F_, 3
	rest 1
	note F_, 4
	note G_, 8
	volume_envelope 2, 3
	note G_, 4
	volume_envelope 3, 3
	note G_, 2
	note_type 6, 1, 3
	note D_, 1
	note D#, 1
	note F_, 1
	note F#, 1
	note_type 12, 1, 3
	note G_, 2
	note A_, 4
	note C#, 2
	note D_, 2
	note F_, 2
	note E_, 5
	note_type 6, 1, 3
	note F_, 1
	note E_, 1
	note D_, 7
	note F#, 1
	note_type 12, 1, 3
	note G_, 8
	volume_envelope 2, 3
	note G_, 6
	volume_envelope 2, 5
	octave 2
	note C_, 6
	octave 3
	note C#, 4
	octave 2
	note A#, 2
	sound_jump Music_AnvilleTown_Ch3_branch_1