/// @description Insert description here
// You can write your code in this editor


/// @color switch
switch shade{
	case "WHITE":
		sprite_index = Scalls;
	break;
	case "BLACK":
		if(another_layer){
			layer = layer_get_id("BLACK");
			another_layer = 0;
		}
		sprite_index = Sblack;
	break;
	case "RED":
		if(another_layer){
			layer = layer_get_id("RED");
			another_layer = 0;
		}
		sprite_index = Sred;
	break;
	case "BLUE":
		if(another_layer){
			layer = layer_get_id("BLUE");
			another_layer = 0;
		}
		sprite_index = Sblue;
	break;
	case "GREEN":
		if(another_layer){
			layer = layer_get_id("GREEN");
			another_layer = 0;
		}
		sprite_index = Sgreen;
	break;
	case "YELL":
		if(another_layer){
			layer = layer_get_id("YELL");
			another_layer = 0;
		}
		sprite_index = Syell;
	break;
}