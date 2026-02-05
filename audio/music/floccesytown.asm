Music_OldaleTown:
	channel_count 3
	channel 1, Music_OldaleTown_Ch1
	channel 2, Music_OldaleTown_Ch2
	channel 3, Music_OldaleTown_Ch3

Music_OldaleTown_Ch1:
	tempo 188
	duty_cycle 0
	pitch_offset $0001
	note_type 12, 8, 3
	sound_call Music_OldaleTown_Ch1_branch_1
	note A_, 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	note A#, 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	note A_, 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	octave 3
	note D#, 2
	note D_, 2
	note D#, 2
	octave 2
	note F_, 2
	sound_call Music_OldaleTown_Ch1_branch_1
	note A#, 2
	note F_, 2
	octave 3
	note D_, 2
	octave 2
	note F_, 2
	note B_, 2
	note F_, 2
	octave 3
	note D_, 2
	octave 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note D#, 2
	octave 2
	note G_, 2
	volume_envelope 8, 2
	octave 3
	note F_, 1
	note D#, 1
	note C_, 1
	octave 2
	note A_, 1
	octave 3
	note A_, 1
	note G_, 1
	note F_, 1
	note A_, 1
	volume_envelope 8, 3
	note A#, 2
	note F_, 2
	note A#, 2
	octave 2
	note A#, 2
	octave 3
	note A#, 2
	note G_, 2
	note A#, 2
	octave 2
	note A#, 2
	octave 3
	note A_, 2
	note F_, 2
	note A_, 2
	note C_, 2
	volume_envelope 8, 7
	note A#, 4
	note B_, 4
	volume_envelope 8, 3
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note D#, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note D#, 2
	volume_envelope 8, 0
	note G_, 2
	volume_envelope 8, 7
	note G_, 4
	volume_envelope 8, 4
	note A_, 2
	volume_envelope 8, 0
	note F_, 2
	volume_envelope 8, 7
	note F_, 6
	duty_cycle 2
	volume_envelope 8, 2
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note A#, 1
	octave 4
	note D#, 1
	note G_, 1
	note A_, 1
	note A#, 1
	volume_envelope 7, 2
	note D#, 1
	volume_envelope 6, 2
	note A#, 1
	volume_envelope 5, 2
	note D#, 1
	volume_envelope 4, 2
	note A#, 1
	volume_envelope 3, 2
	note D#, 1
	volume_envelope 2, 2
	note A#, 1
	volume_envelope 1, 2
	note D#, 1
	volume_envelope 8, 2
	octave 3
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note C_, 1
	note C#, 1
	note F#, 1
	note A#, 1
	octave 5
	note C_, 1
	note C#, 1
	volume_envelope 7, 2
	octave 4
	note F#, 1
	volume_envelope 6, 2
	octave 5
	note C#, 1
	volume_envelope 5, 2
	octave 4
	note F#, 1
	volume_envelope 4, 2
	octave 5
	note C#, 1
	volume_envelope 3, 2
	octave 4
	note F#, 1
	volume_envelope 2, 2
	octave 5
	note C#, 1
	volume_envelope 1, 2
	octave 4
	note F#, 1
	duty_cycle 0
	octave 4
	volume_envelope 8, 0
	note C_, 2
	volume_envelope 8, 7
	note C_, 6
	octave 3
	volume_envelope 8, 0
	note A#, 2
	volume_envelope 8, 7
	note A#, 6
	volume_envelope 8, 0
	note A_, 2
	volume_envelope 8, 7
	note A_, 4
	note A#, 2
	volume_envelope 8, 0
	octave 4
	note C_, 2
	volume_envelope 8, 7
	note C_, 6
	sound_jump Music_OldaleTown_Ch1
	
Music_OldaleTown_Ch1_branch_1:
	octave 2
	note A#, 2
	note F_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
	note A_, 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note G_, 2
	note D_, 2
	note A#, 2
	note G_, 2
	note F_, 2
	note C_, 2
	note A#, 2
	note F_, 2
	sound_ret

