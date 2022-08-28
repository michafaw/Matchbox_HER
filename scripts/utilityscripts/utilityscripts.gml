// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts


#macro LOG_LEVEL_QUIET 0
#macro LOG_LEVEL_DEBUG 1

//global.LOG_LEVEL = 0;
global.LOG_LEVEL = LOG_LEVEL_DEBUG;


function debugLog(messageString) {
	if (live_call(argument0)) return live_result;
	
	if ((global.LOG_LEVEL | LOG_LEVEL_DEBUG) > 0) {
		show_debug_message(messageString);
	}
}