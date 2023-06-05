/// @description Insert description here
// You can write your code in this editor

/// @is moise on button
function mouse_check()
{
	if(mouse_x > x - sprite_width/2 and mouse_x < x + sprite_width/2 and mouse_y > y - sprite_height/2 and mouse_y < y + sprite_height/2 and mouse_check_button(mb_left)){return true;}
	else{return false;}
}


/// @cases
switch (button){
	case "MAIN":
		sprite_index = Snew;
		if(key){audio_stop_sound(SN_La_vita_bella_albert_behar_main_version);audio_play_sound(SN_La_vita_bella_albert_behar_main_version,1,false,0.4);key=0;}
		if(mouse_check()){room = LVL1;}
	break;
	case "RESTAR":
		sprite_index = Srestart;
		if(key){audio_play_sound(SNlose,1,false,0.6);key=0;}
		if(mouse_check() or keyboard_check_pressed(vk_anykey)){room_restart();}
	break;
	case "BACK":
		if(mouse_check()){room = MAIN;}
	break;
	case "NEXT":
		if(key){audio_play_sound(SNwin2,1,false,0.5);key=0;}
		sprite_index = Snext;
		if(mouse_check() or keyboard_check_pressed(vk_anykey)){room_goto_next();}
	break;
	
	break;
	case "LVL1":
		sprite_index = Slvl1;
		if(mouse_check()){room = LVL1}
	break;
	case "LVL2":
		sprite_index = Slvl2;
		if(mouse_check()){room = LVL2}
	break;
	case "LVL3":
		sprite_index = Slvl3;
		if(mouse_check()){room = LVL3}
	break;
	case "LVL4":
		sprite_index = Slvl4;
		if(mouse_check()){room = LVL4}
	break;
	case "LVL5":
		sprite_index = Slvl5;
		if(mouse_check()){room = LVL5}
	break;
	

	case "LVLQ":
		sprite_index = SlvlQ;
		x = Otest.x + 464;
		y = Otest.y - 288;
		if(mouse_check()){room = MAIN}
	break;
	
	case "LVLR":
		x = Otest.x + 384;
		y = Otest.y - 288;
		sprite_index = SlvlR;
		if(mouse_check()){room_restart();}
	break;
	
}

