/// @description Toggle leaderboard
if not leaderboard_ {
	leaderboard_ = true;
	instance_deactivate_all(true);
} else {
	leaderboard_ = false;
	instance_activate_all();
}
