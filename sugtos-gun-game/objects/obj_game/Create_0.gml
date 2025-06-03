toggle_pause = 0;
toggle_leaderboard = 0;
leaderboard_ = false;
paused_ = false;
var _gui_width = camera_get_view_width(view_camera[0]);
var _gui_height = camera_get_view_height(view_camera[0])
display_set_gui_size(_gui_width, _gui_height);
score = 0;
draw_set_font(f_daydream);
if (!audio_is_playing(s_bgmusic)) {
    audio_play_sound(s_bgmusic, 1, true); 
}



