hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");

// hurtbox_spr = asset_get("ex_guy_hurt_box");
// crouchbox_spr = asset_get("ex_guy_crouch_box");

air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

lasermode = 0;
laserstaling = 0;
laserdmg = 3;

pressedinair = false;
drilltimer = 0;
sleptplayertimer = 0;
turn_delay = 5;
has_clinged = false;
turn_jump = false;
rolloutcharge = 0;
charge = 0;
rollturn_timer = 0;

//Ledge mechanics

grabbing_ledge = false;
ledge_timer = 0;
has_grabbed_ledge = false;
ledgeautodrop_timer = 0;

//

char_height = 40;
idle_anim_speed = 0.05;//0.12;
crouch_anim_speed = .1;
walk_anim_speed = 0.12;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.8;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 4.25;
dash_speed = 5.8;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 2.5;

jump_start_time = 5;
jump_speed = 8;
short_hop_speed = 4;
djump_speed = 5.8;
leave_ground_max = 2.7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .2;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 4;
walljump_time = 10;
max_fall = 6.5; //maximum fall speed without fastfalling
fast_fall = 6.5; //fast fall speed
gravity_speed = .23;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 6;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 7; //roll speed
roll_backward_max = 7;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_bubblepop");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;