;Coverted using MIDI2ASM
;Version 2.0. (23-Sep-2019)
;Code by TriteHexagon
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_BattleVsRegis:
	channel_count 4
	channel 1, Music_BattleVsRegis_Ch1
	channel 2, Music_BattleVsRegis_Ch2
	channel 3, Music_BattleVsRegis_Ch3
	channel 4, Music_BattleVsRegis_Ch4

Music_BattleVsRegis_Ch1:
	volume 6, 6
	duty_cycle $2
	tempo 119
	pitch_offset $0001
;Bar 1
	note_type 8, 9, 7
	octave 5
	sound_call Music_BattleVsRegis_Ch1_main_loop
	octave 3
	sound_call Music_BattleVsRegis_Ch1_main_loop
;Bar 2
	octave 4
	sound_call Music_BattleVsRegis_Ch1_main_loop
	octave 5
	sound_call Music_BattleVsRegis_Ch1_main_loop
;Bar 3
	octave 4
	sound_call Music_BattleVsRegis_Ch1_main_loop
	octave 5
	sound_call Music_BattleVsRegis_Ch1_main_loop
;Bar 4
	octave 4
Music_BattleVsRegis_Ch1_loop1:
	sound_call Music_BattleVsRegis_Ch1_main_loop
	sound_loop 10, Music_BattleVsRegis_Ch1_loop1
; ;Bar 9
	; pitchoffset 0, C#
; Music_BattleVsRegis_Ch1_loop2:
	; callchannel Music_BattleVsRegis_Ch1_main_loop
	; loopchannel 12, Music_BattleVsRegis_Ch1_loop2
;Bar 15
	transpose 0, 0
Music_BattleVsRegis_Ch1_loop3:
	sound_call Music_BattleVsRegis_Ch1_main_loop
	sound_loop 12, Music_BattleVsRegis_Ch1_loop3
;Bar 21
Music_BattleVsRegis_Ch1_loop:
	transpose 0, 1
Music_BattleVsRegis_Ch1_loop4:
	sound_call Music_BattleVsRegis_Ch1_main_loop
	sound_loop 24, Music_BattleVsRegis_Ch1_loop4
	transpose 0, 0
;Bar 33
	stereo_panning FALSE, TRUE
	volume_envelope 8, 7
	octave 4
	note A_, 2
	octave 5
	note D_, 2
	octave 4
	note G#, 2
	octave 5
	note C#, 2
	octave 4
	note G_, 2
	octave 5
	note C_, 2
	octave 4
	note F#, 2
	volume_envelope 7, 7
	note B_, 2
	note F_, 2
	note A#, 2
	note E_, 2
	note G#, 2
;Bar 34
	note D#, 2
	note G_, 2
	note D_, 2
	volume_envelope 6, 7
	note F#, 2
	note C#, 2
	note F_, 2
	note C_, 2
	volume_envelope 5, 7
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note D_, 2
	stereo_panning TRUE, TRUE
;Bar 35
	volume_envelope 8, 7
	octave 4
Music_BattleVsRegis_Ch1_loop5:
	sound_call Music_BattleVsRegis_Ch1_main_loop
	sound_loop 12, Music_BattleVsRegis_Ch1_loop5
	sound_jump Music_BattleVsRegis_Ch1_loop

Music_BattleVsRegis_Ch1_main_loop:
	note C#, 2
	rest 2
	note C#, 2
	rest 2
	note A_, 2
	note G#, 2
	sound_ret

; ============================================================================================================

Music_BattleVsRegis_Ch2:
	duty_cycle $3
	vibrato 18, 3, 5
;Bar 1
	note_type 8, 11, 6
	octave 4
	note C#, 2
	octave 3
	note G#, 2
	octave 4
	note C#, 2
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note F#, 2
	note B_, 2
	note A#, 2
	note F_, 2
	note A#, 2
;Bar 2
	note A_, 2
	note E_, 2
	note A_, 2
	note G#, 2
	note D#, 2
	note G#, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note F#, 2
	note C#, 2
	note F#, 2
