 // @directional values for the ship
//if keyboard_check(vk_up)
//	motion_add(image_angle, 0.1);

if keyboard_check(vk_up)
	motion_add(image_angle, 0.1);
 
//extra directions
if keyboard_check(vk_right)
	image_angle -= 4;
	
if keyboard_check(vk_left)
	image_angle += 4;

//back slow ship (not that great..)	
//if keyboard_check_pressed(vk_down)
//	motion_add(image_angle, -2);
	
move_wrap(true, true, 0);

//==========================================