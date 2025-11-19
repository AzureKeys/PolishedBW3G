BattleAnim_SignalBeam:
	anim_1gfx ANIM_GFX_GLOW
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_SIGNAL_BEAM_RED
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_SIGNAL_BEAM_BLUE
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
.loop
	anim_sound 0, 0, SFX_SPITE
	anim_obj ANIM_OBJ_SIGNAL_BEAM_R, 64, 92, $0
	anim_wait 4
	anim_sound 0, 0, SFX_SPITE
	anim_obj ANIM_OBJ_SIGNAL_BEAM_B, 64, 92, $0
	anim_wait 4
	anim_sound 0, 0, SFX_SPITE
	anim_obj ANIM_OBJ_SIGNAL_BEAM_R, 64, 92, $0
	anim_wait 4
	anim_sound 0, 0, SFX_SPITE
	anim_obj ANIM_OBJ_SIGNAL_BEAM_B, 64, 92, $0
	anim_wait 4
	anim_loop 4, .loop
	anim_wait 64
	anim_ret

BattleAnim_Revenge:
	anim_1gfx ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_2Row_2
	anim_bgeffect ANIM_BG_CYCLE_MON_LIGHT_DARK_REPEATING, $0, $1, $20
.loop
	anim_sound 0, 0, SFX_SWORDS_DANCE
	anim_wait 14
	anim_loop 3, .loop
	anim_wait 32
	anim_incbgeffect ANIM_BG_CYCLE_MON_LIGHT_DARK_REPEATING
	anim_bgeffect ANIM_BG_BODY_SLAM, $0, $1, $0
	anim_wait 8
	anim_call BattleAnim_ShowMon_0_2
	anim_clearobjs
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj ANIM_OBJ_HIT_YFIX, 120, 64, $0
	anim_wait 2
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj ANIM_OBJ_HIT_YFIX, 126, 56, $0
	anim_wait 2
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj ANIM_OBJ_HIT_YFIX, 130, 48, $0
	anim_wait 2
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj ANIM_OBJ_HIT_YFIX, 133, 40, $0
	anim_wait 1
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 32, $0
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
	anim_wait 32
	anim_ret

BattleAnim_TargetObj_2Row_2:
	anim_battlergfx_1row
	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $0, $0
	anim_wait 6
	anim_ret

BattleAnim_ShowMon_0_2:
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 5
	anim_incobj 1
	anim_wait 1
	anim_ret

BattleAnim_TargetObj_1Row_2:
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $0, $0
	anim_wait 6
	anim_ret
	
BattleAnim_QuiverDance:
	anim_1gfx ANIM_GFX_CHARGE
	anim_call BattleAnim_TargetObj_1Row_2
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_AURORA
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW_FULL_SHIFT, $0, $4, $0
	anim_sound 0, 1, SFX_GAME_FREAK_LOGO_GS
	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
	anim_bgeffect ANIM_BG_WOBBLE_MON, $0, $1, $0
.loop
	anim_obj ANIM_OBJ_TINY_RISING_ORB, 56, 90, $30
	anim_wait 4
	anim_obj ANIM_OBJ_TINY_RISING_ORB, 40, 90, $20
	anim_wait 4
	anim_obj ANIM_OBJ_TINY_RISING_ORB, 60, 106, $10
	anim_wait 4
	anim_obj ANIM_OBJ_TINY_RISING_ORB, 36, 106, $0
	anim_wait 4
	anim_loop 4, .loop
	anim_wait 18
	anim_incbgeffect ANIM_BG_WOBBLE_MON
	anim_call BattleAnim_ShowMon_0_2
	anim_wait 16
	anim_clearobjs
	anim_wait 1
	anim_ret
	
BattleAnim_MudShot:
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_BROWN
	anim_1gfx ANIM_GFX_POISON
.loop
	anim_sound 6, 2, SFX_BUBBLE_BEAM
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_sound 6, 2, SFX_BUBBLE_BEAM
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $5c
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $e8
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $d0
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $50
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_loop 4, .loop
	anim_wait 4
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $5c
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $e8
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $d0
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $50
	anim_wait 16
	anim_ret

BattleAnim_HeadSmash:
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_GRAY
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_ROCKS
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
	anim_wait 32
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $0, $0
	anim_wait 6
	anim_sound 0, 1, SFX_HEADBUTT
	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
	anim_wait 12
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_clearobjs
	anim_wait 1
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $10
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 138, 64, $28
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $10
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $9c
	anim_wait 6
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $d0
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $1c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $50
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $dc
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $90
	anim_wait 32
	anim_ret

BattleAnim_ShadowSneak:
	anim_2gfx ANIM_GFX_ANGELS, ANIM_GFX_HIT
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_GRAY
	anim_battlergfx_2row
	anim_bgp $f8
	anim_obp0 $ef
	anim_sound 6, 2, SFX_WHIRLWIND
