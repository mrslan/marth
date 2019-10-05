//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL_2 || attack == AT_EXTRA_1 || attack == AT_EXTRA_2){
    trigger_b_reverse();
}

//Misc

if (attack == AT_EXTRA_3)
{
    can_move = false;
	can_jump = false;
}

// Specials

if (attack == AT_NSPECIAL || attack == AT_EXTRA_1){

    if (window == 3){
        if (special_pressed){

            if (laserstaling > 4 && attack != AT_NSPECIAL_2 && !lasermode)
            {
				set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
            }
            else
            {
            	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
            }

            if (laserstaling > 4 && attack != AT_EXTRA_2 && lasermode)
            {
            	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 1);
            }

            else 
            {
                set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
            }

			    window = 1;
                window_timer = 0;
        }
    }

}

if (attack == AT_NSPECIAL_2)
{
	move_cooldown[AT_NSPECIAL_2] = 45;
}



if (attack == AT_FSPECIAL){

move_cooldown[AT_FSPECIAL] = 20;

    if (window == 2){
        if (!joy_pad_idle && free){
            vsp = lengthdir_y(1, joy_dir) * 3;
        }
    }
    can_fast_fall = false;
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
}

if (attack == AT_USPECIAL){
    attack_end();
    hsp *= 0.5;
    can_fast_fall = false;
}





if (attack == AT_JAB){


        if (attack_pressed && (window == 3)){
            window = 4;
            window_timer = 0;
            clear_button_buffer( pc_attack_pressed );
        }
        
        if (window == 3 && window_timer > 10){
        	window = 6;
        	window_timer = 10;
        }
        
       

}
