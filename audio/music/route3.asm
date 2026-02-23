; Route 10 (Pokémon Black & White)
; Demixed by TriteHexagon

; dn 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 3, 3, 12, 12, 12, 12, 10, 10, 9, 9, 8, 8, 9, 9, 10, 10, 12, 12

Music_Route10:
	channel_count 4
	channel 1, Music_Route10_Ch1
	channel 2, Music_Route10_Ch2
	channel 3, Music_Route10_Ch3
	channel 4, Music_Route10_Ch4

; ============================================================================================================
Music_Route10_Ch1:
	tempo 137 ;134
	volume 7, 7
	stereo_panning TRUE, TRUE
	note_type 12, 6, 8
    duty_cycle $2
	vibrato 0, 4, 8

;Ch1_Bar1:
	octave 2
	note C_, 14
    note_type 6, 6, 8
	note G_, 1
    rest 3
    note_type 12, 6, 8
;Ch1_Bar2:
	octave 3
	note C_, 16
;Ch1_Bar3:
	octave 2
	note C_, 15
    rest 1
;Ch1_Bar4:
	note C_, 4
	note_type 6, 6, 8
	note G_, 1
    rest 3
    note_type 12, 6, 8
	octave 3
	note C_, 4
	octave 2
	note G_, 6
Music_Route10_Ch1_master:
;Ch1_Bar5-20:
	volume_envelope 6, 8
    sound_call Music_Route10_Ch1_Bar5
    volume_envelope 6, 8
    sound_call Music_Route10_Ch1_Bar5
    volume_envelope 6, 8
;Ch1_Bar21-25:
	sound_call Music_Route10_Ch1_Bar21
;Ch1_Bar26:
	octave 1
	note A#, 6
	octave 2
	note F_, 4
	octave 1
	note A#, 2
	octave 2
	note D_, 1
    rest 1
	octave 1
	note A#, 2
;Ch1_Bar27:
	note D#, 6
	note A#, 6
	note D#, 4
;Ch1_Bar28:
	note G_, 4
	note_type 6, 6, 8
	note D_, 1
    rest 3
    note_type 12, 6, 8
	note G_, 4
	octave 2
	note D_, 4
	octave 1
	note G_, 2
;Ch1_Bar29-33:
    sound_call Music_Route10_Ch1_Bar21
;Ch1_Bar34:
	octave 1
	note G_, 6
	octave 2
	note D_, 4
	octave 1
	note G_, 2
	note A#, 1
    rest 1
	octave 2
	note D_, 2
;Ch1_Bar35:
	octave 1
	note G#, 6
	octave 2
	note D#, 4
	octave 1
	note G#, 2
	octave 2
	note C_, 1
    rest 1
	note D#, 2
;Ch1_Bar36:
	octave 1
	note A#, 4
	octave 2
	note_type 6, 6, 8
	note F_, 1
    rest 3
    note_type 12, 6, 8
	note A#, 4
	note_type 6, 6, 8
	note F_, 1
    rest 3
    note_type 12, 6, 8
	octave 1
	note A#, 4
;Ch1_Bar37:
	octave 2
	note C_, 14
    note_type 6, 6, 8
	note G_, 1
    rest 3
    note_type 12, 6, 8
;Ch1_Bar38:
	octave 3
	note C_, 16
;Ch1_Bar39:
	octave 2
	note C_, 15
    rest 1
;Ch1_Bar40:
	note C_, 4
	note_type 6, 6, 8
	note G_, 1
    rest 3
    note_type 12, 6, 8
	octave 3
	note C_, 4
	octave 2
	note G_, 6
    sound_jump Music_Route10_Ch1_master
	sound_ret

Music_Route10_Ch1_Bar5:
;Ch1_Bar5:
    note C_, 6
	note G_, 4
	note D#, 2
	note F_, 1
    rest 1
	note G_, 1
    rest 1
;Ch1_Bar6:
	octave 1
	note A#, 6
	octave 2
	note F_, 4
	octave 1
	note A#, 2
	octave 2
	note C_, 1
    rest 1
	note D_, 2
;Ch1_Bar7:
	octave 1
	note G#, 6
	octave 2
	note D#, 4
	octave 1
	note G#, 2
	note A#, 1
    rest 1
	octave 2
	note C_, 2
;Ch1_Bar8:
	octave 1
	note G_, 6
	octave 2
	note D#, 4
	note A#, 2
	note G_, 2
	octave 1
	note A#, 2
;Ch1_Bar9:
	note F_, 6
	octave 2
	note C_, 4
	octave 1
	note G#, 2
	note A#, 1
    rest 1
	octave 2
	note C_, 1
    rest 1
;Ch1_Bar10:
	note D#, 6
	octave 3
	note C_, 4
	octave 2
	note D#, 2
	note F_, 1
    rest 1
	note G_, 1
    rest 1