;Bar 3
	note F_, 2
	note C_, 2
	note F_, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note D#, 2
	octave 2
	note A#, 2
	octave 3
	note D#, 2
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
;Bar 4
	note_type 12, 13, 8
	rest 16
	rest 6
	octave 4
;Bar 5
	note C#, 6
	note D_, 2
	rest 8
;Bar 6
	octave 3
	note G#, 6
	note A_, 2
	rest 8
;Bar 7
	note C#, 6
	note D_, 2
	rest 16
	rest 2
; ;Bar 9
	; octave 4
	; note F_, 2
	; note C#, 2
	; note D#, 2
	; note __, 2
	; octave 3
	; note A_, 3
	; octave 4
	; note C_, 3
	; note D#, 2
; ;Bar 10
	; note __, 16
	; note __, 6
; ;Bar 11
	; note C_, 2
	; octave 3
	; note A#, 2
	; note G#, 2
	; note __, 2
	; note E_, 3
; ;Bar 12
	; note A#, 3
	; note E_, 2
	; note __, 13
; ;Bar 13
	; octave 4
	; note F_, 2
	; note C#, 2
	; note D#, 2
	; note __, 2
	; octave 3
	; note A_, 3
	; octave 4
	; note C_, 3
; ;Bar 14
	; octave 3
	; note A_, 2
	; note __, 13
;Bar 15
	octave 3
	volume_envelope 10, -7
	note C#, 1
	volume_envelope 13, 8
	note C#, 15
	note C#, 12
;Bar 16
	note_type 8, 13, 8
	note A_, 4
	note G#, 2
;Bar 17
	note_type 12, 10, -7
	note B_, 1
	volume_envelope 13, 8
	note B_, 15
;Bar 18
	note_type 8, 10, -7
	note A_, 2
	volume_envelope 13, 8
	note A_, 14
	note G#, 2
	note F#, 4
	note A_, 2
;Bar 19
	note_type 12, 10, -7
	note G#, 1
	volume_envelope 13, 8
	note G#, 15
;Bar 20
	volume_envelope 10, -7
	note C#, 1
	volume_envelope 13, 8
	note C#, 15
Music_BattleVsRegis_Ch2_loop:
;Bar 21
	volume_envelope 10, -7
	note D_, 1
	volume_envelope 13, 8
	note D_, 15
	note D_, 12
;Bar 22
	note_type 8, 13, 8
	note A#, 4
	note A_, 2
;Bar 23
	note_type 12, 10, -7
	octave 4
	note C_, 1
	volume_envelope 13, 8
	note C_, 15
;Bar 24
	note_type 8, 10, -7
	octave 3
	note A#, 2
	volume_envelope 13, 8
	note A#, 14
	note A_, 2
	note G_, 4
	note A#, 2
;Bar 25
	note_type 12, 10, -7
	note A_, 1
	volume_envelope 13, 8
	note A_, 15
;Bar 26
	volume_envelope 9, -7
	octave 4
	note D_, 1
	volume_envelope 11, 8
	note D_, 15
	octave 3
;Bar 27
	volume_envelope 5, -6
	note D#, 9
	volume_envelope 13, 8
	note D#, 7
;Bar 28
	volume_envelope 5, -6
	note C_, 9
	volume_envelope 13, 8
	note C_, 7
;Bar 29
	volume_envelope 11, 8
	note D_, 2
	rest 16
	rest 14
;Bar 31
	octave 4
	volume_envelope 8, -7
	note D#, 1
	volume_envelope 11, 8
	note D#, 15
;Bar 32
	volume_envelope 10, -7
	note G_, 1
	volume_envelope 13, 8
	note G_, 15
;Bar 33
	note_type 8, 13, 8
;Bar 33
	stereo_panning TRUE, FALSE
	octave 3
	note D_, 2
	note G_, 2
	note C#, 2
	note F#, 2
	note C_, 2
	note F_, 2
	octave 2
	note B_, 2
	octave 3
	volume_envelope 12, 8
	note E_, 2
	octave 2
	note A#, 2
	octave 3
	note D#, 2
	octave 2
	note A_, 2
	octave 3
	note C#, 2
