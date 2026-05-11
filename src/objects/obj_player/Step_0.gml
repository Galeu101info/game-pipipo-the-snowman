right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));


//getting x and y speed
xspeed = (right_key - left_key) * movespeed
yspeed = (down_key - up_key) * movespeed



//pause
if instance_exists(obj_pauser)
	{
	xspeed = 0;
	yspeed = 0;
	}



//set sprite
mask_index = sprite[DOWN];

if yspeed = 0
	{
	if xspeed > 0 {face = RIGHT}
	if xspeed < 0 {face = LEFT};
	}
if xspeed > 0 && face == LEFT {face = RIGHT};	
if xspeed < 0 && face == RIGHT {face = LEFT};

if xspeed = 0
	{
	if yspeed > 0 {face = DOWN};
	if yspeed < 0 {face = UP};
	}
if yspeed > 0 && face == UP {face = DOWN};
if yspeed < 0 && face == DOWN {face = UP};
	
sprite_index = sprite[face];
	
	
if xspeed = 0 && yspeed = 0
	{
	image_index = 0;	
	}
	
//collisions
if place_meeting(x + xspeed, y, obj_wall) = true
	{
	xspeed = 0;
	}
if place_meeting(x, y + yspeed, obj_wall) = true
	{
	yspeed = 0;
	}	
	
//get speed
x += xspeed
y += yspeed


//depth
depth = -bbox_bottom;

if keyboard_check(vk_escape)
{
	persistent = false;
	room_goto(rm_menu)
	if room_exists(rm_menu)
		{
		xspeed = 0;
		yspeed = 0;
		}
	
}
