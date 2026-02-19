; Skyarrow Bridge (Pokémon BW/B2W2)
; Demix by TriteHexagon 

; 	dw Drum00
; 	dw Snare12
; 	dw Snare13
; 	dw Snare14
; 	dw Kick1
; 	dw Triangle5
; 	dw Snare5 ;was Drum20
; 	dw Drum27
; 	dw Drum28
; 	dw Drum29
; 	dw Snare9 ;was Drum00
; 	dw Kick2
; 	dw Crash2

Music_SkyarrowBridge:
	channel_count 4
	channel 1, Music_SkyarrowBridge_Ch1
	channel 2, Music_SkyarrowBridge_Ch2
	channel 3, Music_SkyarrowBridge_Ch3
	channel 4, Music_SkyarrowBridge_Ch4

; ============================================================================================================
Music_SkyarrowBridge_Ch1:
	tempo 169
	volume 7, 7
	duty_cycle $2
	stereo_panning TRUE, TRUE
	note_type 12, 7, 7
	pitch_offset $0002
	vibrato 18, 1, 4

;Ch3_Bar3:
	octave 4
	note A_, 8
;Ch3_Bar4:
	note F_, 8
	note G_, 8
;Ch3_Bar5:
	note D#, 8
	stereo_panning FALSE, TRUE
Music_SkyarrowBridge_Ch1_master:
	volume_envelope 7, 5
;Ch1_Bar3:
	octave 1
	note A#, 3
	note A#, 2
	rest 1
	note A#, 1
	note A#, 2
	rest 1
	note A_, 1
	note A_, 1
	rest 1
	note A_, 3
;Ch1_Bar4:
	note G_, 3
	note G_, 2
	rest 1
	note G_, 1
	octave 2
	note D_, 2
	rest 1
	octave 1
	note F_, 2
	rest 1
	note E_, 3
;Ch1_Bar5:
	note D#, 3
	note D#, 1
	rest 1
	note D#, 1
	note G_, 1
	note A#, 1
	rest 2
	octave 2
	note D#, 2
	rest 1
	octave 1
	note D#, 3
;Ch1_Bar6:
	note F_, 2
	octave 2
	note C_, 1
	octave 1
	note F_, 2
	note F_, 2
	note F_, 1
	note F_, 2
	octave 2
	note C_, 1
	note F_, 1
	rest 1
	octave 1
	note F_, 3
;Ch1_Bar7:
	note D#, 4
	note A#, 1
	note D#, 1
	rest 1
	note F_, 2
	rest 1
	note F_, 2
	octave 2
	note C_, 1
	octave 1
	note F_, 3
;Ch1_Bar8:
	octave 2
	note D_, 4
	octave 1
	note A_, 1
	octave 2
	note D_, 1
	rest 1
	octave 1
	note G_, 3
	note A#, 1
	octave 2
	note D_, 1
	rest 1
	octave 1
	note G_, 3
;Ch1_Bar9:
	octave 2
	note C_, 4
	note C_, 1
	note G_, 1
	rest 1
	note C_, 3
	octave 1
	note G_, 1
	octave 2
	note C_, 2
	octave 1
	note G_, 3
;Ch1_Bar10:
	note F_, 4
	note F_, 1
	octave 2
	note C_, 1
	rest 1
	octave 1
	note F_, 2
	note F_, 1
	octave 2
	note C_, 1
	note F_, 1
	rest 1
	octave 1
	note F_, 3
;Ch1_Bar11:
	octave 2
	note D#, 4
	note A#, 1
	note D#, 1
	rest 1
	note D_, 3
	octave 1
	note A#, 1
	octave 2
	note D_, 1
	rest 1
	octave 1
	note A#, 3
;Ch1_Bar12:
	octave 2
	note C_, 3
	octave 1
	note G_, 1
	rest 1
	octave 2
	note C_, 1
	rest 1
	octave 1
	note A#, 2
	rest 4
	note A#, 1
	octave 2
	note C_, 1
	note D_, 1
;Ch1_Bar13:
	sound_call Music_SkyarrowBridge_Ch1_bar_13_15_17
;Ch1_Bar14:
	octave 2
	note C_, 2
	octave 1
	note G_, 1
	octave 2
	note C_, 1
	rest 1
	note D#, 1
	rest 1
	octave 1
	note A#, 3
	note F_, 1
	note A#, 1
	rest 1
	note F_, 3
;Ch1_Bar15:
	sound_call Music_SkyarrowBridge_Ch1_bar_13_15_17
;Ch1_Bar16:
	sound_call Music_SkyarrowBridge_Ch1_bar_16_18
