/// @description Insert description here
// You can write your code in this editor


/// @babah case
if(buh){
Oplayer.x = x+64;
Oplayer.y = y+64;
Oplayer.shade = shade;


// idk why, but 2 "for" work incorect
for(var i = 0; i < 5; i++){	
	with(Oplayer.calls[(x+(32*0)) div 32][(y+(32*i)) div 32]){shade = Oplayer.shade;}
	with(Oplayer.calls[(x+(32*1)) div 32][(y+(32*i)) div 32]){shade = Oplayer.shade;}
	with(Oplayer.calls[(x+(32*2)) div 32][(y+(32*i)) div 32]){shade = Oplayer.shade;}
	with(Oplayer.calls[(x+(32*3)) div 32][(y+(32*i)) div 32]){shade = Oplayer.shade;}
	with(Oplayer.calls[(x+(32*4)) div 32][(y+(32*i)) div 32]){shade = Oplayer.shade;}
	//for(var j = 0; j < 4; j++){
		//with(Oplayer.calls[(x+(32*i)) div 32][(y+(32*i)) div 32]){shade = Oplayer.shade;}
//		var blue = instance_create_layer(x+(32*i),y+(32*j),"BLUE",Ocalls);
//		with(blue){shade = "BLUE";}
	//}
}
buh = 0;
with(color_b){instance_destroy();}
}
else{instance_destroy();}
