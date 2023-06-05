/// @description Insert description here
// You can write your code in this editor

/// @sfx
if(sprite_index == Splayer_side or sprite_index == Splayer_dwn or sprite_index == Splayer_up){
	audio_play_sound(choose(SNwalk,SNwalk2),1,false,random_range(0.1,0.4));
}