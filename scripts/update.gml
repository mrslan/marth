//Landing canceled special

if (!lasermode)
{
				if ((attack == AT_NSPECIAL || attack == AT_NSPECIAL_2) && free && special_pressed)
				{   
				    pressedinair = true;
				}

				if ((attack == AT_NSPECIAL || attack == AT_NSPECIAL_2) && !free && pressedinair)
				{
				    pressedinair = false;
				    set_state(PS_LAND);
				}
}

if (lasermode)
{
			if ((attack == AT_EXTRA_1 || attack == AT_EXTRA_2) && free && special_pressed)
			{   
			    pressedinair = true;
			}

			if ((attack == AT_EXTRA_1 || attack == AT_EXTRA_2) && !free && pressedinair)
			{
			    pressedinair = false;
			    set_state(PS_LAND);
			}
}

if (!free)
{
    pressedinair = false;
}



//LEDGE


has_walljump = false;

if ((y > get_stage_data(SD_Y_POS) + 30 && y < get_stage_data(SD_Y_POS) + 60) && (attack == AT_USPECIAL || (state != PS_ATTACK_AIR && state != PS_AIR_DODGE && state != PS_HITSTUN && state != PS_TUMBLE && state != PS_PRATFALL && state != PS_PARRY_START)))
{
if (x > get_stage_data(SD_X_POS) - 30 && x < get_stage_data(SD_X_POS) && (spr_dir == 1 || attack == AT_USPECIAL))
{
		if (ledge_timer == 0 && has_grabbed_ledge == false)
		{
		sound_play(sound_get("ledge"));
		sound_play(asset_get("sfx_land"));
		set_state(PS_IDLE);
		set_attack(AT_EXTRA_3);
		window = 1;
		spr_dir = 1;
		ledge_timer = 29;
		has_grabbed_ledge = true;
		djumps = 0;
		has_airdodge = true;
		invincible = true;
		invince_time = 30;
		ledgeautodrop_timer = 90;
		vsp = 0;
		hsp = 0;
		}
}


if (x < -(get_stage_data(SD_X_POS) - 30 - room_width) && x > -(get_stage_data(SD_X_POS) - room_width) && (spr_dir == -1 || attack == AT_USPECIAL))
{
		if (ledge_timer == 0 && has_grabbed_ledge == false)
		{
		sound_play(sound_get("ledge"));
		sound_play(asset_get("sfx_land"));
		set_state(PS_IDLE);
		set_attack(AT_EXTRA_3);
		window = 1;
		ledge_timer = 29;
		spr_dir = -1;
		has_grabbed_ledge = true;
		djumps = 0;
		has_airdodge = true;
		invincible = true;
		invince_time = 30;
		ledgeautodrop_timer = 90;
		vsp = 0;
		hsp = 0;
		}
}

	
}

if (x > get_stage_data(SD_X_POS) - 30 && x < get_stage_data(SD_X_POS))
{
	if (attack == AT_EXTRA_3 && has_grabbed_ledge == true)
	{
	x = get_stage_data(SD_X_POS) - 10;
	y = get_stage_data(SD_Y_POS) + 50;
	ledgeautodrop_timer--;
	spr_dir = 1;
		if (window == 2)
		{
		window = 2;
		window_timer = 0;
		}

	}
	
	
	
	if ((attack == AT_EXTRA_3 && (left_pressed || down_pressed || jump_pressed) && window == 2) || ledgeautodrop_timer == 0 && has_grabbed_ledge)
	{
		has_grabbed_ledge = false;
		window_timer = 10;
	}
		
	
}

if (x < -(get_stage_data(SD_X_POS) - 30 - room_width) && x > -(get_stage_data(SD_X_POS) - room_width) )
{
	if (attack == AT_EXTRA_3 && has_grabbed_ledge == true)
	{
	x = -(get_stage_data(SD_X_POS) - room_width) - 10;
	y = get_stage_data(SD_Y_POS) + 50;;
	spr_dir = -1;
	ledgeautodrop_timer--;
		if (window == 2)
		{
		window = 2;
		window_timer = 0;
		}

	}
	
	if ((attack == AT_EXTRA_3 && (right_pressed || down_pressed || jump_pressed) && window == 2) || ledgeautodrop_timer == 0 && has_grabbed_ledge)
	{
		has_grabbed_ledge = false;
		window_timer = 10;
	}
		
}

	if (attack != AT_EXTRA_3)
	{
		has_grabbed_ledge = false;	
	}

	


if (ledge_timer > 0 && has_grabbed_ledge == false)
{
	ledge_timer--;
}




// SLEEP

if (hit_player_obj != -1)
{
	if (hit_player_obj.sleeptimer > 0 && hit_player_obj.sleep)
		{
			hit_player_obj.sleeptimer -= 1;
		}
		
	if (hit_player_obj.sleep)
	{
				with (hit_player_obj)
					{
		    		set_state(PS_HITSTUN_LAND);
					}
	}

if (hit_player_obj.sleeptimer == 0)
{
	hit_player_obj.sleep = false;
}
}

//turnaround djump


if (state == PS_DOUBLE_JUMP && djumps <= max_djumps)
{
	if (jump_pressed)
	{
		turn_delay = 1
		
	}
	
	
	
	turn_delay--;
	
	if (turn_delay == 0)
	{
			if (spr_dir == 1 && (joy_dir >= 157.5 && joy_dir < 202.5))
              {
                  spr_dir = -1;
              }
              else if (spr_dir == -1 && ((joy_dir >= 337.5 && joy_dir <= 360 ) || (joy_dir >= 0 && joy_dir < 22.5 ) && !joy_pad_idle))
              {
                  spr_dir = 1;
              }
              
	}

}
else
{
	turn_delay = 1
}





