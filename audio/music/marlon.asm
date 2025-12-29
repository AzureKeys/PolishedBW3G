; Important note: This song uses data from my May encounter theme. To work properly, either add that song to your game or copy the percussion data from that track to this one manually.

Music_BrendanEncounter:
	channel_count 4
	channel 1, Music_BrendanEncounter_Ch1
	channel 2, Music_BrendanEncounter_Ch2
	channel 3, Music_BrendanEncounter_Ch3
	channel 4, Music_MayEncounter_Ch4


Music_BrendanEncounter_Ch1:
	duty_cycle $3
	vibrato 18, 1, 5
	pitch_offset $0001
	tempo 156
	note_type 6, 9, 2
	octave 3
	note F#, 2
	note F#, 2
	note F#, 2
	note F#, 2
	note F#, 2
	volume_envelope 6, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 2
	note B_, 2
	volume_envelope 9, 2
	octave 3
	note F_, 1
	note F#, 4
	note D_, 4
	octave 2
	note B_, 4
	octave 3
	note E_, 8
	note F#, 8
	note G_, 8
	note G#, 4
	note B_, 2
	volume_envelope 6, 1
	note A_, 1
	note G#, 1
	note F#, 4
Music_BrendanEncounter_Ch1_loop_main:
	duty_cycle $0
	octave 3
	volume_envelope 4, 0
Music_BrendanEncounter_Ch1_loop_1:
	note A_, 8
	rest 2
	note A_, 2
	rest 2
	note E_, 2
	note A_, 8
	rest 4
	note A_, 2
	note G#, 2
	note G_, 10
	note A_, 1
	note A#, 1
	note B_, 7
	note A#, 1
	note A_, 3
	note G#, 1
	note G_, 3
	note G#, 1
	note A_, 3
	note B_, 1
	octave 4
	note D_, 8
	octave 3
	rest 2
	note A_, 2
	rest 2
	note F#, 2
	note A_, 4
	octave 4
	note D_, 1
	note C#, 3
	note C_, 2
	octave 3
	note B_, 2
	note A#, 2
	note A_, 2
	note G#, 1
	rest 1
	note E_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note A_, 1
	rest 1
	note F#, 1
	rest 1
	note C#, 1
	rest 1
	note F#, 1
	rest 1
	note A#, 1
	rest 1
	note G_, 1
	rest 1
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	note G#, 1
	note E_, 1
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 1
	note G#, 1
	sound_loop 2, Music_BrendanEncounter_Ch1_loop_1
	duty_cycle $3
	sound_call Music_BrendanEncounter_Ch1_branch_1
	volume_envelope 8, 5
	note B_, 6
	sound_call Music_BrendanEncounter_Ch1_branch_1
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	volume_envelope 8, 0
	note E_, 2
	volume_envelope 5, 7
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	note A_, 3
	octave 4
	volume_envelope 8, 7
	note E_, 4
	volume_envelope 8, 2
	note D_, 4
	volume_envelope 8, 7
	note C#, 4
	volume_envelope 8, 2
	octave 3
	note B_, 4
	note G_, 2
	note F#, 2
	note G_, 2
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	volume_envelope 10, 7
	note E_, 4
	volume_envelope 10, 2
	note F#, 4
	note E_, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	volume_envelope 9, 0
	note A_, 8
	volume_envelope 9, 5
	note A_, 4
	note G#, 2
	note A_, 2
	volume_envelope 9, 0
	note F#, 4
	volume_envelope 9, 7
	note F#, 4
	note G#, 6
	note A_, 2
	volume_envelope 10, 0
	note B_, 8
	volume_envelope 10, 5
	note B_, 4
	note A_, 2
	note B_, 2
	volume_envelope 10, 7
	note F#, 8
	note A_, 4
	note B_, 2
	octave 4
	note C_, 2
	sound_call Music_BrendanEncounter_Ch2_branch_1
	octave 3
	note B_, 4
	sound_jump Music_BrendanEncounter_Ch1_loop_main
	
Music_BrendanEncounter_Ch1_branch_1:
	volume_envelope 8, 1
	octave 4
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	volume_envelope 8, 0
	note C#, 2
	octave 3
	volume_envelope 5, 7
	note B_, 1
	note A_, 1
	note G#, 1
	note F#, 3
	octave 4
	volume_envelope 8, 2
	note C#, 4
	octave 3
	note B_, 4
	note A_, 2
	sound_ret
	