Music_OldaleTown_Ch2:
	pitch_offset $0001
	sound_call Music_OldaleTown_Ch2_branch_1
	note F_, 4
	rest 4
	duty_cycle 3
	octave 3
	volume_envelope 7, 0
	note F_, 6
	note D#, 2
	note D_, 2
	note D#, 2
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 6
	volume_envelope 7, 7
	note C_, 10
	sound_call Music_OldaleTown_Ch2_branch_1
	duty_cycle 3
	octave 3
	note C_, 8
	note D_, 6
	octave 2
	note A#, 2
	octave 3
	note F_, 2
	note D#, 2
	note D_, 2
	note D#, 2
	note C_, 4
	volume_envelope 6, 7
	note C_, 4
	volume_envelope 5, 0
	note D#, 4
	volume_envelope 5, -6
	note D#, 4
	duty_cycle 1
	volume_envelope 6, 0
	octave 1
	note A#, 4
	rest 2
	note F_, 2
	note G_, 6
	rest 2
	note F_, 4
	rest 2
	note C_, 2
	note A#, 4
	note G_, 4
	octave 2
	note C_, 4
	rest 2
	octave 1
	note G_, 2
	octave 2
	note D#, 4
	rest 2
	octave 1
	note G_, 2
	note A#, 2
	rest 1
	octave 2
	note C_, 2
	rest 1
	note D_, 2
	octave 1
	note A_, 2
	rest 1
	note G_, 2
	rest 1
	note F_, 2
	note D#, 4
	rest 2
	note D#, 2
	note A#, 6
	rest 2
	note F#, 4
	rest 2
	note F#, 2
	octave 2
	note C#, 6
	rest 2
	octave 1
	note F_, 8
	note A#, 8
	note F_, 4
	rest 2
	note F_, 2
	note A_, 4
	volume_envelope 6, 7
	note A_, 4
	sound_jump Music_OldaleTown_Ch2
	
Music_OldaleTown_Ch2_branch_1:
	duty_cycle 1
	note_type 12, 6, 0
	octave 1
	note A#, 4
	rest 4
	note A_, 4
	rest 4
	note G_, 4
	rest 4
	sound_ret
	

Music_OldaleTown_Ch3:
	stereo_panning TRUE, TRUE
	vibrato 22, 1, 3
	sound_call Music_OldaleTown_Ch3_branch_1
	note G_, 1
	note A_, 1
	note A#, 2
	octave 5
	note C_, 2
	note D_, 2
	octave 4
	note A#, 2
	octave 5
	note C_, 14
	volume_envelope 2, 1
	note C_, 2
	volume_envelope 2, 2
	note A_, 6
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	note C_, 1
	rest 1
	sound_call Music_OldaleTown_Ch3_branch_1
	octave 5
	note G_, 1
	note A#, 1
	note A_, 2
	note G_, 2
	note F_, 2
	octave 6
	note D#, 2
	note D_, 14
	volume_envelope 2, 1
	note D_, 2
	volume_envelope 2, 2
	octave 5
	note G_, 6
	note D#, 1
	rest 1
	note A_, 1
	note G_, 1
	note F_, 1
	note C_, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note A_, 1
	volume_envelope 1, 1
	octave 6
	note D_, 5
	rest 1
	octave 5
	note A#, 1
	octave 6
	note C_, 1
	note D_, 2
	note A#, 1
	rest 1
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 5
	rest 1
	note G_, 2
	note D_, 8
	note D#, 5
	rest 1
	note C_, 1
	note D_, 1
	note D#, 1
	rest 1
	note F_, 1
	rest 1
	note G_, 1
	rest 1
	octave 5
	note G_, 2
	note A#, 5
	rest 1
	octave 6
	note C_, 2
	octave 5
	note A_, 8
	note A#, 5
	rest 1
	octave 6
	note D#, 1
	note F_, 1
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	note A#, 1
	rest 1
	octave 5
	note A#, 2
	octave 6
	note C#, 5
	rest 1
	note D#, 1
	note F_, 1
	note F#, 1
	rest 1
	note G#, 1
	rest 1
	note A#, 1
	rest 1
	octave 5
	note A#, 2
	octave 6
	note C_, 6
	note D_, 2
	note D#, 2
	note C_, 2
	note_type 8, 1, 1
	note A#, 2
	note A_, 2
	note A#, 2
	note_type 12, 1, 1
	note A_, 8
	volume_envelope 2, 1
	note A_, 4
	volume_envelope 3, 1
	note A_, 4
	sound_jump Music_OldaleTown_Ch3
	
Music_OldaleTown_Ch3_branch_1:
	note_type 12, 1, 1
	octave 5
	note A#, 6
	note F_, 2
	note D#, 2
	note D_, 2
	note C_, 2
	note D_, 2
	octave 4
	note A#, 5
	rest 1
	sound_ret
	