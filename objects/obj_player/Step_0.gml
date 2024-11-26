//@directional values for the ship
if(keyboard_check(vk_up))
	motion_add(image_angle, 0.1);
 
//turn the ship in both directions
if(keyboard_check(vk_right))
	image_angle -= 4;
	
if(keyboard_check(vk_left))
	image_angle += 4;

//bullet generation
if(mouse_check_button_pressed(mb_left))
	instance_create_layer(x,  y, "instances", obj_bullet);
  
//we want to keep track of the ship and let him come back if he hits 
//the edge of the screen	 
move_wrap(true, true, 0);  