;Ch1_Bar11:
	note D_, 6
	note A_, 4
	note D_, 2
	note E_, 1
    rest 1
	note F#, 2
;Ch1_Bar12:
	octave 1
	note G_, 6
	octave 2
	note D_, 4
	note G_, 2
	note D_, 2
	octave 1
	note B_, 2
    sound_ret

Music_Route10_Ch1_Bar21:
    ;Ch1_Bar21:
	note F_, 6
	octave 2
	note C_, 4
	octave 1
	note F_, 2
	note G#, 1
    rest 1
	octave 2
	note C_, 2
;Ch1_Bar22:
	octave 1
	note A#, 4
	octave 2
	note_type 6, 6, 8
	note D_, 1
    rest 3
    note_type 12, 6, 8
	note F_, 4
	octave 1
	note A#, 2
	octave 2
	note D_, 1
    rest 1
	note F_, 2
;Ch1_Bar23:
	octave 1
	note D#, 6
	note A#, 4
	note D#, 2
	note F#, 1
    rest 1
	note A#, 2
;Ch1_Bar24:
	note G#, 4
	octave 2
    note_type 6, 6, 8
	note D#, 1
    rest 3
    note_type 12, 6, 8
	octave 1
	note G#, 4
	note G_, 4
	note G#, 1
    rest 1
;Ch1_Bar25:
	note F_, 6
	octave 2
	note C_, 4
	octave 1
	note F_, 2
	note G#, 1
    rest 1
	octave 2
	note C_, 2
    sound_ret

; ============================================================================================================
Music_Route10_Ch2:
	duty_cycle $1
	stereo_panning TRUE, TRUE
	note_type 12, 6, 8
    pitch_offset $0001
	;vibrato $12, $14
    octave 3
;Ch2_Bar1:
	transpose 0, 3
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar2:
	transpose 0, 2
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar3:
	transpose 0, 3
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar4:
	transpose 0, 5
	sound_call Music_Route10_Ch2_C_
Music_Route10_Ch2_master:
;Ch2_Bar5:
	transpose 0, 7
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar6:
	transpose 0, 7
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar7:
	transpose 0, 7
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar8:
	transpose 0, 5
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar9:
	transpose 0, 5
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar10:
	transpose 0, 3
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar11:
	transpose 0, 6
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar12:
	transpose 0, 2
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar13:
	transpose 0, 7
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar14:
	transpose 0, 7
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar15:
	transpose 0, 7
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar16:
	transpose 0, 5
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar17:
	transpose 0, 5
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar18:
	transpose 0, 3
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar19:
	transpose 0, 6
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar20:
	transpose 0, 2
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar21:
	transpose 0, 5
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar22:
	transpose 0, 2
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar23:
	transpose 0, 3
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar24:
	transpose 0, 0
	sound_call Music_Route10_Ch2_Bar32
;Ch2_Bar25:
	transpose 0, 5
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar26:
	transpose 0, 2
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar27:
	transpose 0, 3
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar28:
	transpose 0, 2
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar29:
	transpose 0, 5
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar30:
	transpose 0, 2
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar31:
	transpose 0, 3
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar32:
	transpose 0, 0
	sound_call Music_Route10_Ch2_Bar32
;Ch2_Bar33:
	transpose 0, 3
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar34:
	transpose 0, 5
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar35:
	transpose 0, 7
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar36:
	transpose 0, 7
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar37:
	transpose 0, 3
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar38:
	transpose 0, 2
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar39:
	transpose 0, 3
	sound_call Music_Route10_Ch2_C_
;Ch2_Bar40:
	transpose 0, 5
	sound_call Music_Route10_Ch2_C_
	sound_jump Music_Route10_Ch2_master
	sound_ret

Music_Route10_Ch2_C_:
	volume_envelope 6, 2
    note C_, 2
    note_type 3, 6, 2
	note C_, 4
	note C_, 4
	note C_, 8
    note_type 12, 6, 7
	note C_, 4
	note C_, 4
	note C_, 2
    sound_ret

Music_Route10_Ch2_Bar32:
	volume_envelope 6, 2
	note F#, 2
    note_type 3, 6, 2
	note F#, 4
	note F#, 4
	note F#, 8
    note_type 12, 6, 7
	note D#, 4
	note D#, 4
	note D#, 2
	sound_ret

; ============================================================================================================
Music_Route10_Ch3:
	stereo_panning TRUE, TRUE
	;vibrato $00, $13
	note_type 12, 1, 0
	octave 5

;Ch2_Bar1:
	note D#, 16
;Ch2_Bar2:
	note D_, 16
;Ch2_Bar3:
	note C_, 16
;Ch2_Bar4:
	note D_, 15
	note_type 6, 1, 11
    note D#, 1
    note F_, 1
    note_type 12, 1, 11
