;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_CynthiaEncounter:
	channel_count 3
	channel 1, Music_CynthiaEncounter_Ch1
	channel 2, Music_CynthiaEncounter_Ch2
	channel 3, Music_CynthiaEncounter_Ch3

Music_CynthiaEncounter_Ch1:
	stereo_panning FALSE, TRUE
	volume 7, 7
	duty_cycle $3
	vibrato 8, 1, 4
	note_type 8, 10, 4
	tempo 95
;Bar 1
	rest 6
	octave 3
	note B_, 12
	note B_, 12
;Bar 2
	note B_, 12
	note A#, 10
;Bar 3
	volume_envelope 3, 8
	note A#, 2
Music_CynthiaEncounter_Ch1_loop:
	volume_envelope 8, 3
	note A#, 2
	volume_envelope 3, 8
	note A#, 4
	volume_envelope 8, 3
	note G_, 2
	volume_envelope 3, 8
	note G_, 4
	volume_envelope 8, 3
	note E_, 2
	volume_envelope 3, 8
	note E_, 4
;Bar 4
	volume_envelope 8, 3
	note C#, 2
	volume_envelope 3, 8
	note C#, 4
	octave 2
	volume_envelope 8, 3
	note E_, 2
	volume_envelope 3, 8
	note E_, 4
	volume_envelope 8, 3
	note A#, 2
	volume_envelope 3, 8
	note A#, 4
	octave 3
	volume_envelope 8, 3
	note F#, 2
	volume_envelope 3, 8
	note F#, 4
	rest 6
;Bar 5
	volume_envelope 10, 4
	sound_call Music_CynthiaEncounter_Ch1_Part1_B_
	sound_call Music_CynthiaEncounter_Ch1_Part1_As
;Bar 6
	sound_call Music_CynthiaEncounter_Ch1_Part1_B_
	sound_call Music_CynthiaEncounter_Ch1_Part1_B_
;Bar 7
	octave 4
	sound_call Music_CynthiaEncounter_Ch1_Part1_D_
	sound_call Music_CynthiaEncounter_Ch1_Part1_Cs
;Bar 8
	sound_call Music_CynthiaEncounter_Ch1_Part1_E_
	sound_call Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 9
	sound_call Music_CynthiaEncounter_Ch1_Part1_E_
	sound_call Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 10
	sound_call Music_CynthiaEncounter_Ch1_Part1_D_
	sound_call Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 11
	sound_call Music_CynthiaEncounter_Ch1_Part1_E_
	sound_call Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 12
	sound_call Music_CynthiaEncounter_Ch1_Part1_Cs
	sound_call Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 13
	sound_call Music_CynthiaEncounter_Ch1_Part1_Cs
	sound_call Music_CynthiaEncounter_Ch1_Part1_Cs
;Bar 14
	octave 3
	sound_call Music_CynthiaEncounter_Ch1_Part1_As
	sound_call Music_CynthiaEncounter_Ch1_Part1_As
;Bar 15
	sound_call Music_CynthiaEncounter_Ch1_Part1_Fs
	sound_call Music_CynthiaEncounter_Ch1_Part1_Fs
;Bar 16
	sound_call Music_CynthiaEncounter_Ch1_Part1_Fs
	sound_call Music_CynthiaEncounter_Ch1_Part1_Fs
;Bar 17
	rest 4
	sound_call Music_CynthiaEncounter_Ch1_Bar17_19
;Bar 19
	volume_envelope 13, 2
	note D_, 2
	note D_, 2
	note D_, 2
	volume_envelope 13, 4
	note A#, 6
;Bar 20
	volume_envelope 3, 4
	note A#, 2
	rest 8
	volume_envelope 10, 4
	sound_call Music_CynthiaEncounter_Ch1_Bar17_19
;Bar 22
	volume_envelope 3, 8
	note C#, 4
	volume_envelope 8, 3
	note D_, 2
	volume_envelope 3, 8
	note D_, 4
	volume_envelope 8, 3
	note E_, 2
;Bar 23
	volume_envelope 13, 2
	note D_, 2
	note D_, 2
	note D_, 2
	volume_envelope 13, 4
	note C#, 6
	volume_envelope 13, 3
	note A_, 2
	note A_, 2
	note A_, 2
	volume_envelope 13, 4
	note G#, 6
