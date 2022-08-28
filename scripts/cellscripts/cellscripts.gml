// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts


function cellBBoxAtCellXY(cellXY) {
	if (live_call(argument0)) return live_result;
	var cellOrigin = [boardOrigin[0] + cellXY[0]*cellSize[0], boardOrigin[1] + cellXY[1]*cellSize[1]];
	var cellOpposite = [cellOrigin[0]+cellSize[0],cellOrigin[1]+cellSize[1]];
  return [cellOrigin[0], cellOrigin[1], cellOpposite[0], cellOpposite[1]];
}