 //destroying the bullet instances if a collision happens 
//to anything, and adding an effect with color related to sprite
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_purple);
direction = random(360);

//we transform the big rock in small rock in collision and we copy instance
if(sprite_index == spr_rock_big)
{
	sprite_index = spr_rock_small;
	instance_copy(true);
}
//we respawn small rocks into big ones if room has less than 12 rocks
else if(instance_number(obj_rock) < 12)
{
	sprite_index = spr_rock_big;
	x = -100;
}
//otherwise we just destroy the instance 
else
{
	instance_destroy();
	obj_game.points += 100;
}
	//instance_destroy();
	
//we add scores each time we shoot a rock
obj_game.points += 10;