;Bar 24
	octave 4
	volume_envelope 13, 2
	note D_, 2
	note D_, 2
	note D_, 2
	volume_envelope 13, 4
	note C#, 6
	octave 3
	note D_, 6
	octave 2
	note A#, 6
;Bar 25
Music_CynthiaEncounter_Ch1_silence:
	rest 16
	sound_loop 12, Music_CynthiaEncounter_Ch1_silence
	rest 6
	sound_jump Music_CynthiaEncounter_Ch1_loop

Music_CynthiaEncounter_Ch1_Part1_B_:
	volume_envelope 10, 2
	note B_, 2
	volume_envelope 10, 3
	note B_, 10
	sound_ret

Music_CynthiaEncounter_Ch1_Part1_As:
	volume_envelope 10, 2
	note A#, 2
	volume_envelope 10, 3
	note A#, 10
	sound_ret

Music_CynthiaEncounter_Ch1_Part1_D_:
	volume_envelope 10, 2
	note D_, 2
	volume_envelope 10, 3
	note D_, 10
	sound_ret

Music_CynthiaEncounter_Ch1_Part1_Cs:
	volume_envelope 10, 2
	note C#, 2
	volume_envelope 10, 3
	note C#, 10
	sound_ret

Music_CynthiaEncounter_Ch1_Part1_E_:
	volume_envelope 10, 2
	note E_, 2
	volume_envelope 10, 3
	note E_, 10
	sound_ret

Music_CynthiaEncounter_Ch1_Part1_Fs:
	volume_envelope 10, 2
	note F#, 2
	volume_envelope 10, 3
	note F#, 10
	sound_ret

Music_CynthiaEncounter_Ch1_Part1_G_:
	volume_envelope 10, 2
	note G_, 2
	volume_envelope 10, 3
	note G_, 10
	sound_ret

Music_CynthiaEncounter_Ch1_Bar17_19:
	note G_, 2;
	volume_envelope 3, 8
	note G_, 4
	volume_envelope 8, 3
	note F#, 2
	volume_envelope 3, 8
	note F#, 4
	volume_envelope 8, 3
	note E_, 2
;bar18
	volume_envelope 3, 8
	note E_, 4
	volume_envelope 8, 3
	note D_, 2
	volume_envelope 3, 8
	note D_, 4
	volume_envelope 8, 3
	note C#, 2
	volume_envelope 3, 8
	note C#, 4
	octave 2
	volume_envelope 8, 3
	note B_, 2
	volume_envelope 3, 8
	note B_, 4
	volume_envelope 8, 3
	note A#, 2
;bar19
	volume_envelope 3, 8
	note A#, 4
	volume_envelope 8, 3
	note B_, 2
	volume_envelope 3, 8
	note B_, 4
	octave 3
	volume_envelope 8, 3
	note C#, 2
	sound_ret

; ============================================================================================================

Music_CynthiaEncounter_Ch2:
	duty_cycle $1
	stereo_panning TRUE, FALSE
	vibrato 8, 1, 4
	note_type 8, 10, 4
;Bar 1
	volume_envelope 4, 4
	rest 6
	octave 4
	volume_envelope 15, 4
	note F#, 12
	note G_, 12
;Bar 2
	note F_, 12
	volume_envelope 14, 4
	note F#, 6
;Bar 3
	rest 6
	octave 5
	volume_envelope 12, 4
	note E_, 2
	octave 4
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	note F#, 2
	note A#, 2
	note C#, 2
	note F#, 2
	note G_, 2
	note F#, 2
;Bar 4
	note E_, 2
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 2
	note A#, 2
	note F#, 2
	note G_, 2
	note A_, 2
Music_CynthiaEncounter_Ch2_loop:
	octave 4
	note F#, 2
	note E_, 2
	note C#, 2
	octave 3
	note A#, 2
;Bar 5
	rest 6
	octave 4
	sound_call Music_CynthiaEncounter_Ch1_Part1_D_
	sound_call Music_CynthiaEncounter_Ch1_Part1_Cs
;Bar 6
	sound_call Music_CynthiaEncounter_Ch1_Part1_E_
	sound_call Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 7
	sound_call Music_CynthiaEncounter_Ch1_Part1_Fs
	sound_call Music_CynthiaEncounter_Ch1_Part1_E_
