/// @description Insert description here
// You can write your code in this editor
gpu_set_texfilter(false);
display_set_gui_size(1056,704);

/// @vars
str = " "
button = "";

w_half = camera_get_view_width(view_camera[0])/2;
h_half = camera_get_view_height(view_camera[0])/2;

xPl = xstart;
yPl = ystart;

key = 1;


/// @buttons on screen
var bQ = instance_create_layer(x,y,"MENU",Obutton);
with(bQ){button = "LVLQ"}
var bR = instance_create_layer(x,y,"MENU",Obutton);
with(bR){button = "LVLR"}