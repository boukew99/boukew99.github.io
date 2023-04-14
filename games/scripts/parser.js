// lazy recursive operator parser

function* parse(expression) {
	let head = expression.split(' ', 2) //head[0] = a, head[1] = operator, head[2] = tail
	
	if (solvable) {
		yield condense(head) + tail
	else {
		return head + parse(tail)
}

function condense(operator, expression) {
	let head = expression.split(' ', 2)
	if (head[1] > operator) {
		return condense(head[1], expression)
	else {
		//solve + head[3]
	
}

const priorities = {
	"+":1,
	"*":2,
	"^":3,
}
const knowns = {
	"a":5,
	"b":9,
}