;Bar 8
	sound_call Music_CynthiaEncounter_Ch1_Part1_G_
	sound_call Music_CynthiaEncounter_Ch1_Part1_Fs
;Bar 9
	volume_envelope 10, 2
	note A_, 2
	volume_envelope 10, 3
	note A_, 10
	sound_call Music_CynthiaEncounter_Ch1_Part1_G_
;Bar 10
	sound_call Music_CynthiaEncounter_Ch1_Part1_Fs
	sound_call Music_CynthiaEncounter_Ch1_Part1_G_
;Bar 11
	sound_call Music_CynthiaEncounter_Ch1_Part1_G_
	sound_call Music_CynthiaEncounter_Ch1_Part1_Fs
;Bar 12
	note F_, 2
	volume_envelope 10, 3
	note F_, 10
	sound_call Music_CynthiaEncounter_Ch1_Part1_Fs
;Bar 13
	sound_call Music_CynthiaEncounter_Ch1_Part1_Fs
	sound_call Music_CynthiaEncounter_Ch1_Part1_E_
;Bar 14
	sound_call Music_CynthiaEncounter_Ch1_Part1_D_
	sound_call Music_CynthiaEncounter_Ch1_Part1_Cs
;Bar 15
	octave 3
	sound_call Music_CynthiaEncounter_Ch1_Part1_B_
	sound_call Music_CynthiaEncounter_Ch1_Part1_As
;Bar 16
	octave 4
	sound_call Music_CynthiaEncounter_Ch1_Part1_Cs
	octave 3
	sound_call Music_CynthiaEncounter_Ch1_Part1_B_
;Bar 17
	octave 5
	note F#, 2
	note G_, 2
	note C#, 2
	note E_, 2
	octave 4
	note A#, 2
	note F#, 2
	sound_call Music_CynthiaEncounter_Ch2_Bar17
;Bar 18
	note D_, 2
	note C#, 2
	octave 4
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	note G_, 2
;Bar 19
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	volume_envelope 13, 4
	note C#, 2
	octave 3
	volume_envelope 13, 2
	note B_, 2
	note B_, 2
	note B_, 2
	octave 4
	volume_envelope 13, 4
	note F#, 6
;Bar 20
	rest 6
	octave 3
	volume_envelope 12, 4
	note F#, 2
	note A#, 2
	octave 4
	note C#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	sound_call Music_CynthiaEncounter_Ch2_Bar17
;Bar 21
	note F#, 2
	note C#, 2
	octave 4
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	note G_, 2
;Bar 22
	note F#, 2
	note F_, 2
	note F#, 2
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	volume_envelope 13, 4
	note E_, 2
	volume_envelope 12, 4
	note F#, 2
	note G_, 2
	note E_, 2
	note C#, 2
	note D_, 2
	octave 3
	note A#, 2
;Bar 23
	volume_envelope 13, 2
	note B_, 2
	note B_, 2
	note B_, 2
	volume_envelope 13, 4
	note A#, 6
	octave 4
	volume_envelope 13, 2
	note F#, 2
	note F#, 2
	note F#, 2
	volume_envelope 13, 4
	note F_, 6
;Bar 24
	volume_envelope 13, 2
	note B_, 2
	note B_, 2
	note B_, 2
	volume_envelope 13, 4
	note A#, 6
	volume_envelope 12, 4
	note F#, 2
	note G_, 2
	note E_, 2
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 2
;Bar 25
	sound_call Music_CynthiaEncounter_Ch2_Type1
Music_CynthiaEncounter_Ch2_Bar25:
	octave 4
	volume_envelope 12, 4
	note C#, 2
	octave 3
	volume_envelope 9, 4
	note B_, 2
	note G_, 2
	sound_loop 2, Music_CynthiaEncounter_Ch2_Bar25
;Bar 26
Music_CynthiaEncounter_Ch2_Bar26:
	octave 4
	volume_envelope 12, 4
	note E_, 2
	volume_envelope 8, 4
	note C#, 2
	octave 3
	note G_, 2
	sound_loop 2, Music_CynthiaEncounter_Ch2_Bar26
	sound_call Music_CynthiaEncounter_Ch2_Type1
;Bar 27
	sound_call Music_CynthiaEncounter_Ch2_Type4
	sound_call Music_CynthiaEncounter_Ch2_Type4
