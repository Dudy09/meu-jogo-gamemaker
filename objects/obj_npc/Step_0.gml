if place_meeting(x, y, obj_parede_npc)
{
	if direc == 0
	{
		direc = 1;
	}
	
	else if direc == 1
	{
		direc = 0;	
	}
}

if direc == 0
{
	if(alarm[0] <= 0)
	{
		x += vel;
		alarm[0] = tempo;
	}
}

else if direc == 1
{
	if(alarm[0] <= 0)
	{
		x -= vel;
		alarm[0] = tempo;
	}
}

//if (x % 16 == 0 && y % 16 == 0)
//{
//	velh = x;
//	velv = 0;
//}
//move_and_collide (velh, velv, all);