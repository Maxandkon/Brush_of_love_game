/// @description Insert description here
// You can write your code in this editor

//var lay_id = layer_get_id("Incolor");
//var map_id = layer_tilemap_get_id(lay_id);
//var data = tilemap_get(map_id, 6, 0);
//tile_set_flip(data, true);
//draw_tile(TilesPoints, data, 0, 16 + 32, 16 + 32);


/// @vars
y_spd = 0;
x_spd = 0;
main_spd = 8; //must be a divisible multiple of 16
can_move = 1;

dir = "right";
shade = "BLACK";

calls = [[]];

/// @main grid
for(var i = 0; i < room_width/32; i++){
	for(var j = 0; j < room_height/32; j++){
		calls[i][j] = instance_create_layer(16+(32*i), 16+(32*j), "Instances", Ocalls);
		if(i == 0 or j == 0 or j == (room_height/32 - 1) or i == (room_width/32 - 1)){with(calls[i][j]){shade = "RED"}}
		//instance_create_layer(16+(32*i), 16+(32*j), "Incolor", Otest_grid);
	}
}



/// @levels creation
switch room{
	case LVL1:
		for(var i = 1; i < 10; i++){with(calls[i][20]){shade = "BLUE"}}
		for(var i = 20; i < 29; i++){with(calls[9][i]){shade = "BLUE"}}
	break;
	case LVL2:
		for(var i = 1; i < 10; i++){with(calls[i][20]){shade = "BLUE"}}
		for(var i = 20; i < 29; i++){with(calls[9][i]){shade = "BLUE"}}
		for(var i = 12; i < 29; i++){with(calls[13][i]){shade = "RED"}}
		for(var i = 13; i < 29; i++){with(calls[i][12]){shade = "RED"}}
		for(var i = 12; i < 20; i++){with(calls[29][i]){shade = "RED"}}
	break;
	case LVL3:
		for(var i = 1; i < 13; i++){with(calls[i][20]){shade = "BLUE"}}
		
		for(var i = 10; i < 18; i++){with(calls[27][i]){shade = "BLUE"}}
		for(var i = 13; i < 27; i++){with(calls[i][10]){shade = "YELL"}}
		for(var i = 10; i < 18; i++){with(calls[13][i]){shade = "YELL"}}
		
		for(var i = 18; i < room_height/32 - 1; i++){with(calls[13][i]){shade = "RED"}}
		for(var i = 13; i < 27; i++){with(calls[i][18]){shade = "RED"}}
	break;
	case LVL4:
		//for(var i = 1; i < 10; i++){with(calls[i][20]){shade = "BLUE"}}
		//for(var i = 20; i < 29; i++){with(calls[9][i]){shade = "BLUE"}}
		
		for(var i = 10; i < 18; i++){with(calls[27][i]){shade = "BLUE"}}
		for(var i = 13; i < 27; i++){with(calls[i][10]){shade = "BLUE"}}
		for(var i = 10; i < 18; i++){with(calls[13][i]){shade = "YELL"}}
		for(var i = 1; i < 13; i++){with(calls[i][10]){shade = "YELL"}}
		
		for(var i = 1; i < 13; i++){with(calls[i][18]){shade = "RED"}}
		
		for(var i = 18; i < 29; i++){with(calls[13][i]){shade = "BLUE"}}
		for(var i = 13; i < 27; i++){with(calls[i][18]){shade = "RED"}}
	break;
	case LVL5:
		//for(var i = 1; i < 10; i++){with(calls[i][20]){shade = "BLUE"}}
		//for(var i = 20; i < 29; i++){with(calls[9][i]){shade = "BLUE"}}
		
		for(var i = 1; i < 7; i++){with(calls[i][22]){shade = "GREEN"}}
		for(var i = 15; i < 23; i++){with(calls[i][22]){shade = "GREEN"}}
		for(var i = 30; i < room_width/32-1; i++){with(calls[i][22]){shade = "YELL"}}
		
		
		for(var i = 22; i < room_height/32-1; i++){with(calls[7][i]){shade = "BLUE"}}
		for(var i = 22; i < room_height/32-1; i++){with(calls[15][i]){shade = "YELL"}}
		for(var i = 22; i < room_height/32-1; i++){with(calls[22][i]){shade = "BLUE"}}
		for(var i = 22; i < room_height/32-1; i++){with(calls[30][i]){shade = "BLACK"}}
	
		
		for(var i = 1; i < 7; i++){with(calls[i][8]){shade = "GREEN"}}
		for(var i = 15; i < 23; i++){with(calls[i][8]){shade = "BLUE"}}
		for(var i = 30; i < room_width/32-1; i++){with(calls[i][8]){shade = "GREEN"}}
		
		for(var i = 1; i < 8; i++){with(calls[7][i]){shade = "BLUE"}}
		for(var i = 1; i < 8; i++){with(calls[15][i]){shade = "YELL"}}
		for(var i = 1; i < 8; i++){with(calls[22][i]){shade = "BLACK"}}
		for(var i = 1; i < 8; i++){with(calls[30][i]){shade = "YELL"}}
	break;
}