;Ch1_Bar17:
	sound_call Music_SkyarrowBridge_Ch1_bar_13_15_17
;Ch1_Bar18:
	sound_call Music_SkyarrowBridge_Ch1_bar_16_18
	sound_jump Music_SkyarrowBridge_Ch1_master
	sound_ret

Music_SkyarrowBridge_Ch1_bar_13_15_17:
	octave 2
	note D#, 4
	note A#, 1
	note D#, 1
	rest 1
	note D_, 3
	octave 1
	note A#, 1
	octave 2
	note D_, 1
	rest 1
	octave 1
	note A#, 3
	sound_ret

Music_SkyarrowBridge_Ch1_bar_16_18:
	octave 2
	note C_, 3
	octave 1
	note G_, 1
	rest 1
	octave 2
	note C_, 1
	rest 1
	octave 1
	note A#, 3
	note F_, 1
	note A#, 1
	rest 1
	note F_, 3
	sound_ret

; ============================================================================================================
Music_SkyarrowBridge_Ch2:
	stereo_panning TRUE, FALSE
	vibrato 18, 1, 4
	note_type 12, 7, 7
	duty_cycle $1
	pitch_offset $0001

;Ch2_Bar1:
	rest 16
;Ch2_Bar2:
	octave 3
	note D#, 1
	note C_, 1
	note D_, 1
	note D#, 1
	note F_, 1
	note D_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note A#, 1
	octave 4
	note C_, 1
	note C#, 1
Music_SkyarrowBridge_Ch2_master:
;Ch2_Bar3:
	note D_, 1
	octave 3
	note F_, 1
	note A#, 1
	octave 4
	note D_, 2
	octave 3
	note F_, 1
	note A#, 1
	octave 4
	note D_, 2
	note C_, 1
	octave 3
	note F_, 1
	note A_, 1
	octave 4
	note C_, 2
	octave 3
	note F_, 2
;Ch2_Bar4:
	octave 4
	note D_, 1
	octave 3
	note F_, 1
	note A#, 1
	octave 4
	note D_, 2
	octave 3
	note F_, 1
	note A#, 1
	octave 4
	note D_, 2
	note C_, 1
	octave 3
	note D#, 1
	note G#, 1
	octave 4
	note C_, 2
	octave 3
	note D_, 2
;Ch2_Bar5:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 1
	note F_, 1
	note G_, 1
	note A#, 2
	note D#, 1
	note G_, 3
	note A#, 2
;Ch2_Bar6:
	volume_envelope 6, 8
	note A#, 3
	volume_envelope 6, 7
	note A#, 2
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	volume_envelope 6, 8
	note C_, 6
	volume_envelope 6, 7
	note C_, 2
;Ch2_Bar7:
	octave 3
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 1
	note G_, 1
	note A#, 2
	note A_, 1
	note C_, 1
	note F_, 1
	note A_, 2
	note F_, 2
;Ch2_Bar8:
	note A_, 1
	note C_, 1
	note F_, 1
	note A_, 2
	note F_, 1
	note G_, 1
	note A_, 2
	note A#, 1
	note D_, 1
	note F_, 1
	note A#, 2
	note F_, 2
;Ch2_Bar9:
	volume_envelope 6, 8
	note G_, 3
	volume_envelope 6, 7
	note G_, 2
	octave 2
	note A#, 1
	octave 3
	note C_, 1
	note D_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note F_, 1
	note G_, 1
	note A_, 1
;Ch2_Bar10:
	volume_envelope 6, 8
	note A#, 4
	volume_envelope 6, 7
	note A#, 2
	note A#, 1
	note B_, 1
	octave 4
	volume_envelope 6, 8
	note C_, 2
	volume_envelope 6, 7
	note C_, 2
	octave 3
	note C_, 1
	note F_, 1
	note A_, 1
	octave 4
	note C_, 1
;Ch2_Bar11:
	octave 3
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 1
	note G_, 1
	note A#, 2
	note D_, 1
	note F_, 1
	note A#, 1
	note D_, 2
	note A#, 2
;Ch2_Bar12:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 2
	volume_envelope 6, 8
	note D_, 7
	volume_envelope 6, 7
	note D_, 2
;Ch2_Bar13:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 1
	note G_, 1
	note A#, 2
	note D_, 1
	note F_, 1
	note A#, 1
	note D_, 2
	note A#, 2
;Ch2_Bar14:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note A_, 2
	note A#, 2
	note D_, 1
	note D#, 1
	note F_, 1
	note D_, 2
	note F_, 2
;Ch2_Bar15:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D_, 1
	note F_, 1
	note A#, 2
	octave 2
	note A#, 1
	octave 3
	note F_, 1
	note A#, 1
	note D_, 2
	note A#, 2