Music_BrendanEncounter_Ch2:
	duty_cycle $3
	vibrato 18, 1, 5
	pitch_offset $0001
	sound_call Music_BrendanEncounter_Ch2_branch_1
Music_BrendanEncounter_Ch2_loop:
	duty_cycle $2
	octave 3
	volume_envelope 9, 3
	note A_, 2
	note B_, 2
	octave 4
	note C#, 4
	note D_, 3
	volume_envelope 6, 6
	note F_, 1
	volume_envelope 9, 3
	note E_, 4
	volume_envelope 9, 6
	note E_, 8
	note D_, 4
	note C#, 4
	note D_, 2
	note C#, 2
	volume_envelope 6, 6
	note C_, 1
	volume_envelope 9, 7
	octave 3
	note B_, 14
	octave 4
	note C_, 1
	note C#, 4
	volume_envelope 7, 0
	note C_, 1
	octave 3
	volume_envelope 6, 0
	note B_, 1
	volume_envelope 5, 0
	note A#, 1
	volume_envelope 4, 0
	note A_, 1
	volume_envelope 9, 3
	note F#, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note A_, 8
	note A_, 8
	note A_, 8
	note A_, 4
	note F#, 2
	note A_, 2
	note E_, 4
	octave 4
	note E_, 4
	note D_, 4
	volume_envelope 9, 5
	note C#, 8
	note D_, 2
	note C#, 2
	octave 3
	note B_, 8
	volume_envelope 9, 3
	octave 4
	note C#, 4
	note D_, 4
	note E_, 4
	volume_envelope 7, 0
	note G#, 1
	volume_envelope 9, 7
	note A_, 5
	volume_envelope 7, 0
	note F#, 1
	volume_envelope 5, 0
	note E_, 1
	volume_envelope 9, 3
	note C#, 4
	note D_, 2
	volume_envelope 9, 7
	note C#, 6
	octave 3
	note B_, 10
	note E_, 2
	volume_envelope 4, 0
	note G_, 1
	volume_envelope 5, 0
	note A_, 1
	volume_envelope 6, 0
	note B_, 1
	octave 4
	volume_envelope 7, 0
	note D_, 1
	volume_envelope 9, 7
	note E_, 8
	volume_envelope 9, 3
	note D_, 4
	note E_, 2
	note D_, 2
	note C#, 8
	note C#, 8
	note C#, 2
	note C#, 2
	octave 3
	note F#, 2
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note D_, 2
	note A_, 2
	octave 4
	note C#, 6
	note E_, 4
	note D_, 4
	note C#, 8
	note D_, 2
	note C#, 2
	volume_envelope 9, 7
	octave 3
	note B_, 8 ;;;;;;;;;
	duty_cycle $0
	volume_envelope 9, 0
	octave 4
	note C#, 8
	volume_envelope 9, 4
	note C#, 4
	octave 3
	volume_envelope 9, 2
	note F#, 2
	note F#, 2
	note A_, 4
	note F#, 4
	note A_, 2
	volume_envelope 9, 0
	note B_, 6
	octave 4
	note C#, 8
	volume_envelope 9, 4
	note C#, 6
	octave 3
	volume_envelope 9, 2
	note E_, 2
	note A_, 4
	note B_, 4
	octave 4
	note D_, 2
	volume_envelope 9, 0
	note C#, 6
	note E_, 2
	volume_envelope 7, 0
	note D#, 1
	volume_envelope 6, 0
	note D_, 1
	volume_envelope 5, 0
	note C#, 1
	volume_envelope 4, 0
	note C_, 1
	volume_envelope 3, 7
	octave 3
	note B_, 10
	volume_envelope 9, 0
	octave 4
	note E_, 4
	note D_, 2
	rest 2
	note C#, 2
	octave 3
	note B_, 2
	note E_, 2
	note F#, 2
	note G_, 10
	note E_, 2
	note G_, 2
	octave 4
	note C#, 2
	note E_, 4
	note F#, 2
	rest 2
	note E_, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 8
	volume_envelope 9, 4
	note C#, 4
	volume_envelope 9, 0
	note C_, 2
	note C#, 2
	octave 3
	note A_, 6
	volume_envelope 9, 7
	note A_, 2
	note B_, 6
	rest 2
	octave 4
	note C#, 2
	rest 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 8
	volume_envelope 9, 2
	note B_, 2
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 1
	note D_, 1
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	volume_envelope 9, 0
	note E_, 2
	volume_envelope 7, 0
	note D_, 1
	volume_envelope 6, 0
	note C_, 1
	volume_envelope 5, 0
	octave 3
	note B_, 1
	volume_envelope 4, 7
	note A_, 2
	duty_cycle $2
	volume_envelope 7, 7
	octave 4
	note D#, 1
	note E_, 5
	note D#, 1
	note E_, 5
	note D#, 1
	note E_, 3
	note A_, 1
	note G#, 8
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 10
	note D_, 1
	note C#, 1
	sound_jump Music_BrendanEncounter_Ch2_loop
	
