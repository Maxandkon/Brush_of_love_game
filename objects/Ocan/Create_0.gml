/// @description Insert description here
// You can write your code in this editor


/// @vars
buh = 1;


/// @colors
switch (shade){
	case "BLUE":
		color_b = instance_create_layer(x,y,"Player",Oup);
		with(color_b){sprite_index = Sb}
	break;
	case "YELL":
		color_b = instance_create_layer(x,y,"Player",Oup);
		with(color_b){sprite_index = Sy}
	break;
	case "GREEN":
		color_b = instance_create_layer(x,y,"Player",Oup);
		with(color_b){sprite_index = Sg}
	break;
}


/// @test (nuh, not work)
//instance_create_layer(x,y,"Instances",Owall);
//for(var i = 0; i < 4; i++){
//	for(var j = 0; j < 4; j++){
//		blue = instance_create_layer(x+(32*i),y+(32*j),"Instances",Ocalls);
//		with(blue){shade = "BLUE";}
//	}
//}