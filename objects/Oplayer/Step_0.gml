/// @description Insert description here
// You can write your code in this editor

//shader_set(shdrColorOverlay);
//draw_self();


//restart
//if(keyboard_check_pressed(ord("R"))){room = MAIN;}
//if(keyboard_check_pressed(ord("R"))){room_restart();}


/// @Move
//basic xy
x += x_spd;
y += y_spd;

//direction delay
switch dir{
	case "right":
		if(y%32 == 16 or y_spd = 0){
			y_spd = 0;	
			
			//if(!place_meeting(x+main_spd,y,Owall)){
				x_spd = main_spd;
			//}
			//else{x_spd=0;}
			sprite_index = Splayer_side;
			image_xscale = -1;
		}
	break;
	case "left":
		if(y%32 == 16 or y_spd = 0){
			y_spd = 0;	
			
			//if(!place_meeting(x-main_spd,y,Owall)){
				x_spd = -main_spd;
			//}
			//else{x_spd=0;}
			sprite_index = Splayer_side;
			image_xscale = 1;
		}
	break;
	case "up":
		if(x%32 == 16 or x_spd = 0){
			x_spd = 0;
			
			//if(!place_meeting(x,y-main_spd,Owall)){
				y_spd = -main_spd;
			//}
			//else{y_spd=0;}
			sprite_index = Splayer_up;
		}
	break;
	case "down":
		
		if(x%32 == 16 or x_spd = 0){
			x_spd = 0;
			
			//if(!place_meeting(x,y+main_spd,Owall)){
				y_spd = main_spd;
			//}
			//else{y_spd=0;}
			sprite_index = Splayer_dwn;
		}
	break;
}


//keys
if(can_move){
if(keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)){dir = "up";}
if(keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)){dir = "down";}
if(keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)){dir = "left";}
if(keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)){dir = "right";}
}
else{x_spd = 0; y_spd = 0; sprite_index = Splayer_d;}


/// @colission by grid
//with(calls[x div 32][y div 32]){
//	if(shade != Oplayer.shade){
//		if(shade == "WHITE"){
//			shade = Oplayer.shade;	
//		}
//		else{
//			game_restart();
//		}
//	}
//}