Music_Route10_Ch3_master:
;Ch3_Bar5:
    octave 4
	note G_, 13
    volume_envelope 2, 11
    note G_, 2
    volume_envelope 1, 11
    note_type 6, 1, 11
    rest 1
    note C_, 1
    note_type 12, 1, 11
;Ch3_Bar6:
    octave 5
	note D_, 12
    volume_envelope 2, 11
    note D_, 2
    volume_envelope 1, 11
	note D#, 1
	note D_, 1
;Ch3_Bar7:
    octave 4
	note G_, 12
    volume_envelope 2, 11
    note G_, 2
    volume_envelope 1, 11
	note F_, 1
	note G_, 1
;Ch3_Bar8:
    note A#, 11
    volume_envelope 2, 11
    note A#, 2
    volume_envelope 1, 11
    rest 1
	note G#, 1
	note G_, 1
;Ch3_Bar9:
    note G#, 6
	note A#, 6
	octave 5
	note C_, 3
    note_type 6, 1, 11
    rest 1
    note D_, 1
    note_type 12, 1, 11
;Ch3_Bar10:
    note D#, 6
	note C_, 6
	note D#, 3
    note_type 3, 1, 11
    note C_, 1
    note D_, 1
    note D#, 1
    note F_, 1
    note_type 12, 1, 11
;Ch3_Bar11:
    note F#, 6
	note D#, 6
	note D_, 4
;Ch3_Bar12:
    note C_, 6
	octave 4
	note B_, 7
    rest 1
    volume_envelope 1, 3
	octave 5
	note D#, 1
    note_type 3, 1, 3
	note F_, 3
    note G_, 1
;Ch3_Bar13:
    note G#, 1
    note_type 12, 1, 3
    note G_, 15
    note_type 3, 1, 3
    rest 1
    note C_, 1
    note D_, 1
    note_type 12, 1, 3
;Ch3_Bar14:check
    octave 6
    note D_, 11
    volume_envelope 2, 3
    note D_, 3
	volume_envelope 1, 3
	note D#, 1
    note_type 6, 1, 3
    note D_, 1
	octave 5
	note G_, 1
;Ch3_Bar15:check
    note G#, 1
    volume_envelope 1, 3
    note G_, 1
    note_type 12, 1, 3
    note G_, 10
    volume_envelope 2, 3
    note G_, 3
	note_type 6, 1, 3
	note F_, 2
	note G_, 1
    rest 1
;Ch3_Bar16:
    note A#, 1
    octave 6
	note C_, 1
	octave 5
    note_type 12, 1, 3
    note A#, 10
    volume_envelope 2, 3
    note A#, 3
	volume_envelope 1, 3
	note G#, 1
	note G_, 1
;Ch3_Bar17:
    note_type 6, 1, 3
    note G#, 1
    note A#, 1
    note_type 12, 1, 3
	note G#, 5
	note A#, 6
	octave 6
	note C_, 4
;Ch3_Bar18:
    note D#, 6
	note C_, 6
	note D#, 4
;Ch3_Bar19:
    note_type 3, 1, 3
    note F#, 2
    note A_, 2
    note_type 12, 1, 3
	note F#, 5
	note D#, 6
	note D_, 4
;Ch3_Bar20:
    note C_, 6
	octave 5
	note B_, 1
	octave 6
	note C_, 1
    note_type 6, 1, 3
    note D_, 1
    note D#, 1
    note_type 12, 1, 3
	note D_, 5
    volume_envelope 1, 11
	octave 5
	note C_, 1
	note D_, 1
;Ch3_Bar21:
    volume_envelope 1, 11
    note D#, 6
	note C_, 5
    note_type 6, 1, 11
    note F_, 1
	note F#, 1
    note_type 12, 1, 11
	note G_, 4
;Ch3_Bar22:
    note F_, 5
    note_type 3, 1, 11
    note F_, 2
    note C_, 1
    note C#, 1
    note_type 12, 1, 11
	note D_, 6
	note C_, 4
;Ch3_Bar23:
    octave 4
	note A#, 6
	note G_, 5
	octave 5
    note_type 6, 1, 11
    note C_, 1
	note C#, 1
    note_type 12, 1, 11
	note D_, 4
;Ch3_Bar24:
    note D_, 6
	note C_, 8
	octave 4
	note G#, 1
	note G_, 1
;Ch3_Bar25:
    note G#, 6
	note A#, 6
	octave 5
	note C_, 3
    octave 4
    note_type 6, 1, 11
    note G_, 1
    note G#, 1
    note_type 12, 1, 11
;Ch3_Bar26:
	note A#, 6
	note G#, 6
	note A#, 4
;Ch3_Bar27:
    note G_, 6
	note D#, 6
	note F_, 3
    note_type 6, 1, 11
    note D#, 1
    note F_, 1
    note_type 12, 1, 11