.loop
	anim_obj ANIM_OBJ_SHADOW_SNEAK, 44, 120, $2
	anim_wait 2
	anim_loop 4, .loop
	anim_wait 32
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_wait 1
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_HIT_YFIX, 140, 44, $0
	anim_wait 4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_HIT_YFIX, 124, 60, $0
	anim_wait 4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_HIT_YFIX, 140, 60, $0
	anim_wait 4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_HIT_YFIX, 124, 44, $0
	anim_wait 4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_HIT_YFIX, 132, 52, $0
	anim_wait 32
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 1
	anim_clearobjs
	anim_ret

BattleAnim_Payback:
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PAYBACK
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_PAYBACK
	anim_3gfx ANIM_GFX_BIG_GLOW_SPIKED, ANIM_GFX_GLOW_SPIKED, ANIM_GFX_CHARGE
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
	anim_obj ANIM_OBJ_SMALL_GLOW_SPIKED, 48, 96, $0
.loop
	anim_sound 0, 0, SFX_WARP_TO
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $38
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $20
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $8
	anim_wait 4
	anim_sound 0, 0, SFX_WARP_TO
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $10
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $28
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $0
	anim_wait 4
	anim_sound 0, 0, SFX_WARP_TO
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $18
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $30
	anim_wait 4
	anim_loop 2, .loop
	anim_clearobjs
	anim_sound 0, 0, SFX_SLUDGE_BOMB
	anim_obj ANIM_OBJ_BIG_GLOW_SPIKED, 48, 96, $0
	anim_wait 64
	anim_clearobjs
	anim_wait 1
	anim_1gfx ANIM_GFX_HIT
	anim_wait 1
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $24, $2, $0
	anim_sound 0, 0, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT_YFIX, 140, 44, $0
	anim_wait 4
	anim_sound 0, 0, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT_YFIX, 124, 60, $0
	anim_wait 4
	anim_sound 0, 0, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT_YFIX, 140, 60, $0
	anim_wait 4
	anim_sound 0, 0, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT_YFIX, 124, 44, $0
	anim_wait 4
	anim_sound 0, 0, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT_YFIX, 132, 52, $0
	anim_wait 32
	anim_ret

BattleAnim_WeatherBall:
	anim_2gfx ANIM_GFX_WEATHER_BALL, ANIM_GFX_HIT
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_sound 0, 0, SFX_ATTRACT
	anim_obj ANIM_OBJ_WEATHER_BALL_RISE, 48, 88, $32
	anim_wait 64
	anim_clearobjs

	; default to NORMAL
	anim_jumpif $1, .water
	anim_jumpif $2, .fire
	anim_jumpif $3, .rock
	anim_jumpif $4, .ice

	; NORMAL
	anim_sound 0, 0, SFX_METRONOME
	anim_obj ANIM_OBJ_WEATHER_BALL_FALL, 112, 188, $0e
	anim_wait 80
	anim_sound 0, 1, SFX_HEADBUTT
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 48, $0
	anim_wait 16
	anim_ret

.water
	anim_3gfx ANIM_GFX_WEATHER_BALL, ANIM_GFX_HIT, ANIM_GFX_BUBBLE
	anim_bgeffect ANIM_BG_FLASH_WHITE, $0, $4, $2
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_WATER
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_BUBBLE
	anim_sound 0, 0, SFX_SWEET_KISS
	anim_obj ANIM_OBJ_WEATHER_BALL_FALL, 112, 188, $0e
	anim_wait 16
	anim_sound 0, 0, SFX_METRONOME
	anim_wait 64
	anim_sound 0, 0, SFX_TOXIC
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 48, $0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $28
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $5c
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $10
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $e8
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $9c
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $d0
	anim_wait 6
	anim_sound 0, 0, SFX_TOXIC
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $1c
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $50
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $dc
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 136, 56, $90
	anim_wait 16
	anim_ret

.fire
	anim_3gfx ANIM_GFX_WEATHER_BALL, ANIM_GFX_HIT, ANIM_GFX_FIRE
	anim_bgeffect ANIM_BG_FLASH_WHITE, $0, $4, $2
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_FIRE
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FIRE
	anim_sound 0, 0, SFX_SWEET_KISS
	anim_obj ANIM_OBJ_WEATHER_BALL_FALL, 112, 188, $0e
	anim_wait 16
	anim_sound 0, 0, SFX_METRONOME
	anim_wait 64
	anim_sound 0, 0, SFX_BURN
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 48, $0
	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 48, $6
	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 48, $16
	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 48, $26
	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 48, $36
	anim_wait 6
	anim_sound 0, 0, SFX_BURN
	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 48, $e
	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 48, $1e
	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 48, $2e
	anim_obj ANIM_OBJ_RADIAL_FLAME_SLOW, 136, 48, $3e
	anim_wait 16
	anim_ret