Music_BrendanEncounter_Ch2_branch_1:
	note_type 6, 10, 2
	octave 4
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	volume_envelope 7, 1
	octave 3
	note B_, 1
	note A_, 1
	note G#, 1
	note F#, 2
	octave 4
	volume_envelope 10, 2
	note C_, 1
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note G#, 8
	note A_, 8
	note A#, 8
	note B_, 4
	octave 4
	note E_, 2
	volume_envelope 7, 1
	note D_, 1
	note C#, 1
	sound_ret
	
Music_BrendanEncounter_Ch3:
	note_type 6, 1, 2
	octave 2
	note B_, 1
	rest 1
	note B_, 2
	octave 1
	note B_, 1
	rest 1
	note B_, 2
	octave 2
	note B_, 4
	note A#, 1
	note A_, 1
	note G#, 1
	octave 2
	note G_, 1
	octave 1
	note B_, 4
	octave 2
	note F#, 4
	note B_, 4
	octave 3
	note E_, 2
	note D_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 4
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3	
Music_BrendanEncounter_Ch3_loop:
	note D#, 1
	note E_, 7
	octave 2
	note E_, 4
	octave 3
	note D#, 1
	note E_, 7
	sound_call Music_BrendanEncounter_Ch3_branch_1
	octave 1
	note A_, 3
	rest 1
	note A_, 4
	octave 2
	note G_, 2
	note E_, 2
	note C#, 4
	note D_, 5
	rest 1
	note D_, 2
	note D_, 2
	sound_call Music_BrendanEncounter_Ch3_branch_2
	octave 2
	note G#, 2
	note D_, 2
	sound_call Music_BrendanEncounter_Ch3_branch_3
	octave 3
	note F#, 2
	octave 1
	note B_, 2
	sound_call Music_BrendanEncounter_Ch3_branch_1
	note A_, 5
	rest 1
	note A_, 1
	rest 1
	note A_, 2
	octave 2
	note G_, 2
	rest 2
	note E_, 2
	note D_, 5
	rest 1
	note D_, 2
	note D_, 1
	rest 1
	sound_call Music_BrendanEncounter_Ch3_branch_2
	octave 2
	note D_, 2
	note D#, 2
	sound_call Music_BrendanEncounter_Ch3_branch_3
	octave 2
	note E_, 2
	note D#, 2
	note D_, 5
	rest 1
	note D_, 2
	rest 4
	octave 1
	note A_, 2
	octave 2
	note C#, 2
	octave 3
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	octave 2
	note A_, 2
	note D_, 4
	note C#, 2
	note D_, 5
	rest 1
	note D_, 2
	rest 4
	octave 1
	note A_, 4
	octave 2
	note D_, 2
	octave 3
	note D_, 2
	octave 2
	note D_, 2
	note D_, 2
	octave 3
	note D_, 3
	note C#, 1
	note C_, 1
	octave 2
	note B_, 1
	note C_, 2
	note C#, 5
	rest 1
	note C#, 2
	rest 4
	octave 1
	note A_, 2
	note B_, 2
	octave 2
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 2
	note E_, 4
	note C_, 2
	note C#, 5
	rest 1
	note C#, 2
	rest 4
	note G_, 2
	octave 1
	note B_, 2
	octave 2
	note C#, 5
	rest 1
	note C#, 2
	rest 4
	note C_, 4
	octave 1
	note B_, 5
	rest 1
	note B_, 2
	rest 4
	octave 2
	note F#, 2
	octave 1
	note A_, 2
	note B_, 2
	octave 2
	note F#, 2
	note D_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	rest 2
	octave 1
	note A#, 4
	note B_, 5
	rest 1
	note B_, 2
	rest 4
	octave 2
	note E_, 2
	octave 1
	note G#, 2
	note B_, 5
	rest 1
	note B_, 1
	rest 1
	note B_, 2
	rest 2
	octave 2
	note G#, 4
	note B_, 1
	rest 1
	note B_, 2
	octave 1
	note B_, 1
	rest 1
	note B_, 2
	octave 2
	note B_, 8
	octave 1
	note B_, 4
	octave 2
	note F#, 4
	note B_, 4
	octave 3
	note E_, 2
	note D_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 4
	octave 3
	note E_, 2
	rest 2
	sound_jump Music_BrendanEncounter_Ch3_loop
	
