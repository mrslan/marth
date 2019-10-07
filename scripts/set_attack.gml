if(attack == AT_NSPECIAL)
{

	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 12*charge);
    charge = 1;
}

//if (attack == AT_TAUNT)
//{
//	 lasermode += 1;
//	if (lasermode > 2)
//	{
//	 lasermode = 0;
//	}
//	
//	if (lasermode == 2)
//	{
//		set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 3);
//	}
//	else 
//		set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 0);
//}
//
//if (attack == AT_NSPECIAL && lasermode == 0)
//{
//	attack = AT_NSPECIAL;
//}
//
//if (attack == AT_NSPECIAL && lasermode == 1)
//{
//		attack = AT_EXTRA_1;
//}
//
//if (attack == AT_NSPECIAL && lasermode == 2)
//{
//		attack = AT_NSPECIAL_2;
//		
//}
//
//
//if (attack == AT_EXTRA_1)
//{
//		if (laserstaling > 4)
//	{
//			attack = AT_EXTRA_2;
//	}
//
//}