;Ch2_Bar16:
	note G_, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 2
	note D_, 2
	note D_, 1
	note D#, 1
	note F_, 1
	note G_, 2
	note F_, 2
;Ch2_Bar17:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D_, 1
	note F_, 1
	note A#, 2
	note D_, 1
	note F_, 1
	note A#, 1
	note D_, 2
	note A#, 2
;Ch2_Bar18:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note A_, 2
	note A#, 2
	note D_, 1
	note D#, 1
	note F_, 1
	note D_, 2
	note F_, 2
	sound_jump Music_SkyarrowBridge_Ch2_master
	sound_ret

; ============================================================================================================
Music_SkyarrowBridge_Ch3:
	stereo_panning TRUE, TRUE
	note_type 12, 2, 5
	;vibrato $00, $00

	octave 5
	note F_, 4
	note C_, 4
	octave 4
	note B_, 4
	octave 5
	note F_, 4
;Ch1_Bar2:
	note D#, 4
	octave 4
	note A#, 4
	note G_, 4
	note A_, 4
Music_SkyarrowBridge_Ch3_master:
	vibrato 8, 1, 5
;Bar3
	octave 5
	note_type 6, 1, 3
	note F_, 7
	rest 1
	note_type 12, 1, 3

	note F_, 1
	note D#, 1
	rest 1
	note D_, 3
	note F_, 2
	note G_, 1
	rest 1
	note A_, 1
	note_type 6, 1, 3
	note G_, 1
	note A_, 1
	note_type 12, 1, 3
;Bar4
	note A#, 4
	note A_, 1
	note G_, 1
	rest 1
	note D_, 6
	rest 1
	note C_, 1
	note D_, 1
;Bar5
	note C_, 1
	octave 4
	note A#, 1
	rest 1

	note A#, 3
	note G_, 1
	note_type 6, 1, 3
	note G_, 1
	note A_, 1
	note_type 12, 1, 3
	note A#, 3
	octave 5
	note C_, 2
	rest 1
	note D_, 1
	rest 1
;Bar6
	note D_, 6
	note D#, 1
	note D_, 1
	note C_, 7
	rest 1
;Bar7
	octave 4
	note A#, 3
	rest 1
	note A#, 1
	octave 5
	note D_, 1
	rest 1
	note C_, 5
	note G_, 4
;Bar8
	note F_, 3
	rest 1
	note G_, 1
	note A_, 1
	rest 1
	note A#, 6
	rest 1
	note D#, 1
	note D_, 1
;Bar9
	note D#, 1
	note D_, 1
	rest 1

	octave 4
	note A#, 3
	note G_, 1
	rest 1
	note A#, 3
	octave 5
	note C_, 2
	rest 1
	note D_, 1
	rest 1
;Bar10
	note D_, 6
	note D#, 1
	note_type 6, 1, 3
	note D_, 1
	rest 1
	note_type 12, 1, 3
	note C_, 7
	octave 4
	vibrato 0, 0, 0
	note_type 6, 2, 5
	note G_, 1
	note A_, 1
	note_type 12, 2, 5
;Bar11
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note_type 6, 2, 5
	note A#, 1
	rest 1
	note_type 12, 2, 5
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note F_, 3
	note A#, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
;Bar12
	octave 5
	note C_, 1
	rest 1
	note C_, 1
	octave 4
	note A#, 1

	rest 1
	note A_, 1
	rest 1
	note A#, 1

	rest 1
	note D_, 1
	note D#, 1
	note F_, 1

	note D_, 1
	rest 1
	note F_, 1
	rest 1
;Bar13
	note A#, 1
	rest 1
	note F_, 1
	note A#, 1

	rest 1
	octave 5
	note C_, 1
	rest 1
	octave 4
	note A#, 1

	rest 1
	octave 5
	note F_, 3

	note C#, 1
	note C_, 1
	octave 4
	note A#, 1
	rest 1
;Bar14
	octave 5
	note C_, 1
	rest 1
	note C_, 1
	octave 4
	note A#, 1

	rest 1
	note A_, 1
	rest 1
	note A#, 1

	rest 1
	note F_, 3
	note D_, 3
	vibrato 8, 1, 5
	note_type 6, 1, 3
	note G_, 1
	note A_, 1
;Bar15
	note_type 12, 1, 3
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note_type 6, 1, 3
	note A#, 1
	rest 1
	note_type 12, 1, 3
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note F_, 3
	note A#, 1
	rest 1
	octave 5
	note D_, 1
	rest 1