;Ch3_Bar28:
    note G_, 11
    volume_envelope 2, 11
    note G_, 2
    volume_envelope 1, 11
    rest 1
	octave 5
	note C_, 1
	note D_, 1
;Ch3_Bar29:
    note D#, 6
	note C_, 5
    note_type 6, 1, 11
    note F_, 1
	note F#, 1
    note_type 12, 1, 11
	note G_, 4
;Ch3_Bar30:
    note F_, 5
    note_type 6, 1, 11
    note C_, 1
	note C#, 1
    note_type 12, 1, 11
	note D_, 6
	note C_, 4
;Ch3_Bar31:
    octave 4
	note A#, 6
	note G_, 5
	octave 5
	note_type 6, 1, 11
    note C_, 1
	note C#, 1
    note_type 12, 1, 11
	note D_, 4
;Ch3_Bar32:
    note D_, 6
	note C_, 7
    rest 1
	note C_, 1
	note D_, 1
;Ch3_Bar33:
    note D#, 6
	note C_, 5
    note_type 6, 1, 11
    note F_, 1
	note F#, 1
    note_type 12, 1, 11
	note G_, 4
;Ch3_Bar34:
    note F_, 6
	note D#, 6
	note D_, 4
;Ch3_Bar35:
    volume_envelope 1, 11
    note C_, 16
;Ch3_Bar36:
    volume_envelope 1, 11
    note C_, 11
    rest 1
	octave 4
	note A#, 4
	octave 5
;Ch3_Bar37:
    volume_envelope 1, 11
	note C_, 16
;Ch3_Bar38:
    volume_envelope 1, 11
	note C_, 12
	note G_, 3
    note_type 6, 1, 11
    note A#, 1
	note B_, 1
    note_type 12, 1, 11
;Ch3_Bar39:
    octave 6
	note C_, 12
    octave 4
    note G_, 4
;Ch3_Bar40:
    note F_, 6
	note D#, 6
    note D_, 3
    octave 4
    note_type 6, 1, 11
    note D#, 1
    note F_, 1
    note_type 12, 1, 11
	sound_jump Music_Route10_Ch3_master
	sound_ret

; ============================================================================================================
Music_Route10_Ch4:
	drum_speed 12
	toggle_noise $3

Music_Route10_Ch4_master:
;Ch4_Bar1:
Music_Route10_Ch4_Bar1:
    stereo_panning TRUE, FALSE
	drum_note 1, 4
    stereo_panning FALSE, TRUE
	drum_note 3, 2
    stereo_panning TRUE, FALSE
	drum_note 1, 4
	drum_note 1, 2
    stereo_panning FALSE, TRUE
	drum_note 3, 2
    stereo_panning TRUE, FALSE
	drum_note 1, 2
	sound_loop 2, Music_Route10_Ch4_Bar1

Music_Route10_Ch4_Bar3:
;Ch4_Bar3:
    stereo_panning TRUE, FALSE
	drum_note 1, 3
    stereo_panning FALSE, TRUE
    drum_note 11, 1
	drum_note 3, 2
    stereo_panning TRUE, FALSE
	drum_note 1, 4
	drum_note 1, 2
    stereo_panning FALSE, TRUE
	drum_note 3, 2
    stereo_panning TRUE, FALSE
	drum_note 1, 2
	sound_loop 2, Music_Route10_Ch4_Bar3
;Ch4_Bar5:
    stereo_panning TRUE, TRUE
	sound_call Music_Route10_Ch4_cymbal
;Ch4_Bar6:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar7:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar8:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar9:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar10:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar11:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar12:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar13:
	sound_call Music_Route10_Ch4_cymbal
;Ch4_Bar14:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar15:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar16:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar17:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar18:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar19:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar20:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar21:
	sound_call Music_Route10_Ch4_cymbal
;Ch4_Bar22:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar23:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar24:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar25:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar26:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar27:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar28:
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 3
	drum_note 3, 1
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2
;Ch4_Bar29:
	sound_call Music_Route10_Ch4_cymbal
;Ch4_Bar30:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar31:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar32:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar33:
	sound_call Music_Route10_Ch4_cymbal
;Ch4_Bar34:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar35:
	sound_call Music_Route10_Ch4_default
;Ch4_Bar36:
	sound_call Music_Route10_Ch4_default
	sound_jump Music_Route10_Ch4_master
	sound_ret

Music_Route10_Ch4_default:
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 4
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2
	sound_ret

Music_Route10_Ch4_cymbal:
	drum_note 12, 4
	drum_note 3, 2
	drum_note 11, 4
	drum_note 11, 2
	drum_note 3, 2
	drum_note 11, 2
	sound_ret
	