Music_CynthiaEncounter_Ch2_Bar27:
	volume_envelope 12, 4
	note A#, 2
	volume_envelope 9, 4
	note E_, 2
	note C#, 2
	sound_loop 2, Music_CynthiaEncounter_Ch2_Bar27
;Bar 28
	sound_call Music_CynthiaEncounter_Ch2_Type2
	sound_call Music_CynthiaEncounter_Ch2_Type3
;Bar 29
	sound_call Music_CynthiaEncounter_Ch2_Type1
	octave 4
	volume_envelope 12, 4
	note E_, 2
	volume_envelope 9, 4
	note C#, 2
	octave 3
	note G_, 2
	octave 4
	volume_envelope 12, 4
	note C#, 2
	octave 3
	volume_envelope 9, 4
	note G_, 2
	note F#, 2
;Bar 30
Music_CynthiaEncounter_Ch2_Bar30:
	octave 4
	volume_envelope 12, 4
	note F#, 2
	volume_envelope 9, 4
	note C#, 2
	octave 3
	note G_, 2
	sound_loop 2, Music_CynthiaEncounter_Ch2_Bar30
	octave 4
	volume_envelope 12, 4
	note E_, 2
	octave 3
	volume_envelope 9, 4
	note B_, 2
	note F#, 2
	octave 4
	volume_envelope 12, 4
	note D_, 2
	octave 3
	volume_envelope 8, 4
	note B_, 2
	note F#, 2
;Bar 31
	sound_call Music_CynthiaEncounter_Ch2_Type4
	volume_envelope 12, 4
	note A#, 2
	volume_envelope 9, 4
	note F#, 2
	note C#, 2
	octave 4
	volume_envelope 12, 4
	note E_, 2
	octave 3
	volume_envelope 9, 4
	note A#, 2
	note G_, 2
	octave 4
	volume_envelope 12, 4
	note C#, 2
	octave 3
	volume_envelope 9, 4
	note G_, 2
	note E_, 2
;Bar 32
	sound_call Music_CynthiaEncounter_Ch2_Type2
	sound_call Music_CynthiaEncounter_Ch2_Type3
;Bar 33
	rest 6
	octave 4
	volume_envelope 12, 4
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note D_, 2
;Bar 34
	note C#, 2
	note D_, 2
	note C#, 2
	octave 3
	note A#, 2
	note B_, 2
	note A#, 2
	note F#, 2
	note A#, 2
	sound_jump Music_CynthiaEncounter_Ch2_loop

Music_CynthiaEncounter_Ch2_Bar17:
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
;Bar 18
	octave 3
	note F#, 2
	note A#, 2
	octave 4
	note C#, 2
	note F#, 2
	note A#, 2
	octave 5
	note C#, 2
	note E_, 2
	sound_ret

Music_CynthiaEncounter_Ch2_Type1:
	volume_envelope 12, 4
	octave 4
	note D_, 2;
	octave 3
	volume_envelope 9, 4
	note B_, 2
	note F#, 2
	sound_loop 2, Music_CynthiaEncounter_Ch2_Type1
	sound_ret

Music_CynthiaEncounter_Ch2_Type2:
	octave 4;
	volume_envelope 12, 4
	note C#, 2
	octave 3
	volume_envelope 9, 4
	note F#, 2
	note D_, 2
	sound_loop 2, Music_CynthiaEncounter_Ch2_Type2
	sound_ret

Music_CynthiaEncounter_Ch2_Type3:
	volume_envelope 12, 4;
	note B_, 2
	volume_envelope 9, 4
	note F#, 2
	note D_, 2
	sound_loop 2, Music_CynthiaEncounter_Ch2_Type3
	sound_ret

Music_CynthiaEncounter_Ch2_Type4:
	volume_envelope 12, 4;
	note B_, 2
	volume_envelope 9, 4
	note F#, 2
	note C#, 2
	sound_ret

; ============================================================================================================

Music_CynthiaEncounter_Ch3:
	note_type 4, 1, 6
	stereo_panning TRUE, TRUE
;Bar 1
	octave 2
	sound_call Music_CynthiaEncounter_Ch3_Bar1
Music_CynthiaEncounter_Ch3_Bar1_s:
	note F_, 3
	rest 1
	sound_loop 3, Music_CynthiaEncounter_Ch3_Bar1_s
	note F_, 12