Music_BrendanEncounter_Ch3_branch_1:
	octave 1
	note A_, 5
	rest 1
	note A_, 2
	octave 2
	note G#, 2
	octave 1
	note A_, 2
	rest 2
	note G#, 2
	note A_, 2
	pitch_offset $0040
	note A_, 2
	pitch_offset $0000
	note A_, 8
	octave 2
	note G#, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 6
	note A_, 2
	octave 2
	note A_, 2
	octave 1
	note A_, 2
	rest 4
	sound_ret
	
Music_BrendanEncounter_Ch3_branch_2:
	octave 3
	note D_, 2
	rest 2
	octave 2
	note D_, 1
	rest 1
	note D_, 3
	rest 1
	note D_, 3
	rest 1
	note D_, 2
	octave 3
	note D_, 2
	sound_ret
	
Music_BrendanEncounter_Ch3_branch_3:
	note E_, 4
	octave 3
	note E_, 2
	rest 2
	octave 2
	note F#, 4
	octave 3
	note F#, 2
	rest 2
	octave 2
	note G_, 4
	octave 3
	note G_, 2
	rest 2
	octave 2
	note G#, 2
	octave 3
	note G#, 2
	sound_ret
	
Music_MayEncounter_Ch4:
	toggle_noise $3
	drum_speed 6
Music_MayEncounter_Ch4_loop:
	drum_note 1, 2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 1, 8
	drum_note 1, 2
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 2, 2
	drum_note 1, 2
	drum_note 2, 4
	drum_note 1, 4
	drum_note 12, 8
	sound_call Music_MayEncounter_Ch4_branch_1
	sound_call Music_MayEncounter_Ch4_branch_1
	sound_call Music_MayEncounter_Ch4_branch_1
	sound_call Music_MayEncounter_Ch4_branch_2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 1, 2
	sound_call Music_MayEncounter_Ch4_branch_1
	sound_call Music_MayEncounter_Ch4_branch_1
	sound_call Music_MayEncounter_Ch4_branch_1
	sound_call Music_MayEncounter_Ch4_branch_2
	drum_note 1, 4
	drum_note 2, 2
	drum_note 1, 1
	drum_note 1, 1
	sound_call Music_MayEncounter_Ch4_branch_3
	drum_note 2, 6
	drum_note 2, 2
	drum_note 3, 4
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 4
	drum_note 2, 4
	drum_note 2, 4
	drum_note 3, 2
	drum_note 2, 2
	sound_call Music_MayEncounter_Ch4_branch_3
	drum_note 2, 4
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 4
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 6
	drum_note 2, 2
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 2, 6
	drum_note 2, 2
	drum_note 3, 4
	drum_note 2, 4
	drum_note 2, 6
	drum_note 3, 2
	drum_note 2, 4
	drum_note 3, 4
	drum_note 2, 6
	drum_note 2, 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 2, 2
	drum_note 3, 4
	drum_note 2, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 1, 2
	sound_jump Music_MayEncounter_Ch4_loop
	
Music_MayEncounter_Ch4_branch_1:
	drum_note 2, 8
	drum_note 1, 2
	drum_note 2, 4
	drum_note 2, 6
	drum_note 2, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	sound_ret
	
Music_MayEncounter_Ch4_branch_2:
	drum_note 2, 4
	drum_note 1, 4
	drum_note 2, 2
	drum_note 1, 4
	drum_note 2, 2
	drum_note 1, 4
	drum_note 1, 4
	sound_ret
	
Music_MayEncounter_Ch4_branch_3:
	drum_note 2, 6
	drum_note 3, 6
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 4
	drum_note 2, 4
	drum_note 3, 2
	drum_note 2, 4
	drum_note 2, 2
	sound_ret