set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_2, AG_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 74);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("zetter_proj"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("zetter_proj"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);