;Bar 2
Music_CynthiaEncounter_Ch3_Bar2_s:
	note C#, 3
	rest 1
	sound_loop 3, Music_CynthiaEncounter_Ch3_Bar2_s
	note C#, 12
	sound_call Music_CynthiaEncounter_Ch3_Bar1
;Bar 3
	note_type 16, 1, 6
	note F#, 12
;Bar 4
	rest 12
;Bar 5
	note_type 8, 1, 6
Music_CynthiaEncounter_Ch3_loop:
	sound_call Music_CynthiaEncounter_Ch3_Type4
	sound_call Music_CynthiaEncounter_Ch3_Type5
;Bar 6
	sound_call Music_CynthiaEncounter_Ch3_Type6
	sound_call Music_CynthiaEncounter_Ch3_Type4
;Bar 7
	sound_call Music_CynthiaEncounter_Ch3_Type4
	sound_call Music_CynthiaEncounter_Ch3_Type5
;Bar 8
	sound_call Music_CynthiaEncounter_Ch3_Type6
	sound_call Music_CynthiaEncounter_Ch3_Type4
;Bar 9
	sound_call Music_CynthiaEncounter_Ch3_Type7
	note E_, 2
	note B_, 2
	octave 4
	note E_, 2
	note F#, 2
	note E_, 2
	octave 3
	note B_, 2
;Bar 10
	note E_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	note E_, 2
	octave 3
	note B_, 2
	sound_call Music_CynthiaEncounter_Ch3_Type7
;Bar 11
	sound_call Music_CynthiaEncounter_Ch3_Type4
	sound_call Music_CynthiaEncounter_Ch3_Type6
;Bar 12
	sound_call Music_CynthiaEncounter_Ch3_Type4
	sound_call Music_CynthiaEncounter_Ch3_Type5
;Bar 13
	sound_call Music_CynthiaEncounter_Ch3_Type8
	octave 2
	note F#, 2
	octave 3
	note C#, 2
	note F#, 2
	note B_, 2
	note F#, 2
	note C#, 2
;Bar 14
	sound_call Music_CynthiaEncounter_Ch3_Type8
	octave 2
	note F#, 2
	octave 3
	note C#, 2
	note F#, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 2
	note C#, 2
;Bar 15
	sound_call Music_CynthiaEncounter_Ch3_Type4
	octave 2
	note B_, 2
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note A#, 2
	note F#, 2
;Bar 16
	sound_call Music_CynthiaEncounter_Ch3_Type6
	sound_call Music_CynthiaEncounter_Ch3_Type4
;Bar 17
	octave 2
	sound_call Music_CynthiaEncounter_Ch3_Bar17
;Bar 18
	rest 16
	rest 16
	rest 4
;Bar 19
	sound_call Music_CynthiaEncounter_Ch3_Bar19
;Bar 20
	sound_call Music_CynthiaEncounter_Ch3_Bar17
;Bar 21
	rest 16
	rest 16
	rest 16
;Bar 23
	sound_call Music_CynthiaEncounter_Ch3_Bar19
	octave 3
Music_CynthiaEncounter_Ch3_Bar23:
	note_type 4, 1, 6
	note D_, 3
	rest 1
	sound_loop 3, Music_CynthiaEncounter_Ch3_Bar23
	note C#, 12
	note_type 8, 1, 6
;Bar 24
	sound_call Music_CynthiaEncounter_Ch3_Bar19
	rest 12
;Bar 25
	stereo_panning FALSE, TRUE
	sound_call Music_CynthiaEncounter_Ch3_Type1
	octave 2
	volume_envelope 1, 6
	note B_, 2
	octave 3
	volume_envelope 2, 6
	note G_, 2
	note B_, 2
	octave 4
	volume_envelope 1, 6
	note D_, 2
	octave 3
	volume_envelope 2, 6
	note B_, 2
	note G_, 2
;Bar 26
	sound_call Music_CynthiaEncounter_Ch3_Type2
	sound_call Music_CynthiaEncounter_Ch3_Type1
;Bar 27
	octave 2
	sound_call Music_CynthiaEncounter_Ch3_Type3
	octave 2
	volume_envelope 1, 6
	note F#, 2
	octave 3
	volume_envelope 2, 6
	note C#, 2
	note F#, 2
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note F#, 2
	note C#, 2
