// https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/drawImage

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
	var ctx = canvas.getContext("2d");
//	ctx.clearRect(0, 0, 512, 384)
	var img = document.getElementById("duck");
	ctx.drawImage(img, x, y, 32, 32);
}

function moveup() {
    y -= 32; draw()
}

function movedown() {
    y += 32; draw()
}

function moveleft() {
    x -= 32; draw()
}

function moveright() {
    x += 32; draw()
}


