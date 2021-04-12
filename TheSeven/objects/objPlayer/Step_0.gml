/// @description Insert description here
// You can write your code in this editor


//Check for keyboard input and set direction

hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//Move the player based on keyboard input and check for collisions
var bbox_side;


if(hInput != 0 || vInput != 0){
dir = point_direction(0,0,hInput,vInput);
moveX = lengthdir_x(speedWalk,dir);
moveY = lengthdir_y(speedWalk,dir);
}

//REGULAR COLLISIONS
if(hInput == 1 && place_free(x + checkWalk, y)){
	sprite_index = sPlayerright;
	x += moveX * speedWalk;
}
if(hInput == -1 && place_free(x - checkWalk, y)){
	sprite_index = sPlayerleft;
	x += moveX * speedWalk;
}
if(vInput == 1 && place_free(x, y + checkWalk)){
	sprite_index = sPlayerdown;
	y += moveY * speedWalk;
}
if(vInput == -1 && place_free(x, y - checkWalk)){
	sprite_index = sPlayerup;
	y += moveY * speedWalk;
}

//TILE COLLISIONS
if(tilemap_get_at_pixel(tilemap,bbox_right + speedWalk, y) != 0){
	x = round(x);
	while(tilemap_get_at_pixel(tilemap,bbox_right,y)==0){
		x+=1;	
	}
	while(tilemap_get_at_pixel(tilemap,bbox_right,y)!=0){
		x-=1;	
	}
	moveX=0;
}
if(tilemap_get_at_pixel(tilemap,bbox_left + speedWalk, y) != 0){
	x = round(x);
	while(tilemap_get_at_pixel(tilemap,bbox_left,y)==0){
		x-=1;	
	}
	while(tilemap_get_at_pixel(tilemap,bbox_left,y)!=0){
		x+=1;	
	}
	moveX = 0;
}
if(tilemap_get_at_pixel(tilemap,x, bbox_bottom + speedWalk) != 0){
	y = round(y);
	while(tilemap_get_at_pixel(tilemap,x,bbox_bottom)==0){
		y+=1;	
	}
	while(tilemap_get_at_pixel(tilemap,x,bbox_bottom)!=0){
		y-=1;	
	}
	moveY = 0;
}
if(tilemap_get_at_pixel(tilemap,x, bbox_top + speedWalk) != 0){
	y = round(y);
	while(tilemap_get_at_pixel(tilemap,x,bbox_top)==0){
		y-=1;	
	}
	while(tilemap_get_at_pixel(tilemap,x,bbox_top)!=0){
		y+=1;	
	}
	moveY = 0;
}



if(hInput == 0  && vInput == 0)
{
	switch (sprite_index){
		case  sPlayerdown:
			sprite_index = sPlayerdownidol;
			break;
		case  sPlayerup:
			sprite_index = sPlayerupidol;
			break;
		case sPlayerright:
			sprite_index = sPlayerrightidol;
			break;			
		case sPlayerleft:
			sprite_index = sPlayerleftidol;
			break;		
			}
	}
