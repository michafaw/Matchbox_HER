/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

if (keyboard_check_pressed(vk_escape)) {
	debugLog("Going back to roomMain"); // DEBUG Micha TODO
	room_goto(roomMain);
}