;Bar 34
	octave 2
	note G#, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	volume_envelope 11, 8
	note B_, 2
	note F#, 2
	note A#, 2
	note F_, 2
	volume_envelope 10, 8
	note A_, 2
	note E_, 2
	note G#, 2
	note D#, 2
	note G_, 2
	stereo_panning TRUE, TRUE
	note_type 12, 13, 8
;Bar 35
	octave 3
	note C#, 16
	note C#, 12
;Bar 36
	note_type 8, 13, 8
	note A_, 4
	note G#, 2
;Bar 37
	note_type 12, 10, -7
	note B_, 1
	volume_envelope 13, 8
	note B_, 15
;Bar 38
	note_type 8, 13, 8
	note A_, 2
	volume_envelope 13, 8
	note A_, 14
	note G#, 2
	note F#, 4
	note A_, 2
;Bar 39
	note_type 12, 10, -7
	note G#, 1
	volume_envelope 13, 8
	note G#, 15
;Bar 40
	volume_envelope 10, -7
	note C#, 1
	volume_envelope 13, 8
	note C#, 15
	sound_jump Music_BattleVsRegis_Ch2_loop

; ============================================================================================================

Music_BattleVsRegis_Ch3:
;Bar 1
	note_type 8, 1, 6
	pitch_offset $0002
	octave 1
	sound_call Music_BattleVsRegis_Ch1_main_loop
	octave 2
	sound_call Music_BattleVsRegis_Ch1_main_loop
;Bar 2
	octave 3
	sound_call Music_BattleVsRegis_Ch1_main_loop
	octave 2
	note C#, 2
	octave 1
	note G#, 2
	note G#, 2
	note G#, 2
	note B_, 2
	octave 2
	note C_, 2
;Bar 3
	sound_call Music_BattleVsRegis_Ch3_Type1
;Bar 5
	sound_call Music_BattleVsRegis_Ch3_Type1
;Bar 7
	sound_call Music_BattleVsRegis_Ch3_Type1
; ;Bar 9
	; pitchoffset 0, C#
	; callchannel Music_BattleVsRegis_Ch3_Type1
; ;Bar 11
	; callchannel Music_BattleVsRegis_Ch3_Type1
	; pitchoffset 0, C_
; ;Bar 13
	; note D_, 2
	; note __, 2
	; note D_, 2
	; note D_, 2
	; note A#, 2
	; note A_, 2
	; note D_, 2
	; note __, 2
	; note D_, 2
	; note D_, 2
	; note A#, 2
	; note A_, 2
; ;Bar 14
	; note D_, 2
	; note __, 2
	; note D_, 2
	; note D_, 2
	; note A#, 2
	; note A_, 2
	; note D_, 2
	; octave 3
	; note D_, 2
	; note D#, 2
	; octave 2
	; note A#, 2
	; octave 3
	; note D#, 2
	; note C#, 2
;Bar 15
	octave 2
	sound_call Music_BattleVsRegis_Ch3_Type1
;Bar 17
	sound_call Music_BattleVsRegis_Ch3_Type1
;Bar 19
	sound_call Music_BattleVsRegis_Ch3_Type1
;Bar 21
Music_BattleVsRegis_Ch3_loop:
	transpose 0, 1

Music_BattleVsRegis_Ch3_loop1:
	sound_call Music_BattleVsRegis_Ch3_Type1
	sound_loop 7, Music_BattleVsRegis_Ch3_loop1
;Bar 35
	transpose 0, 0
	sound_call Music_BattleVsRegis_Ch3_Type1
;Bar 37
	sound_call Music_BattleVsRegis_Ch3_Type1
;Bar 39
	sound_call Music_BattleVsRegis_Ch3_Type1
;Bar 41
	sound_jump Music_BattleVsRegis_Ch3_loop

