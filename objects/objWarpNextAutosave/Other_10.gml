/// @description Warp to the next room and autosave

if (place_meeting(x,y,objPlayer)) {
	// Make sure we're on a difficulty lower than impossible before autosaving
	if (global.difficulty < 3) {
	    global.autosave = true;
	}

	event_inherited(); // Warp to the next room
}