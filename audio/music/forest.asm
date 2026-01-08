Music_PetalburgWoods:
	channel_count 4
	channel 1, Music_PetalburgWoods_Ch1
	channel 2, Music_PetalburgWoods_Ch2
	channel 3, Music_PetalburgWoods_Ch3
	channel 4, Music_PetalburgWoods_Ch4


Music_PetalburgWoods_Ch1:
	tempo 152
	duty_cycle $2
	vibrato 18, 1, 5
	pitch_offset $0001
	note_type 6, 7, 4
	octave 4
	note D_, 4
	note A#, 4
	note F#, 4
	volume_envelope 7, 7
	octave 5
	note D_, 16
	rest 4
	note C#, 2
	note C_, 1
	octave 4
	note B_, 1
	note A#, 4
	volume_envelope 6, 4
	octave 2
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	sound_call Music_PetalburgWoods_Ch1_branch_1
	volume_envelope 7, 7
	octave 1
	note A#, 12
	duty_cycle $0
	volume_envelope 7, 4
	octave 2
	note D_, 4
	note A#, 4
	note F#, 4
	volume_envelope 7, 7
	octave 3
	note D_, 16
	rest 4
	note C#, 2
	note C_, 1
	octave 2
	note B_, 1
	volume_envelope 7, 0
	note A#, 16
	note A#, 16
	volume_envelope 7, 7
	note A#, 16
	volume_envelope 9, 0
	octave 4
	vibrato 0, 0, 0
	note D_, 8
	vibrato 0, 7, 6
	note D_, 12
	vibrato 0, 0, 0
	volume_envelope 8, 7
	note D_, 4
	volume_envelope 9, 0
	vibrato 0, 7, 6
	note D#, 16
	note D#, 8
	volume_envelope 9, 7
	note D#, 12
	vibrato 18, 1, 5
	volume_envelope 7, 4
	octave 2
	note D#, 4
	note B_, 4
	note G_, 4
	volume_envelope 7, 7
	octave 3
	note D#, 16
	rest 4
	note D_, 2
	note C#, 1
	note C_, 1
	volume_envelope 7, 0
	octave 2
	note B_, 12
	volume_envelope 7, 7
	note B_, 12
	duty_cycle $2
	volume_envelope 9, 2
Music_PetalburgWoods_Ch1_loop_1:
	octave 3
	note D#, 4
	note G_, 4
	octave 4
	note D#, 4
	note B_, 12
	rest 12
	rest 12
	sound_loop 2, Music_PetalburgWoods_Ch1_loop_1
	sound_call Music_PetalburgWoods_Ch1_branch_1
	rest 12
	rest 12
	sound_call Music_PetalburgWoods_Ch1_branch_1
	octave 2
	volume_envelope 5, 0
	note D_, 16
	volume_envelope 5, 7
	note D_, 16
	rest 4
	sound_call Music_PetalburgWoods_Ch1_branch_2
	sound_call Music_PetalburgWoods_Ch1_branch_1
	rest 12
	sound_call Music_PetalburgWoods_Ch1_branch_2
	vibrato 0, 6, 15
	duty_cycle $0
	volume_envelope 5, 0
	octave 1
	note F#, 16
	note F#, 4
	volume_envelope 5, 7
	note F#, 16
	volume_envelope 7, 1
	octave 2
	note D_, 2
	note D_, 2
	note F#, 2
	note F#, 2
	octave 3
	note D_, 2
	note D_, 2
	note A#, 2
	note A#, 2
	note D_, 2
	note D_, 2
	note A#, 2
	note A#, 2
	sound_jump Music_PetalburgWoods_Ch1
	
Music_PetalburgWoods_Ch1_branch_1:
	duty_cycle $2
	volume_envelope 9, 2
	octave 3
	note D_, 4
	note A#, 4
	octave 4
	note F#, 4
	note A#, 12
	sound_ret
	
Music_PetalburgWoods_Ch1_branch_2:
	volume_envelope 7, 1
	octave 3
	note D_, 2
	note D_, 2
	note F#, 2
	note F#, 2
	octave 4
	note D_, 2
	note D_, 2
	note A#, 2
	note A#, 2
	note D_, 2
	note D_, 2
	note A#, 2
	note A#, 2
	note D_, 2
	note D_, 2
	note A#, 2
	note A#, 6
	sound_ret
	
