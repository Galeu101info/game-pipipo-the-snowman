var camx = camera_get_view_x(view_camera[0]);
var camy = camera_get_view_y(view_camera[0]);

var p = 1;

draw_sprite_tiled(bg_mountains, 0, camx*p , camy*p);
draw_sprite_tiled(bg_mountains, 1, camx*p , camy*p);