Music_BattleVsRegis_Ch3_Type1:
	note C#, 2
	rest 2
	note C#, 2
	note C#, 2
	note A_, 2
	note G#, 2
	note C#, 2
	rest 2
	note C#, 2
	note C#, 2
	note A_, 2
	note G#, 2
;Bar 4
	note C#, 2
	rest 2
	note C#, 2
	note C#, 2
	note A_, 2
	note G#, 2
	note C#, 2
	octave 1
	note G#, 2
	note G#, 2
	note G#, 2
	note B_, 2
	octave 2
	note C_, 2
	sound_ret

; ============================================================================================================

Music_BattleVsRegis_Ch4:
	toggle_noise 1 
	drum_speed 12
;Bar 1
	sound_call Music_BattleVsRegis_Ch4_Type1
;Bar 2
	sound_call Music_BattleVsRegis_Ch4_Type1
;Bar 3
	sound_call Music_BattleVsRegis_Ch4_Type1
;Bar 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 7, 8
;Bar 5
	sound_call Music_BattleVsRegis_Ch4_Type1
;Bar 6
	sound_call Music_BattleVsRegis_Ch4_Type2
;Bar 7
	sound_call Music_BattleVsRegis_Ch4_Type1
;Bar 8
	sound_call Music_BattleVsRegis_Ch4_Type2
; ;Bar 9
	; note C_, 8
; Music_BattleVsRegis_Ch4_loop9:
	; note C_, 8
	; loopchannel 9, Music_BattleVsRegis_Ch4_loop9
	; notetype 8
	; note C_, 6
	; note __, 2
; ;Bar 14
	; note A_, 2
	; note A_, 2
;Bar 15
	drum_speed 12
Music_BattleVsRegis_Ch4_loop15:
	drum_note 1, 12
	drum_note 5, 4
	sound_loop 5, Music_BattleVsRegis_Ch4_loop15
;Bar 20
	drum_note 1, 12
	drum_speed 8
	drum_note 3, 4
	drum_note 3, 2
Music_BattleVsRegis_Ch4_loop:
;Bar 21
	drum_speed 12
Music_BattleVsRegis_Ch4_loop1:
	sound_call Music_BattleVsRegis_Ch4_Type3
	sound_loop 7, Music_BattleVsRegis_Ch4_loop1
	drum_note 1, 4
	drum_speed 8
	drum_note 3, 4
	drum_note 3, 2
;Bar 25
	drum_speed 12
Music_BattleVsRegis_Ch4_loop2:
	sound_call Music_BattleVsRegis_Ch4_Type3
	sound_loop 11, Music_BattleVsRegis_Ch4_loop2
	drum_speed 8
	drum_note 1, 4
	drum_note 3, 4
	drum_note 3, 4
;Bar 31
	drum_speed 12
Music_BattleVsRegis_Ch4_loop3:
	sound_call Music_BattleVsRegis_Ch4_Type3
	sound_loop 4, Music_BattleVsRegis_Ch4_loop3
;Bar 33
	drum_note 1, 8
	rest 16
	rest 4
;Bar 34
	drum_note 3, 4
;Bar 35
Music_BattleVsRegis_Ch4_loop4:
	sound_call Music_BattleVsRegis_Ch4_Type3
	sound_loop 7, Music_BattleVsRegis_Ch4_loop4
	drum_note 1, 4
	drum_speed 8
	drum_note 3, 4
	drum_note 3, 2
;Bar 39
	drum_speed 12
Music_BattleVsRegis_Ch4_loop5:
	sound_call Music_BattleVsRegis_Ch4_Type3
	sound_loop 4, Music_BattleVsRegis_Ch4_loop5

	sound_jump Music_BattleVsRegis_Ch4_loop

Music_BattleVsRegis_Ch4_Type1:
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 5, 4
	sound_ret

Music_BattleVsRegis_Ch4_Type2:
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 6, 4
	sound_ret

Music_BattleVsRegis_Ch4_Type3:
	drum_note 1, 4
	drum_note 3, 4
	sound_ret

; ============================================================================================================