Music_PetalburgWoods_Ch2:
	duty_cycle $3
	vibrato 0, 2, 5
	pitch_offset $0001
	note_type 6, 9, 4
	octave 4
	note D_, 4
	note A#, 4
	note F#, 4
	volume_envelope 9, 7
	octave 5
	note D_, 16
	rest 4
	note C#, 2
	note C_, 1
	octave 4
	note B_, 1
	volume_envelope 9, 0
	note A#, 8
	volume_envelope 9, 7
	note A#, 16
	volume_envelope 2, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 3, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 4, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 5, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 4, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 3, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 2, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 1, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	sound_call Music_PetalburgWoods_Ch2_branch_1
	sound_call Music_PetalburgWoods_Ch2_branch_1
	rest 8
	sound_call Music_PetalburgWoods_Ch1_branch_1
	volume_envelope 3, 7
	octave 4
	note G#, 4
	note G#, 4
	note G#, 4
	note G#, 4
	note G#, 4
	note G#, 4
	duty_cycle $3
	volume_envelope 2, 0
	sound_call Music_PetalburgWoods_Ch2_branch_2
	volume_envelope 3, 0
	sound_call Music_PetalburgWoods_Ch2_branch_2
	volume_envelope 4, 0
	sound_call Music_PetalburgWoods_Ch2_branch_2
	volume_envelope 5, 0
	sound_call Music_PetalburgWoods_Ch2_branch_2
	sound_call Music_PetalburgWoods_Ch2_branch_2
	volume_envelope 4, 0
	sound_call Music_PetalburgWoods_Ch2_branch_2
	volume_envelope 3, 0
	sound_call Music_PetalburgWoods_Ch2_branch_2
	volume_envelope 2, 0
	sound_call Music_PetalburgWoods_Ch2_branch_2
	volume_envelope 1, 0
	sound_call Music_PetalburgWoods_Ch2_branch_2
	sound_call Music_PetalburgWoods_Ch2_branch_2
	sound_call Music_PetalburgWoods_Ch2_branch_2
	rest 8
	volume_envelope 7, 0
	octave 5
	note D_, 2
	note D#, 2
	note D_, 2
	rest 2
	note D_, 2
	note D#, 2
	note D_, 2
	rest 14
	rest 16
	octave 2
	note D#, 4
	octave 1
	note D#, 4
	octave 3
	note G_, 2
	rest 6
	note G_, 2
	rest 6
	note G_, 2
	rest 2
	note G_, 2
	rest 14
	rest 12
	note F#, 2
	rest 6
	note F#, 2
	rest 6
	note F#, 2
	rest 2
	octave 5
	note C#, 2
	note D_, 2
	note C#, 2
	rest 2
	note C#, 2
	note D_, 2
	note C#, 2
	rest 6
	note D_, 2
	note D#, 2
	octave 4
	note A#, 2
	rest 2
	octave 3
	note F#, 2
	rest 6
	note F#, 2
	rest 6
	note F#, 2
	rest 2
	octave 2
	duty_cycle $2
	volume_envelope 7, 0
	note A#, 8
	volume_envelope 7, 7
	note A#, 16
	sound_call Music_PetalburgWoods_Ch1_branch_1
	rest 16
	rest 4
	volume_envelope 5, 4
	octave 5
	note F#, 4
	volume_envelope 5, 0
	note F#, 12
	volume_envelope 5, 7
	note F#, 12
	duty_cycle $3
	volume_envelope 2, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 3, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 4, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 5, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 4, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 3, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 2, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	volume_envelope 1, 0
	sound_call Music_PetalburgWoods_Ch2_branch_1
	sound_call Music_PetalburgWoods_Ch2_branch_1
	rest 16
	rest 12
	sound_jump Music_PetalburgWoods_Ch2
	
Music_PetalburgWoods_Ch2_branch_1:
	octave 6
	note D_, 1
	octave 5
	note A#, 1
	octave 6
	note D_, 1
	octave 5
	note A#, 1
	octave 6
	note D_, 1
	octave 5
	note A#, 1
	octave 6
	note D_, 1
	octave 5
	note A#, 1
	sound_ret

Music_PetalburgWoods_Ch2_branch_2:
	octave 6
	note D#, 1
	octave 5
	note G_, 1
	octave 6
	note D#, 1
	octave 5
	note G_, 1
	octave 6
	note D#, 1
	octave 5
	note G_, 1
	octave 6
	note D#, 1
	octave 5
	note G_, 1
	sound_ret
	
	
Music_PetalburgWoods_Ch3:
	note_type 12, 2, 6
	rest 8
	octave 3
Music_PetalburgWoods_Ch3_loop_main:
	sound_call Music_PetalburgWoods_Ch3_branch_1
	volume_envelope 2, 0
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	volume_envelope 2, 6
	octave 4
	sound_call Music_PetalburgWoods_Ch3_branch_1
	rest 12
	octave 3
	sound_call Music_PetalburgWoods_Ch3_branch_1
	rest 12
	sound_call Music_PetalburgWoods_Ch3_branch_1
	rest 12
	sound_call Music_PetalburgWoods_Ch3_branch_2
	rest 12
	sound_call Music_PetalburgWoods_Ch3_branch_2
	rest 12
	sound_call Music_PetalburgWoods_Ch3_branch_2
	rest 12
	octave 4
	sound_call Music_PetalburgWoods_Ch3_branch_2
	rest 12
	sound_call Music_PetalburgWoods_Ch3_branch_1
	rest 12
	sound_call Music_PetalburgWoods_Ch3_branch_1
	octave 3
	rest 12
	sound_call Music_PetalburgWoods_Ch3_branch_1
	rest 12
	sound_call Music_PetalburgWoods_Ch3_branch_1
	rest 12
	sound_call Music_PetalburgWoods_Ch3_branch_1
	rest 12
	sound_call Music_PetalburgWoods_Ch3_branch_1
	rest 12
	sound_jump Music_PetalburgWoods_Ch3_loop_main
	
Music_PetalburgWoods_Ch3_branch_1:
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	sound_ret
	
Music_PetalburgWoods_Ch3_branch_2:
	note D#, 1
	rest 3
	note D#, 1
	rest 3
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	sound_ret
	
Music_PetalburgWoods_Ch4:
	toggle_noise $1
	drum_speed 12
	rest 6
Music_PetalburgWoods_Ch4_loop_main:
	drum_note 5, 10
	drum_note 5, 2
	drum_note 6, 12
	sound_jump Music_PetalburgWoods_Ch4_loop_main