;Bar 28
	sound_call Music_CynthiaEncounter_Ch3_Type1
	sound_call Music_CynthiaEncounter_Ch3_Type1
;Bar 29
	sound_call Music_CynthiaEncounter_Ch3_Type1
	volume_envelope 1, 6
	note C#, 2
	volume_envelope 2, 6
	note G_, 2
	note B_, 2
	octave 4
	volume_envelope 1, 6
	note C#, 2
	octave 3
	volume_envelope 2, 6
	note B_, 2
	note G_, 2
;Bar 30
	sound_call Music_CynthiaEncounter_Ch3_Type2
	sound_call Music_CynthiaEncounter_Ch3_Type1
;Bar 31
	octave 2
	sound_call Music_CynthiaEncounter_Ch3_Type3
	octave 2
	volume_envelope 1, 6
	note F#, 2
	octave 3
	volume_envelope 2, 6
	note C#, 2
	note G_, 2
	volume_envelope 1, 6
	note A#, 2
	volume_envelope 2, 6
	note F#, 2
	note C#, 2
;Bar 32
	sound_call Music_CynthiaEncounter_Ch3_Type1
	sound_call Music_CynthiaEncounter_Ch3_Type1
;Bar 33
	stereo_panning TRUE, TRUE
	octave 2
	note_type 12, 1, 6
	note F#, 16
	rest 16
	note_type 8, 1, 6
	sound_jump Music_CynthiaEncounter_Ch3_loop

Music_CynthiaEncounter_Ch3_Type1:
	octave 2
	volume_envelope 1, 6
	note B_, 2;
	octave 3
	volume_envelope 2, 6
	note F#, 2
	note B_, 2
	octave 4
	volume_envelope 1, 6
	note C#, 2
	octave 3
	volume_envelope 2, 6
	note B_, 2
	note F#, 2
	sound_ret

Music_CynthiaEncounter_Ch3_Type2:
	octave 2;
	volume_envelope 1, 6
	note A#, 2
	octave 3
	volume_envelope 2, 6
	note E_, 2
	note A#, 2
	volume_envelope 1, 6
	note B_, 2
	volume_envelope 2, 6
	note A#, 2
	note E_, 2
	octave 2
	volume_envelope 1, 6
	sound_ret

Music_CynthiaEncounter_Ch3_Type3:
	volume_envelope 1, 6;
	note F#, 2
	octave 3
	volume_envelope 2, 6
	note C#, 2
	note F#, 2
	volume_envelope 1, 6
	note G_, 2
	volume_envelope 2, 6
	note F#, 2
	note C#, 2
	sound_ret

Music_CynthiaEncounter_Ch3_Type4:
	octave 2
	note B_, 2;
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	note F#, 2
	sound_ret

Music_CynthiaEncounter_Ch3_Type5:
	octave 2;
	note B_, 2
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note F#, 2
	sound_ret

Music_CynthiaEncounter_Ch3_Type6:
	octave 2;
	note B_, 2
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	note F#, 2
	sound_ret

Music_CynthiaEncounter_Ch3_Type7:
	note E_, 2;
	note B_, 2
	octave 4
	note E_, 2
	note G_, 2
	note E_, 2
	octave 3
	note B_, 2
	sound_ret

Music_CynthiaEncounter_Ch3_Type8:
	octave 2;
	note F#, 2
	octave 3
	note C#, 2
	note F#, 2
	note A#, 2
	note F#, 2
	note C#, 2
	sound_ret

Music_CynthiaEncounter_Ch3_Bar17:
	note F#, 1;
	rest 1
	note_type 16, 1, 6
	note F#, 11
	note_type 8, 1, 6
	sound_ret

Music_CynthiaEncounter_Ch3_Bar1:
	note F#, 3
	rest 1
	sound_loop 3, Music_CynthiaEncounter_Ch3_Bar1
	note F#, 12
	sound_ret

Music_CynthiaEncounter_Ch3_Bar19:
	note_type 4, 1, 6
	note G_, 3
	rest 1
	sound_loop 3, Music_CynthiaEncounter_Ch3_Bar19
	note F#, 12
	note_type 8, 1, 6
	sound_ret

; ============================================================================================================
