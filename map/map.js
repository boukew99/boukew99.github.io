	//resistance map
	//population map
var field = document.getElementById("field")
var berries = document.getElementById("berries")
var building = document.getElementById("building")
var trees = document.getElementById("trees")
var road = document.getElementById("road")
var trees = document.getElementById("trees")
var crossroad = document.getElementById("crossroad")
var highway = document.getElementById("highway")
var crosshighway = document.getElementById("crosshighway")
var river = document.getElementById("river")
var barn = document.getElementById("barn")
var lake = document.getElementById("lake")

window.onload = (event) => {
  draw();
};

function draw(n = 40) {
	var c = document.getElementById("canvas");
	c.width = 64*n
	c.height = 64*n
	
	var ctx = c.getContext("2d");
	/*
	ctx.clearRect(0, 0, c.width, c.height); 
	ctx.rect(0, 0, c.width, c.height);
	ctx.fillStyle = ctx.createPattern(field, 'repeat');
	ctx.fill();
	*/
	ctx.beginPath() //Why?
	ctx.rect(64*8, 32*12, 64*8, 32*12);
	ctx.fillStyle =  ctx.createPattern(trees, 'repeat');
	ctx.fill();

	spore(trees, 1000)
	spore(berries, 200)
	spore(barn, 50)
	spore(road, 100)
	spore(crossroad, 10)
	spore(crosshighway, 5)
	spore(river, 100)
	spore(road, 100)
	spore(lake, 4)
	
	function spore(image, count) {
		for (let step = 0; step < count; step++) {
			let x = Math.random() * c.width
			x = x - x%64
			let y = Math.random() * c.height
			y = y - y%32
			//y = y + y %2 *8 //odd rows
			ctx.drawImage(image, x, y)
	}
	}
}
