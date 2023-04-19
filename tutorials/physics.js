// Multi-dimensional physics by boukew99

// physic shape
function shape(diameter, rounding = 1, aspect = 1) {

}
//       -difference------->
//       -direction->
// -point|------------------|collider
let pointIntersection = (point, direction, collider) => z{
	const difference = collider - point
	if (sign(direction) == sign(difference))
		return false
	else {
		return point + direction > difference
		
	//return point + direction * sign(difference) > difference
}
function intersection(shape, direction, collider) {
	return 
}

let crossable = (difference, delta) => (difference * delta) > 0 //same direction

let circleIntersection = (radius, delta, difference, backRadius) => {
	radius + delta > difference - backRadius
} 
let contactCheck = (point, radius, delta backpoint, backradius) => {
	const difference = backpoint - point
	if crossable(difference, delta) {
		circleIntersection(radius, delta, difference, backRadius)
	} 
	else false	
}

let circleTrack = (x, y) => {
	{"x":cos(x), "y":sin(y)}
}
let pathMove = (curve) => {
	let delta = yield curve(
	return length * offset
}
                                                                         