;Bar16
	note C_, 1
	rest 1
	note C_, 1
	octave 4
	note A#, 1
	rest 1
	note A_, 1
	rest 1
	note A#, 1
	rest 1
	note F_, 3
	note G_, 1
	note F#, 1
	note F_, 1
	rest 1
;Bar17
	note A#, 1
	rest 1
	note F_, 1
	note A#, 1
	rest 1
	octave 5
	note C_, 1
	rest 1
	octave 4
	note A#, 1
	rest 1
	octave 5
	note F_, 3
	note G_, 1
	rest 1
	note A_, 1
	note_type 6, 1, 3
	note G_, 1
	note A_, 1
	note_type 12, 1, 3
;Bar18
	note A#, 1
	rest 1
	note F_, 1
	note A#, 1
	rest 1
	octave 6
	note C_, 1
	rest 1
	octave 5
	note A#, 7
	volume_envelope 2, 3
	note A#, 2
	volume_envelope 1, 3
	sound_jump Music_SkyarrowBridge_Ch3_master
	sound_ret

; ============================================================================================================
Music_SkyarrowBridge_Ch4:
	drum_speed 12
	stereo_panning TRUE, TRUE
	toggle_noise 6

	sound_call Music_SkyarrowBridge_Ch4_Intro
;Ch4_Bar2:
	drum_note 6, 8
	drum_note 12, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 2
Music_SkyarrowBridge_Ch4_master:
;Ch4_Bar3:
	sound_call Music_SkyarrowBridge_Ch4_Bar3_1H
	sound_call Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar4:
	sound_call Music_SkyarrowBridge_Ch4_Bar4_1H
	sound_call Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar5:
	sound_call Music_SkyarrowBridge_Ch4_Bar4_1H
	sound_call Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar6:
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 2
	drum_note 11, 1
	drum_note 11, 2
	drum_note 3, 1
	drum_note 10, 2
	drum_note 3, 1
	drum_note 11, 1
	drum_note 3, 1
	drum_note 3, 1
;Ch4_Bar7:
	drum_note 6, 3
	drum_note 11, 1
	drum_note 3, 3
	drum_note 11, 1
	sound_call Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar8:
	sound_call Music_SkyarrowBridge_Ch4_Bar4_1H
	drum_note 11, 1
	drum_note 3, 3
	drum_note 3, 2
	drum_note 10, 2
;Ch4_Bar9:
	sound_call Music_SkyarrowBridge_Ch4_Bar3_1H
	sound_call Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar10:
	sound_call Music_SkyarrowBridge_Ch4_Bar4_1H
	drum_note 11, 1
	drum_note 3, 1
	drum_note 10, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 3, 1
;Ch4_Bar11:
	sound_call Music_SkyarrowBridge_Ch4_Bar3_1H
	sound_call Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar12:
	drum_note 11, 3
	drum_note 3, 1
	drum_note 11, 1
	drum_note 10, 2
	drum_note 10, 5
	drum_note 3, 1
	drum_note 3, 1
	drum_note 10, 2
;Ch4_Bar13:
	sound_call Music_SkyarrowBridge_Ch4_Bar3_1H
	sound_call Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar14:
	drum_note 11, 2
	drum_note 11, 1
	drum_note 10, 2
	drum_note 11, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_note 3, 1
	drum_note 10, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 3, 1
;Ch4_Bar15:
	sound_call Music_SkyarrowBridge_Ch4_Bar3_1H
	sound_call Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar16:
	drum_note 11, 2
	drum_note 11, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_note 3, 1
	drum_note 10, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 2
;Ch4_Bar17:
	sound_call Music_SkyarrowBridge_Ch4_Bar3_1H
	drum_note 11, 2
	drum_note 6, 3
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
;Ch4_Bar18:
	drum_note 12, 3
	drum_note 11, 2
	drum_note 11, 2
	drum_note 6, 4
	drum_note 11, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 2
	sound_jump Music_SkyarrowBridge_Ch4_master
	sound_ret

Music_SkyarrowBridge_Ch4_Intro:
	drum_note 8, 1
	sound_loop 16, Music_SkyarrowBridge_Ch4_Intro
	sound_ret

Music_SkyarrowBridge_Ch4_Bar4_1H:
	drum_note 11, 3
	drum_note 11, 1
	drum_note 3, 3
	drum_note 11, 1
	sound_ret

Music_SkyarrowBridge_Ch4_Bar4_2H:
	drum_note 11, 2
	drum_note 10, 2
	drum_note 3, 2
	drum_note 11, 2
	sound_ret

Music_SkyarrowBridge_Ch4_Bar3_1H:
	drum_note 12, 3
	drum_note 11, 1
	drum_note 3, 3
	drum_note 11, 1
	sound_ret
	