;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 4.0 (17-Jun-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_UnovaGymBattle:
	channel_count 4
	channel 1, Music_GymLeaderUnova_Ch1
	channel 2, Music_GymLeaderUnova_Ch2
	channel 3, Music_GymLeaderUnova_Ch3
	channel 4, Music_GymLeaderUnova_Ch4

Music_GymLeaderUnova_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 10, 7
	tempo 108
;Bar 1
	octave 3
Music_GymLeaderUnova_Ch1_Intro:
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G#, 4
	note A#, 2
	note G#, 4
	sound_loop 3, Music_GymLeaderUnova_Ch1_Intro
;Bar 4
	duty_cycle $1
	octave 4
	note E_, 1
	rest 1
	octave 4
	note G_, 10
	octave 4
	note_type 6, 10, 7
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note_type 12, 10, 7
	octave 3
	note A#, 1
	note B_, 1
;Bar 5
	duty_cycle $2
	note G_, 6
	octave 4
	note C_, 6
	note G_, 4
;Bar 6
	note F_, 2
	note E_, 6
	note D_, 2
	note C_, 6
;Bar 7
	note C_, 1
	note C#, 1
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 12
;Bar 8
	duty_cycle $3
	octave 4
	note G_, 1
	note G#, 1
	note G_, 1
	note F_, 1
	note G_, 12
;Bar 9
	duty_cycle $0
	volume_envelope 9, 5
	octave 1
	stereo_panning TRUE, FALSE
	note A#, 2
	octave 3
	note E_, 1
	note F_, 1
	octave 1
	note A#, 2
	stereo_panning TRUE, TRUE
	octave 3
	note F#, 2
	octave 1
	note A#, 2
	stereo_panning FALSE, TRUE
	octave 3
	note F_, 2
	octave 1
	note A#, 2
	octave 3
	note D#, 2
;Bar 10
	octave 1;
	note A#, 2
	octave 3
	stereo_panning TRUE, TRUE
	note F_, 2
	octave 1
	note A#, 2
	octave 3
	note F#, 2
	octave 1
	note A#, 2
	octave 3
	stereo_panning TRUE, FALSE
	note F_, 2
	octave 1
	note A#, 2
	octave 3
	note A#, 2
;Bar 11
	stereo_panning TRUE, TRUE
	octave 1;
	note A#, 2
	octave 3
	note F_, 2
	octave 1
	note A#, 2
	stereo_panning FALSE, TRUE
	octave 3
	note F#, 2
	octave 1
	note A#, 2
	octave 3
	note F_, 2
	octave 1
	note A#, 2
	octave 3
	note D#, 2
;Bar 12
	stereo_panning TRUE, TRUE
	duty_cycle $2
	volume_envelope 10, 7
	octave 2
	note A#, 1
	note B_, 1
	note A#, 1
	note G#, 1
	note A#, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	note D_, 1
	rest 1
	note F_, 1
	rest 1
;Bar 13
Music_GymLeaderUnova_Ch1_loop:
	duty_cycle $1
	octave 2
	note G_, 6
	octave 3
	note E_, 6
	note E_, 2
	note F_, 2
;Bar 14
	note G_, 4
	note A_, 2
	note G_, 2
	note F_, 4
	note E_, 4
;Bar 15
	note F_, 6
	note D_, 6
	note D_, 2
	note D#, 2
;Bar 16
	note F_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note D_, 4
	note F_, 4
;Bar 17
	note A_, 6
	note E_, 6
	note A_, 4
;Bar 18
	octave 4
	note C#, 16
;Bar 19
	octave 3
	note A#, 2
	note A#, 4
	note F_, 2
	note F_, 4
	note A#, 2
	note A#, 2
;Bar 20
	duty_cycle $0
	volume_envelope 7, 7
	octave 5
	note A#, 2
	octave 6
	note C_, 1
	rest 1
	note_type 8, 7, 7
	octave 5
	note A#, 1
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note F_, 3
	note D_, 1
	note F_, 1
	note D_, 1
	note_type 12, 7, 7
	octave 4
	note A#, 2
	rest 2
	octave 5
	note_type 3, 7, 7
	note D#, 1
	note D_, 7
	note_type 12, 10, 7
;Bar 21
	duty_cycle $1
	octave 3
	note G_, 2
	note F#, 1
	rest 1
	note G_, 1
	rest 1
	note E_, 4
	rest 2
	note E_, 2
	note F_, 2
;Bar 22
	note G_, 2
	rest 2
	note A_, 2
	note G_, 2
	octave 5
	duty_cycle $0
	volume_envelope 7, 7
	note D_, 2
	note F_, 2
	note G_, 2
	octave 6
	note C_, 2
;Bar 23
	volume_envelope 10, 7
	duty_cycle $1
	octave 3
	note F_, 2
	note E_, 1
	rest 1
	note F_, 1
	rest 1
	note D_, 3
	rest 3
	note D_, 2
	note D#, 2
;Bar 24
	note F_, 2
	rest 2
	note G_, 2
	note F_, 2
	octave 5
	volume_envelope 7, 7
	duty_cycle $0
	note D_, 2
	note F_, 2
	note G_, 2
	note A#, 2
;Bar 25
	volume_envelope 10, 7
	duty_cycle $1
	octave 3
	note A_, 6
	note E_, 6
	note A_, 4
;Bar 26
	octave 4
	volume_envelope 7, 8
	note C#, 16
;Bar 27
	note C#, 2
	volume_envelope 4, 8
	note C#, 2
	rest 2
	octave 3
	volume_envelope 7, 8
	note A_, 2
	volume_envelope 4, 8
	note A_, 2
	rest 2
	octave 4
	volume_envelope 7, 8
	note C#, 2
	volume_envelope 4, 8
	note C#, 2
;Bar 28
	pitch_offset $0001
	duty_cycle $0
	volume_envelope 8, 7
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note C#, 2
	note A_, 2
	note E_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
;Bar 29
	volume_envelope 8, 1
	sound_call Music_GymLeaderUnova_Ch1_Bar29
;Bar 30
	stereo_panning TRUE, FALSE
	note A_, 1
	note A_, 1
	note A_, 2
	stereo_panning FALSE, TRUE
	note A#, 1
	note A#, 1
	note A#, 2
	octave 5
	stereo_panning TRUE, FALSE
	note C_, 1
	note C_, 1
	note C_, 2
	octave 4
	stereo_panning FALSE, TRUE
	note A_, 1
	note A_, 1
	note A_, 2
;Bar 31
Music_GymLeaderUnova_Ch1_Bar31:
	stereo_panning TRUE, FALSE
	note E_, 1
	note E_, 1
	note E_, 2

	stereo_panning FALSE, TRUE
	note E_, 1
	note E_, 1
	note E_, 2
	sound_loop 2, Music_GymLeaderUnova_Ch1_Bar31

	stereo_panning TRUE, FALSE
	note E_, 1
	note E_, 1
	note E_, 2
	stereo_panning FALSE, TRUE
	note F_, 1
	note F_, 1
	note F_, 2
	stereo_panning TRUE, FALSE
	note G_, 1
	note G_, 1
	note G_, 2
	stereo_panning FALSE, TRUE
	note A_, 1
	note A_, 1
	note A_, 2
;Bar 33
	sound_call Music_GymLeaderUnova_Ch1_Bar29
;Bar 34
	sound_call Music_GymLeaderUnova_Ch1_Bar29
;Bar 35
Music_GymLeaderUnova_Ch1_Bar35:
	stereo_panning TRUE, FALSE
	note G_, 1
	note G_, 1
	note G_, 2
	stereo_panning FALSE, TRUE
	note G_, 1
	note G_, 1
	note G_, 2
	sound_loop 2, Music_GymLeaderUnova_Ch1_Bar35
;Bar 36
	octave 5
Music_GymLeaderUnova_Ch1_Bar36:
	stereo_panning TRUE, FALSE
	note C_, 1
	note C_, 1
	note C_, 2
	stereo_panning FALSE, TRUE
	note C_, 1
	note C_, 1
	note C_, 2
	sound_loop 4, Music_GymLeaderUnova_Ch1_Bar36
;Bar 38
	volume_envelope 8, 7
	stereo_panning TRUE, TRUE
	pitch_offset $0000
	duty_cycle $1
	note E_, 16
;Bar 39
	sound_call Music_GymLeaderUnova_Ch1_Bar39
	octave 3
	note G_, 3
	rest 1
;Bar 40
	sound_call Music_GymLeaderUnova_Ch1_Bar39
	octave 3
	note F_, 3
	rest 1
;Bar 41
	sound_call Music_GymLeaderUnova_Ch1_Bar39
	octave 3
	note A#, 3
	rest 1
;Bar 42
	note A_, 3
	rest 1
	note G_, 3
	rest 1
	note F_, 2
	note E_, 6
;Bar 43
	duty_cycle $2
	volume_envelope 7, 8
	octave 3
	note F_, 6
	note A#, 6
	octave 4
	note F_, 4
;Bar 44
	note D#, 1
	rest 1
	note D_, 1
	note D_, 5
	note C_, 1
	rest 1
	octave 3
	note A#, 1
	note A#, 5
;Bar 45
	sound_call Music_GymLeaderUnova_Ch1_Bar46
; ;Bar 43
; 	callchannel Music_GymLeaderUnova_Ch1_Bar43
; 	note __, 4
; 	octave 6
; 	intensity $a5
; 	note D_, 1
; 	intensity $75
; 	note D_, 1
; 	note __, 2
; ;Bar 44
; 	octave 2
; 	intensity $a5
; 	note A#, 1
; 	note __, 1
; 	note A#, 1
; 	note __, 1
; 	note A#, 1
; 	note B_, 1
; 	note A#, 2
; 	note A#, 1
; 	note __, 1
; 	note A#, 1
; 	note __, 1
; 	note A#, 1
; 	note B_, 1
; 	note A#, 2
; ;Bar 45
; 	callchannel Music_GymLeaderUnova_Ch1_Bar43
; 	note __, 2
; 	octave 6
; 	intensity $a5
; 	note C_, 1
; 	intensity $75
; 	note C_, 1
; 	intensity $a5
; 	note D_, 1
; 	intensity $75
; 	note D_, 1
; 	note __, 16
; 	note __, 2
;Bar 46
	duty_cycle $1
	transpose 1, 0
	sound_call Music_GymLeaderUnova_Ch2_Bar46
	transpose 0, 0
;Bar 47
	octave 3
	volume_envelope 8, 7
	sound_call Music_GymLeaderUnova_Ch2_Intro
	sound_call Music_GymLeaderUnova_Ch1_Type1
;Bar 48
	sound_call Music_GymLeaderUnova_Ch1_Bar48
;Bar 49
	sound_call Music_GymLeaderUnova_Ch2_Intro
	sound_call Music_GymLeaderUnova_Ch1_Type1
;Bar 50
	sound_call Music_GymLeaderUnova_Ch1_Bar48
;Bar 51
	octave 2
	sound_call Music_GymLeaderUnova_Ch1_Type2
	note B_, 4
	sound_call Music_GymLeaderUnova_Ch1_Type2
;Bar 52
	sound_call Music_GymLeaderUnova_Ch1_Type3
	note B_, 1
	rest 1
	note A#, 1
	rest 1
;Bar 53
	octave 3
	sound_call Music_GymLeaderUnova_Ch2_Intro
	sound_call Music_GymLeaderUnova_Ch1_Type1
;Bar 54
	sound_call Music_GymLeaderUnova_Ch1_Bar48
;Bar 55
	octave 2
	sound_call Music_GymLeaderUnova_Ch1_Type2
	octave 3
	note D_, 4
	octave 2
	sound_call Music_GymLeaderUnova_Ch1_Type2
;Bar 56
	sound_call Music_GymLeaderUnova_Ch1_Type3
	octave 3
	note C_, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
;Bar 57
	octave 3
	sound_call Music_GymLeaderUnova_Ch1_Type1
	note E_, 4
	sound_call Music_GymLeaderUnova_Ch1_Type1
;Bar 58
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note G_, 4
	note F#, 1
	rest 1
	note G_, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
;Bar 59
	volume_envelope 8, 8
	vibrato 0, 2, 2
	duty_cycle $3
	note C#, 12
	volume_envelope 8, 7
	note C#, 1
	rest 3
;Bar 60
	note D#, 1
	rest 1
	note C#, 1
	rest 3
	octave 3
	note C#, 10
;Bar 61
	octave 4
	volume_envelope 8, 8
	note C_, 12
	volume_envelope 8, 7
	note C_, 1
	rest 3
;Bar 62
	note D_, 1
	rest 1
	note C_, 1
	rest 3
	octave 3
	note C_, 10
;Bar 63
	octave 2
	vibrato 0, 0, 0
Music_GymLeaderUnova_Ch1_Timpani:
	note G_, 4
	rest 2
	note G_, 4
	rest 2
	note G_, 4
	rest 2
	note G_, 4
	rest 2
	note C_, 4
	note C_, 4
	sound_loop 2, Music_GymLeaderUnova_Ch1_Timpani
	sound_jump Music_GymLeaderUnova_Ch1_loop

Music_GymLeaderUnova_Ch1_Bar29:
	stereo_panning TRUE, FALSE
	note F_, 1
	note F_, 1
	note F_, 2

	stereo_panning FALSE, TRUE
	note F_, 1
	note F_, 1
	note F_, 2
	sound_loop 2, Music_GymLeaderUnova_Ch1_Bar29
	sound_ret

Music_GymLeaderUnova_Ch1_Bar39:
	octave 2;
	note C_, 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 4
	note C_, 3
	rest 1
	sound_ret

Music_GymLeaderUnova_Ch1_Bar43:
	octave 5;
	volume_envelope 10, 5
	note C_, 1
	volume_envelope 7, 5
	note C_, 1
	octave 6
	volume_envelope 10, 5
	note C_, 1
	volume_envelope 7, 5
	note C_, 1
	rest 2
	octave 5
	volume_envelope 10, 5
	note G_, 1
	volume_envelope 7, 5
	note G_, 1
	sound_ret

Music_GymLeaderUnova_Ch1_Type1:
	note C_, 1
	rest 1
	sound_loop 3, Music_GymLeaderUnova_Ch1_Type1
	sound_ret

Music_GymLeaderUnova_Ch1_Type2:
	note A#, 1
	rest 1
	sound_loop 3, Music_GymLeaderUnova_Ch1_Type2
	sound_ret

Music_GymLeaderUnova_Ch1_Type3:
	octave 3;
	note D_, 1
	rest 1
	octave 2
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 3
	note D_, 4
	octave 2
	note A#, 1
	rest 1
	sound_ret

Music_GymLeaderUnova_Ch1_Bar48:
	note E_, 1;
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note E_, 4
	note C_, 1
	rest 1
	note C#, 1
	rest 1
	note C_, 1
	rest 1
	sound_ret

Music_GymLeaderUnova_Ch1_Bar46:
	note A#, 1;
	note B_, 1
	note A#, 1
	note G#, 1
	note A#, 12
	sound_ret

; ============================================================================================================

Music_GymLeaderUnova_Ch2:
	duty_cycle $0
	note_type 12, 10, 7
;Bar 1
	octave 4
	sound_call Music_GymLeaderUnova_Ch2_Intro
	note D#, 2
	note C#, 1
	rest 3
;Bar 2
	sound_call Music_GymLeaderUnova_Ch2_Intro
	note D#, 2
	note C#, 1
	rest 3
;Bar 3
	sound_call Music_GymLeaderUnova_Ch2_Intro
	note D#, 2
	note F_, 4
;Bar 4
	sound_call Music_GymLeaderUnova_Ch2_Intro
	octave 3
	note A#, 4
	octave 4
	note C#, 2
;Bar 5
	duty_cycle $1
	note C_, 6
	note G_, 6
	octave 5
	note C_, 4
;Bar 6
	octave 4
	note A#, 2
	note A_, 6
	note G_, 2
	note F_, 6
;Bar 7
	sound_call Music_GymLeaderUnova_Ch2_Bar7
;Bar 8
	octave 5
	sound_call Music_GymLeaderUnova_Ch2_Bar7
	volume_envelope 10, 7
;Bar 9
	octave 3
	note A#, 6
	octave 4
	note F_, 6
	note A#, 4
;Bar 10
	note G#, 2
	note G_, 2
	note G_, 4
	note F_, 2
	note D#, 2
	note D#, 4
;Bar 11
	volume_envelope 9, 8
	note D_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	volume_envelope 8, 8
	note D_, 12
	volume_envelope 10, 7
;Bar 12
	note D_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	note D_, 1
	rest 1
	note F_, 1
	rest 1
	note A#, 1
	rest 1
	note F_, 1
	rest 1
	note A#, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
;Bar 13
Music_GymLeaderUnova_Ch2_loop:
	vibrato 18, 1, 4
	octave 5
	volume_envelope 9, 8
	duty_cycle $2
	note C_, 6
	octave 4
	note G_, 6
	octave 5
	note C_, 2
	note D_, 1
	note D#, 1
;Bar 14
	note E_, 4
	note F_, 2
	note E_, 2
	note D_, 4
	note E_, 2
	note D_, 2
;Bar 15
	octave 4
	note A#, 6
	note F_, 6
	note A#, 2
	octave 5
	note C_, 2
;Bar 16
	note D_, 4
	note D#, 2
	note D_, 2
	octave 4
	note A#, 4
	octave 5
	note D_, 4
;Bar 17
	note C#, 6
	octave 4
	note A_, 6
	octave 5
	note C#, 4
;Bar 18
	note E_, 16
;Bar 19
	octave 4
	volume_envelope 11, 8
	note D_, 2
	volume_envelope 8, 8
	note D_, 4
	octave 3
	volume_envelope 11, 8
	note A#, 2
	volume_envelope 8, 8
	note A#, 4
	octave 4
	volume_envelope 11, 8
	note D_, 2
	note D_, 2
;Bar 20
	volume_envelope 9, 8
	note F_, 16
;Bar 21
	volume_envelope 11, 8
	note C_, 2
	octave 3
	note B_, 1
	volume_envelope 8, 8
	note B_, 1
	octave 4
	volume_envelope 11, 8
	note C_, 1
	volume_envelope 8, 8
	note C_, 1
	octave 3
	volume_envelope 11, 8
	note G_, 4
	volume_envelope 8, 8
	note G_, 2
	octave 4
	volume_envelope 11, 8
	note C_, 2
	note D_, 2
;Bar 22
	note E_, 2
	volume_envelope 8, 8
	note E_, 2
	volume_envelope 11, 8
	note F_, 2
	note E_, 2
	note D_, 2
	volume_envelope 8, 8
	note D_, 2
	volume_envelope 11, 8
	note E_, 2
	volume_envelope 8, 8
	note E_, 2
;Bar 23
	octave 3
	volume_envelope 11, 8
	note A#, 2
	note A_, 1
	volume_envelope 8, 8
	note A_, 1
	volume_envelope 11, 8
	note A#, 1
	volume_envelope 8, 8
	note A#, 1
	volume_envelope 11, 8
	note F_, 3
	volume_envelope 8, 8
	note F_, 3
	volume_envelope 11, 8
	note A#, 2
	octave 4
	note C_, 2
;Bar 24
	note D_, 2
	volume_envelope 8, 8
	note D_, 2
	volume_envelope 11, 8
	note D#, 2
	note D_, 2
	octave 3
	note A#, 2
	volume_envelope 8, 8
	note A#, 2
	volume_envelope 11, 8
	octave 4
	note D_, 4
;Bar 25
	note C#, 6
	octave 3
	note A_, 6
	octave 4
	note C#, 4
;Bar 26
	volume_envelope 10, 8
	note E_, 16
;Bar 27
	volume_envelope 11, 8
	note A_, 2
	volume_envelope 8, 8
	note A_, 4
	volume_envelope 11, 8
	note E_, 2
	volume_envelope 8, 8
	note E_, 4
	volume_envelope 11, 8
	note A_, 2
	volume_envelope 8, 8
	note A_, 2
;Bar 28
	octave 5
	volume_envelope 10, 8
	note C#, 10
	duty_cycle $3
	volume_envelope 9, 8
	octave 4
	note G_, 1
	rest 1
	note A_, 1
	rest 3
;Bar 29
	note A#, 2
	octave 5
	note C_, 8
	octave 4
	note A#, 2
	note A_, 2
	note G_, 2
;Bar 30
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
;Bar 31
	sound_call Music_GymLeaderUnova_Ch2_Bar7
;Bar 32
	note C#, 1
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note C#, 6
	note G_, 1
	rest 1
	note A_, 1
	rest 1
	note F_, 1
	rest 1
;Bar 33
	note A#, 2
	octave 5
	note C_, 8
	octave 4
	note A#, 2
	note A_, 2
	note G_, 2
;Bar 34
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	note A_, 2
	note G_, 2
	octave 5
	note D_, 2
	note C_, 2
	octave 4
	note A#, 2
	octave 5
	note D_, 2
;Bar 35
	note C_, 1
	note D_, 1
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note C_, 12
;Bar 36
	vibrato 0, 0, 0
	octave 4
	note C_, 1
	note D_, 1
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 12
;Bar 37
	sound_call Music_GymLeaderUnova_Ch2_Bar7
;Bar 38
	octave 5
	volume_envelope 9, 7
	note G_, 16
	duty_cycle $2
;Bar 39
	volume_envelope 9, 8
	vibrato 0, 0, 0
	octave 4
	note C_, 6
	note G_, 6
	octave 5
	note C_, 4
;Bar 40
	octave 4
	note A#, 2
	note A_, 6
	note G_, 2
	note F_, 6
;Bar 41
	sound_call Music_GymLeaderUnova_Ch2_Bar7
;Bar 42
	duty_cycle $0
	sound_call Music_GymLeaderUnova_Ch2_Bar7
;Bar 43
	duty_cycle $2
	volume_envelope 9, 8
	octave 3
	note A#, 6
	octave 4
	note F_, 6
	note A#, 4
;Bar 44
	note G#, 1
	rest 1
	note G_, 1
	volume_envelope 8, 8
	note G_, 5
	volume_envelope 9, 8
	note F_, 1
	rest 1
	note D#, 1
	volume_envelope 8, 8
	note D#, 5
;Bar 45
	volume_envelope 9, 8
	note D_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	note D_, 12
;Bar 46
	duty_cycle $3
	sound_call Music_GymLeaderUnova_Ch2_Bar46
;Bar 47
	duty_cycle $0
	note C_, 6
	note D_, 6
	note F_, 4
;Bar 48
	note E_, 2
	note D_, 6
	note C_, 2
	octave 4
	note A#, 6
;Bar 49
	octave 3
	duty_cycle $2
	volume_envelope 9, 7
	note A#, 16
;Bar 50
	note G_, 12
	volume_envelope 10, 7
	octave 5
	note C_, 1
	note G_, 1
	note A#, 1
	note B_, 1
;Bar 51
	octave 4
	duty_cycle $3
	volume_envelope 9, 7
	note F_, 16
;Bar 52
	note D_, 8
	note A_, 4
	note F_, 4
;Bar 53
	note E_, 16
;Bar 54
	note G_, 16
;Bar 55
	duty_cycle $2
	volume_envelope 9, 8
	note F_, 16
;Bar 56
	note D_, 8
	note A_, 2
	note F_, 2
	note F_, 4
;Bar 57
	note G_, 16
;Bar 58
	note B_, 1
	rest 1
	octave 5
	note C_, 14
;Bar 59
	duty_cycle $0
	octave 4
	volume_envelope 8, 8
	vibrato 0, 2, 2
	note F_, 12
	note F_, 1
	rest 3
;Bar 60
	note G_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	octave 3
	volume_envelope 8, 7
	note F_, 10
;Bar 61
	volume_envelope 8, 8
	octave 4
	note E_, 12
	note E_, 1
	rest 3
;Bar 62
	note G_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 3
	volume_envelope 8, 7
	note E_, 10
;Bar 63
	rest 16
	rest 16
	rest 16
	rest 16
	sound_jump Music_GymLeaderUnova_Ch2_loop

Music_GymLeaderUnova_Ch2_Intro:
	note C_, 1;
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C#, 4
	sound_ret

Music_GymLeaderUnova_Ch2_Bar7:
	volume_envelope 9, 8
	note E_, 1;
	note F_, 1
	note E_, 1
	note D_, 1
	volume_envelope 8, 8
	note E_, 12
	volume_envelope 9, 8
	sound_ret

Music_GymLeaderUnova_Ch2_Bar46:
	octave 4
	note D_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	note D_, 1
	rest 1
	note F_, 1
	rest 1
	note A#, 1
	rest 1
	note F_, 1
	rest 1
	note A#, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
	sound_ret

; ============================================================================================================

Music_GymLeaderUnova_Ch3:
	note_type 12, 1, 6
;Bar 1
	sound_call Music_GymLeaderUnova_Ch3_Intro
	note A_, 2
	note A#, 1
	rest 1
	note_type 6, 1, 6
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note_type 12, 1, 6
;Bar 2
	sound_call Music_GymLeaderUnova_Ch3_Intro
	octave 3
	note A#, 2
	note F_, 1
	rest 1
	octave 2
	sound_call Music_GymLeaderUnova_Ch3_Type11
;Bar 3
	sound_call Music_GymLeaderUnova_Ch3_Intro
	octave 4
	note C#, 2
	octave 3
	note G_, 1
	rest 1
	note_type 6, 1, 6
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note_type 12, 1, 6
;Bar 4
	note C_, 6
	octave 2
	note C_, 2
Music_GymLeaderUnova_Ch3_Bar4:
	note C_, 1
	note A#, 1
	octave 3
	note C_, 1
	octave 2
	note G_, 1
	sound_loop 2, Music_GymLeaderUnova_Ch3_Bar4
;Bar 5
	sound_call Music_GymLeaderUnova_Ch3_Type2
	sound_call Music_GymLeaderUnova_Ch3_Type4
;Bar 6
	sound_call Music_GymLeaderUnova_Ch3_Type2
	sound_call Music_GymLeaderUnova_Ch3_Type3
;Bar 7
	sound_call Music_GymLeaderUnova_Ch3_Type2
	sound_call Music_GymLeaderUnova_Ch3_Type4
;Bar 8
	sound_call Music_GymLeaderUnova_Ch3_Type2
	sound_call Music_GymLeaderUnova_Ch3_Type3
;Bar 9
Music_GymLeaderUnova_Ch3_Bar9_10:
	octave 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	octave 3
	note F#, 2
	octave 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	octave 3
	note D#, 2
	octave 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	octave 3
	note F#, 2
	octave 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	octave 3
	note A#, 2
	sound_loop 2, Music_GymLeaderUnova_Ch3_Bar9_10
;Bar 13
Music_GymLeaderUnova_Ch3_loop:
Music_GymLeaderUnova_Ch3_Bar13:
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	sound_loop 3, Music_GymLeaderUnova_Ch3_Bar13
	octave 2
	note G_, 2
	octave 3
	note C_, 2
;Bar 14
	octave 2
	note C_, 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	note F#, 2
	note G_, 2
;Bar 15
	sound_call Music_GymLeaderUnova_Ch3_Type8
	note A#, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	note F_, 2
	note A#, 2
;Bar 16
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	note F_, 2
	note E_, 2
	note F_, 2
;Bar 17
	sound_call Music_GymLeaderUnova_Ch3_Type7
	note E_, 2
	note A_, 2
;Bar 18
	sound_call Music_GymLeaderUnova_Ch3_Type7
	note G_, 2
	note A_, 2
;Bar 19
	sound_call Music_GymLeaderUnova_Ch3_Type8
	note A#, 2
	note F_, 2
	note A#, 2
	sound_call Music_GymLeaderUnova_Ch3_Type5
	;fallthrough
;Bar 20
	note A_, 2
	note A#, 2
;Bar 21
	note C_, 2
	octave 3
	note D_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	octave 2
	note C_, 2
	octave 3
	note C_, 2
;Bar 22
	octave 2
	note C_, 2
	octave 3
	note G_, 2
	octave 2
	note C_, 2
	octave 3
	note F_, 2
	octave 2
	note C_, 2
	octave 3
	note E_, 2
	note D#, 2
	note E_, 2
;Bar 23
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	note F_, 2
	octave 3
	note F_, 1
	note A#, 1
	octave 1
	note A#, 2
	octave 2
	note A#, 2
;Bar 24
	octave 1
	note A#, 2
	octave 3
	note F_, 2
	octave 1
	note A#, 2
	octave 3
	note D#, 2
	octave 1
	note A#, 2
	octave 3
	note F_, 2
	note D_, 2
	note A_, 2
;Bar 25
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note E_, 2
	octave 3
	note E_, 1
	note A_, 1
	octave 1
	note A_, 2
	octave 2
	note A_, 2
;Bar 26
	octave 1
	note A_, 2
	octave 3
	note E_, 2
	octave 1
	note A_, 2
	octave 3
	note D_, 2
	octave 1
	note A_, 2
	octave 3
	note C#, 2
	octave 2
	note G#, 2
	note B_, 2
;Bar 27
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note G#, 2
	note A_, 2
	sound_call Music_GymLeaderUnova_Ch3_Type7
;Bar 28
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	octave 3
	note E_, 2
	note C#, 2
	note E_, 2
	note G_, 2
;Bar 29
	sound_call Music_GymLeaderUnova_Ch3_Type6
;Bar 30
	sound_call Music_GymLeaderUnova_Ch3_Type6
;Bar 31
	octave 1
	note A_, 2
	octave 2
	note A_, 1
	note A_, 1
	note E_, 2
	octave 3
	note E_, 2
	octave 1
	note A_, 2
	octave 3
	note C#, 1
	note C#, 1
	note A_, 2
	note E_, 2
;Bar 32
	octave 1
	note A_, 2
	octave 2
	note A_, 1
	note A_, 1
	octave 3
	note E_, 2
	note D_, 1
	note D_, 1
	note C#, 2
	octave 2
	note B_, 2
	note A_, 2
	note E_, 2
;Bar 33
	sound_call Music_GymLeaderUnova_Ch3_Type6
;Bar 34
	octave 1
	note A#, 2
	octave 2
	sound_call Music_GymLeaderUnova_Ch3_Type11
	sound_call Music_GymLeaderUnova_Ch3_Type8
	sound_call Music_GymLeaderUnova_Ch3_Type11
	octave 1
	note A#, 2
	note B_, 2
;Bar 35
	octave 2
	note C_, 2
	octave 3
	sound_call Music_GymLeaderUnova_Ch3_Type9
	octave 2
	note G_, 2
	octave 3
	note E_, 2
	note C_, 2
	octave 2
	sound_call Music_GymLeaderUnova_Ch3_Type10
	octave 3
	note E_, 2
	note C_, 2
;Bar 36
	octave 2
	note C_, 2
	octave 3
	sound_call Music_GymLeaderUnova_Ch3_Type9
	octave 2
	note G_, 2
	note E_, 2
	note C_, 2
	octave 1
	note B_, 2
	octave 2
	note C_, 2
	octave 3
	note D_, 2
;Bar 37
	note E_, 2
	sound_call Music_GymLeaderUnova_Ch3_Type9
	octave 2
	note B_, 2
	sound_call Music_GymLeaderUnova_Ch3_Type10
	note E_, 2
	note D#, 2
	note E_, 2
	note G_, 2
;Bar 38
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 39
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 40
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 41
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 42
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 43
	sound_call Music_GymLeaderUnova_Ch3_Type5
;Bar 44
	octave 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 2
	note G#, 4
	octave 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	octave 2
	note A#, 4
;Bar 45
	octave 1
	note A#, 2
	octave 3
	note D_, 2
	octave 1
	note A#, 2
	octave 3
	note C_, 2
	sound_call Music_GymLeaderUnova_Ch3_Type8
	note G#, 2
;Bar 46
	octave 1
	note A#, 2
	octave 2
	note G_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note G#, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
;Bar 47
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 48
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 49
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 50
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 51
	sound_call Music_GymLeaderUnova_Ch3_Type8
	note G#, 2
	octave 1
	note A#, 2
	octave 2
	note G_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
;Bar 52
	sound_call Music_GymLeaderUnova_Ch3_Type8
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note D_, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
;Bar 53
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
;Bar 54
	note C_, 2
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	note E_, 2
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 2
;Bar 55
	sound_call Music_GymLeaderUnova_Ch3_Type5
;Bar 56
	sound_call Music_GymLeaderUnova_Ch3_Type5
;Bar 57
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 58
	octave 2
	note C_, 2
	note B_, 2
	octave 3
	note G_, 2
	note E_, 4
	note C_, 2
	note E_, 2
	note C_, 2
;Bar 59
Music_GymLeaderUnova_Ch3_Type1_Bar59:
	octave 2
	note C#, 2
	octave 3
	note C#, 2
	sound_loop 4, Music_GymLeaderUnova_Ch3_Type1_Bar59
;Bar 60
	note D#, 2
	note C#, 2
	octave 2
	note C#, 2
	note F_, 2
	octave 1
	note F_, 2
	octave 2
	note F_, 2
	octave 1
	note F_, 2
	octave 2
	note F_, 2
;Bar 61
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 62
	note D_, 2
	note C_, 2
	octave 2
	note C_, 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	note G_, 2
	octave 3
	note C_, 2
;Bar 63
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 64
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 65
	sound_call Music_GymLeaderUnova_Ch3_Type1
;Bar 66
	sound_call Music_GymLeaderUnova_Ch3_Type1
	sound_jump Music_GymLeaderUnova_Ch3_loop

Music_GymLeaderUnova_Ch3_Type1:
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	sound_loop 4, Music_GymLeaderUnova_Ch3_Type1
	sound_ret

Music_GymLeaderUnova_Ch3_Type2:
	octave 2
	note C_, 2;
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C#, 2
	sound_ret

Music_GymLeaderUnova_Ch3_Type3:
	octave 2;
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note E_, 2
	sound_ret

Music_GymLeaderUnova_Ch3_Type4:
	octave 2;
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	note A#, 2
	sound_ret

Music_GymLeaderUnova_Ch3_Type5:
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	sound_loop 4, Music_GymLeaderUnova_Ch3_Type5
	sound_ret

Music_GymLeaderUnova_Ch3_Type6:
	octave 1
	note A#, 2
	octave 2
	note_type 6, 1, 6;
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note_type 12, 1, 6
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	sound_loop 2, Music_GymLeaderUnova_Ch3_Type6
	sound_ret

Music_GymLeaderUnova_Ch3_Type7:
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	sound_loop 3, Music_GymLeaderUnova_Ch3_Type7
	sound_ret

Music_GymLeaderUnova_Ch3_Type8:
	octave 1;
	note A#, 2
	octave 2
	note A#, 2
	octave 1
	note A#, 2
	octave 2
	sound_ret

Music_GymLeaderUnova_Ch3_Intro:
	octave 3;
	note C_, 3
	rest 3
	octave 2
	note C_, 4
	sound_ret

Music_GymLeaderUnova_Ch3_Type9:
	note_type 6, 1, 6;
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note_type 12, 1, 6
	sound_ret

Music_GymLeaderUnova_Ch3_Type10:
	note_type 6, 1, 6;
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note_type 12, 1, 6
	sound_ret

Music_GymLeaderUnova_Ch3_Type11:
	note_type 6, 1, 6;
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note_type 12, 1, 6
	sound_ret

; ============================================================================================================

Music_GymLeaderUnova_Ch4:
	toggle_noise 3
	drum_speed 12
;Bar 1
	drum_note 12, 4
	drum_note 11, 2
	drum_note 11, 4
	drum_note 6, 2
	toggle_noise 2
	drum_note 10, 4
	toggle_noise 3
;Bar 2
	drum_note 6, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 1, 2
	toggle_noise 2
	drum_note 10, 4
	toggle_noise 3
;Bar 3
	drum_note 6, 4
	drum_note 11, 2
	drum_note 11, 4
	toggle_noise 2
	drum_note 10, 2
	toggle_noise 3
	drum_note 12, 4
;Bar 4
	drum_note 11, 2
	drum_note 12, 4
Music_GymLeaderUnova_Ch4_Bar4:
	drum_note 11, 1
	sound_loop 10, Music_GymLeaderUnova_Ch4_Bar4
;Bar 5
	drum_note 12, 4
	sound_call Music_GymLeaderUnova_Ch4_Type2
;Bar 6
	drum_note 6, 2
	stereo_panning TRUE, FALSE
	toggle_noise 2
	drum_note 10, 2
	toggle_noise 3
	stereo_panning TRUE, TRUE
	sound_call Music_GymLeaderUnova_Ch4_Type2
;Bar 7
	drum_note 6, 2
	stereo_panning FALSE, TRUE
	toggle_noise 2
	drum_note 10, 2
	toggle_noise 3
	stereo_panning TRUE, TRUE
	sound_call Music_GymLeaderUnova_Ch4_Type2
;Bar 8
	drum_note 6, 2
	stereo_panning TRUE, FALSE
	toggle_noise 2
	drum_note 10, 2
	toggle_noise 3
	stereo_panning TRUE, TRUE
	sound_call Music_GymLeaderUnova_Ch4_Type2
;Bar 9
	drum_note 12, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 4
	drum_note 11, 2
	drum_note 11, 2
;Bar 10
	drum_note 1, 1
	drum_note 1, 1
	drum_note 9, 2
	drum_note 9, 2
	drum_note 7, 4
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 2
	drum_note 7, 2
;Bar 11
	drum_note 11, 2
	drum_note 7, 4
	drum_note 7, 4
	drum_note 7, 4
	drum_note 7, 2
;Bar 12
	drum_note 11, 2
	drum_note 12, 4
	drum_note 1, 1
	drum_note 1, 1
	drum_note 11, 2
	drum_note 12, 4
	drum_note 1, 1
	drum_note 1, 1
;Bar 13
Music_GymLeaderUnova_Ch4_loop:
	sound_call Music_GymLeaderUnova_Ch4_Bar13
;Bar 14
	sound_call Music_GymLeaderUnova_Ch4_Bar14
;Bar 15
	sound_call Music_GymLeaderUnova_Ch4_Bar15
;Bar 16
	sound_call Music_GymLeaderUnova_Ch4_Bar16
;Bar 17
	sound_call Music_GymLeaderUnova_Ch4_Bar17
;Bar 18
	drum_note 11, 2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 11, 2
	toggle_noise 2
	drum_note 9, 2
	toggle_noise 3
	drum_note 2, 1
	drum_note 2, 1
;Bar 19
	drum_note 11, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 2, 2
;Bar 20
	drum_note 11, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 11, 2
	toggle_noise 2
	drum_note 9, 2
	toggle_noise 3
	drum_note 2, 1
	drum_note 2, 1
;Bar 21
	sound_call Music_GymLeaderUnova_Ch4_Bar13
;Bar 22
	sound_call Music_GymLeaderUnova_Ch4_Bar14
;Bar 23
	sound_call Music_GymLeaderUnova_Ch4_Bar15
;Bar 24
	sound_call Music_GymLeaderUnova_Ch4_Bar16
;Bar 25
	sound_call Music_GymLeaderUnova_Ch4_Bar17
;Bar 26
	sound_call Music_GymLeaderUnova_Ch4_Bar14
;Bar 27
	sound_call Music_GymLeaderUnova_Ch4_Bar15
;Bar 28
	drum_note 11, 2
	drum_note 1, 1
	drum_note 2, 1

	drum_note 1, 1
	drum_note 1, 1
	drum_speed 6
	drum_note 1, 1
	drum_note 1, 1
	drum_speed 12
	drum_note 1, 1

	drum_note 12, 4

	drum_note 6, 4
;Bar 29
	drum_note 12, 4
	drum_note 1, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 11, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	toggle_noise 2
	drum_note 9, 2
	toggle_noise 3
	drum_note 2, 1
	drum_note 2, 1
;Bar 30
Music_GymLeaderUnova_Ch4_Bar30:
	drum_note 11, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 11, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	toggle_noise 2
	drum_note 9, 2
	toggle_noise 3
	drum_note 2, 1
	drum_note 2, 1
	sound_loop 7, Music_GymLeaderUnova_Ch4_Bar30
;Bar 37
	drum_note 11, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 11, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	toggle_noise 2
	drum_note 9, 2
	toggle_noise 3
	drum_note 2, 1
	drum_note 2, 1
;Bar 38
	drum_note 12, 4
	drum_note 1, 4
Music_GymLeaderUnova_Bar38:
	drum_note 11, 4
	drum_note 1, 4
	sound_loop 8, Music_GymLeaderUnova_Bar38
	drum_note 11, 4
	drum_note 1, 2
	drum_note 7, 2
;Bar 43
	sound_call Music_GymLeaderUnova_Ch4_Type1
	drum_note 1, 2
	drum_note 2, 2
;Bar 44
	drum_note 11, 2
	drum_note 11, 2
	stereo_panning TRUE, FALSE
	toggle_noise 2
	drum_note 10, 4
	toggle_noise 3
	stereo_panning TRUE, TRUE
	drum_note 11, 2
	drum_note 11, 2
	stereo_panning FALSE, TRUE
	toggle_noise 2
	drum_note 10, 4
	toggle_noise 3
	stereo_panning TRUE, TRUE
;Bar 45
	sound_call Music_GymLeaderUnova_Ch4_Type1
	drum_note 7, 2
	drum_note 2, 2
;Bar 46
	sound_call Music_GymLeaderUnova_Ch4_Type1
	drum_note 7, 4
;Bar 47
	sound_call Music_GymLeaderUnova_Ch4_Type2
	sound_call Music_GymLeaderUnova_Ch4_Type2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 4
;Bar 49
Music_GymLeaderUnova_Ch4_Bar49:
	drum_note 11, 4;
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 4
	sound_loop 7, Music_GymLeaderUnova_Ch4_Bar49
;Bar 56
	drum_note 11, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 1, 2
;Bar 57
	drum_note 11, 4;
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 4
;Bar 58
	drum_note 1, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
;Bar 59
	sound_call Music_GymLeaderUnova_Ch4_Bar59
;Bar 60
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	toggle_noise 2
	drum_note 10, 4
	toggle_noise 3
	drum_note 1, 2
	drum_note 12, 4
;Bar 61
	sound_call Music_GymLeaderUnova_Ch4_Bar59
;Bar 62
	drum_note 1, 2
	drum_note 12, 2
	drum_note 12, 2
	toggle_noise 2
	drum_note 10, 4
	toggle_noise 3
	drum_note 11, 2
	drum_note 12, 4
;Bar 63
	toggle_noise 2
	drum_note 10, 4
	toggle_noise 3
	drum_note 1, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 2, 2
;Bar 64
	sound_call Music_GymLeaderUnova_Ch4_Bar14
;Bar 65
	sound_call Music_GymLeaderUnova_Ch4_Bar17
;Bar 66
	sound_call Music_GymLeaderUnova_Ch4_Bar14
	sound_jump Music_GymLeaderUnova_Ch4_loop

Music_GymLeaderUnova_Ch4_Bar13:
	drum_note 12, 4
	drum_note 1, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 2, 2
	sound_ret

Music_GymLeaderUnova_Ch4_Bar14:
	drum_note 11, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 11, 2
	toggle_noise 2
	drum_note 9, 2
	toggle_noise 3
	drum_note 2, 1
	drum_note 2, 1
	sound_ret

Music_GymLeaderUnova_Ch4_Bar15:
	drum_note 11, 2;
	drum_note 2, 2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 2, 2
	sound_ret

Music_GymLeaderUnova_Ch4_Bar16:
	drum_note 11, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 11, 2
	toggle_noise 2
	drum_note 9, 4
	toggle_noise 3
	sound_ret

Music_GymLeaderUnova_Ch4_Bar17:
	drum_note 11, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 2, 1
	drum_note 2, 1
	sound_ret

Music_GymLeaderUnova_Ch4_Bar59:
	drum_note 12, 4;
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 1, 2
	sound_ret

Music_GymLeaderUnova_Ch4_Type1:
	drum_note 11, 2;
	drum_note 2, 2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 11, 2
	drum_note 2, 2
	sound_ret

Music_GymLeaderUnova_Ch4_Type2:
	drum_note 11, 4
	sound_loop 3, Music_GymLeaderUnova_Ch4_Type2
	sound_ret
	