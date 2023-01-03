// https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/drawImage

var previous_x = 0;
var previous_y = 0;
var x = 0;
var y = 0;
var player = document.getElementById("player")

window.onload = function(e) {
	var canvas = document.getElementById("canvas");
	var ctx = canvas.getContext("2d");
	ctx.imageSmoothingEnabled = false
  var img = document.getElementById("hill_town");
  ctx.drawImage(img, 10, 10, 502, 374);
  
  
};

function draw() {
	var canvas = document.getElementById("canvas");
	//https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Optimizing_canvas#turn_off_transparency
	var ctx = canvas.getContext("2d", { alpha: false });
//	ctx.clearRect(0, 0, 512, 384)
	var img = document.getElementById("duck");
	ctx.drawImage(img, x, y, 32, 32);
	ctx.clearRect(previous_x, previous_y, 32, 32);
	previous_x = x;
	previous_y = y;
}

function moveup() {
	if (y != 0) {
		y -= 32; draw()
		}
}

function movedown() {
	if (y != 384-32) {
    y += 32; draw()
    }
}

function moveleft() {
	if (x != 0) {
    x -= 32; draw()
    }
}

function moveright() {
	if (x != 512 -32) {
		x += 32; draw()
   }
}

var velocity = [0, 0]
function velocity() { //new_velocity, optional_y = 0
	if (arguments.length == 0) {return velocity}
	if (arguments.length == 1) {velocity = arguments[0]}
	if (arguments.lentgh == 2) {
		velocity[0] = Math.cos(arguments[0])
		velocity[1] = Math.sin(arguments[1])
		}
}



