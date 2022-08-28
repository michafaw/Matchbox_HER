/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

// Function to draw a piece at a [cellX, cellY] vector point
drawPieceAtCellXY = function(cellXY, innerColor, outerColor) {
	var cellBB = cellBBoxAtCellXY(cellXY);
	var triCoord = [cellBB[0]+10, cellBB[3]-20,
								  (cellBB[0]+cellBB[2])/2, cellBB[1]+25,
									cellBB[2]-10, cellBB[3]-20];

	draw_triangle_color(triCoord[0], triCoord[1], triCoord[2], triCoord[3], triCoord[4], triCoord[5], innerColor, innerColor, innerColor, false);
	draw_triangle_color(triCoord[0], triCoord[1], triCoord[2], triCoord[3], triCoord[4], triCoord[5], outerColor, outerColor, outerColor, true);
}




// Draw the board
for (var j = 0; j < 3; j++) {
	for (var i = 0; i < 3; i++) {
		var cellColor = ((i+j)%2 == 1) ? evenCellColor : oddCellColor;
		var cellBB = cellBBoxAtCellXY([i,j]);
		
		draw_rectangle_color(cellBB[0], cellBB[1], cellBB[2], cellBB[3], cellColor, cellColor, cellColor, cellColor, false);
	}
}



var whitePieceColor = #8fcccb;
var blackPieceColor = #2f2b5c;
var whitePieces = [[0,2], [1,2], [2,2]];
var blackPieces = [[0,0], [1,0], [2,0]];

for (var i = 0; i < array_length(whitePieces); i++) {
	drawPieceAtCellXY(whitePieces[i], whitePieceColor, blackPieceColor);
}

for (var i = 0; i < array_length(blackPieces); i++) {
	drawPieceAtCellXY(blackPieces[i], blackPieceColor, whitePieceColor);
}