.rock
	anim_3gfx ANIM_GFX_WEATHER_BALL, ANIM_GFX_HIT, ANIM_GFX_ROCKS
	anim_bgeffect ANIM_BG_FLASH_WHITE, $0, $4, $2
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_BROWN
	anim_sound 0, 0, SFX_SWEET_KISS
	anim_obj ANIM_OBJ_WEATHER_BALL_FALL, 112, 188, $0e
	anim_wait 16
	anim_sound 0, 0, SFX_METRONOME
	anim_wait 64
	anim_sound 6, 2, SFX_SPARK
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 48, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $28
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $10
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $9c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $d0
	anim_wait 6
	anim_sound 6, 2, SFX_SPARK
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $1c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $50
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $dc
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $90
	anim_wait 16
	anim_ret

.ice
	anim_3gfx ANIM_GFX_WEATHER_BALL, ANIM_GFX_HIT, ANIM_GFX_ICE
	anim_bgeffect ANIM_BG_FLASH_WHITE, $0, $4, $2
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_ICE
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_ICE
	anim_sound 0, 0, SFX_SWEET_KISS
	anim_obj ANIM_OBJ_WEATHER_BALL_FALL, 112, 188, $0e
	anim_wait 16
	anim_sound 0, 0, SFX_METRONOME
	anim_wait 64
	anim_call BattleAnim_IceBall_branch
	anim_wait 16
	anim_ret
	
BattleAnim_IceFang:
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_ICE
	anim_3gfx ANIM_GFX_CUT, ANIM_GFX_HIT, ANIM_GFX_ICE
	anim_obj ANIM_OBJ_BITE, 136, 56, $98
	anim_obj ANIM_OBJ_BITE, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_BIG, 136, 56, $0
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
	anim_wait 8
	anim_clearobjs
	anim_call BattleAnim_IceBall_branch
	anim_wait 32
	anim_ret

BattleAnim_IceBall_branch:
	anim_sound 0, 1, SFX_SHINE
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 48, $0
	anim_obj ANIM_OBJ_ICE_SPLASH, 136, 56, $28
	anim_obj ANIM_OBJ_ICE_SPLASH, 136, 56, $5c
	anim_obj ANIM_OBJ_ICE_SPLASH, 136, 56, $10
	anim_obj ANIM_OBJ_ICE_SPLASH, 136, 56, $e8
	anim_obj ANIM_OBJ_ICE_SPLASH, 136, 56, $9c
	anim_obj ANIM_OBJ_ICE_SPLASH, 136, 56, $d0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj ANIM_OBJ_ICE_SPLASH, 136, 56, $1c
	anim_obj ANIM_OBJ_ICE_SPLASH, 136, 56, $50
	anim_obj ANIM_OBJ_ICE_SPLASH, 136, 56, $dc
	anim_obj ANIM_OBJ_ICE_SPLASH, 136, 56, $90
	anim_ret

BattleAnim_HammerArm:
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_GRAY
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BRIGHT
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_SMOKE_PUFF
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_HAMMER_ARM, 136, 68, $30
	anim_wait 16
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 60, $0
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_Y, $60, $2, $20
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 116, 62, $28
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
	anim_wait 1
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 116, 62, $28
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
	anim_wait 1
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 116, 62, $28
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
	anim_wait 44
	anim_ret

BattleAnim_DragonRush:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GRAY
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BRIGHT
	anim_3gfx ANIM_GFX_BIG_WHIP, ANIM_GFX_SMOKE_PUFF, ANIM_GFX_ROCKS
	anim_sound 0, 1, SFX_SPARK
	anim_obj ANIM_OBJ_DRAGON_RUSH, 144, 245, $14
	anim_obj ANIM_OBJ_DRAGON_RUSH_XFLIP, 128, 245, $0c
	anim_wait 16
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_Y, $60, $2, $20
	anim_obj ANIM_OBJ_ROCK_SMASH, 123, 64, $9c
	anim_obj ANIM_OBJ_ROCK_SMASH, 113, 64, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 123, 64, $10
	anim_obj ANIM_OBJ_ROCK_SMASH, 133, 64, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 143, 64, $1c
	anim_obj ANIM_OBJ_ROCK_SMASH, 153, 64, $d0
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 116, 62, $28
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
	anim_wait 1
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 116, 62, $28
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
	anim_wait 1
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 116, 62, $28
	anim_obj ANIM_OBJ_IMPACT_SMOKE, 156, 62, $38
	anim_wait 64
	anim_ret

BattleAnim_FlameBurst:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret
	
BattleAnim_TailSlap:
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_GRAY
	anim_2gfx ANIM_GFX_HORN, ANIM_GFX_HIT
	anim_obj ANIM_OBJ_HORN,   9, 0,   9, 0, $2
	anim_wait 8
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT,  16, 0,   5, 0, $0
	anim_wait 8
	anim_obj ANIM_OBJ_HORN,  10, 0,  11, 0, $2
	anim_wait 8
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT, -15, 0,   7, 0, $0
	anim_wait 8
	anim_obj ANIM_OBJ_HORN,   9, 4,  10, 0, $2
	anim_wait 8
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_HIT, -16, 4,   6, 0, $0
	anim_wait 8
	anim_ret
	