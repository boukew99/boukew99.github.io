// Combinator by boukew99

// Unique Number Generator 
function* UniqueNumberGenerator(start, offset, range, normalize){
  let current = start
  let next = offset
  
  while(true) {
    yield (normalize ? current % range / range : current % range); 
    [current, next] = [next, next + current];
  }
}
/*
//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Iterators_and_Generators#advanced_generators
function* fibonacci(start, offset){
  let current = start
  let next = offset
  while(true) {
    yield current; 
    [current, next] = [next, next + current];
  }
}

export function* getUniqueIntegerGenerator(minimum, offset, range) {  
	const fib = fibonacci(minimum, offset)
	while(true){
 		yield fib.next().value % range
  }
}
export function* getUniqueNormalizedGenerator(minimum, offset, range) {  
	const ung = getUniqueIntegerGenerator(minimum, offset, range)
	while(true){
 		yield ung.next().value / range
  }
}

/*Iterations
export function setSeed(minimum, offset){
	fibonacciCache[0] = offset
	fibonacciCache[1] = minimum
	sequence = fibonacciGenerator(minimum,offset)
}
let fibonacciCache = [0,1]
function fibonacci(){
	const newUniqueNumber = fibonacciCache[0] + fibonacciCache[1]
	fibonacciCache[0] = fibonacciCache[1]
	fibonacciCache[1] = newUniqueNumber
	return newUniqueNumber
}
function* fibonacciGenerator(start, offset){
  let current = start
  let next = offset
  while(true) {
    const shift = yield current; //shift next?
    [current, next] = [next, next + current];
  }
}
const sequence = fibonacciGenerator(0,1);
export function getRandomInteger(range){
	return fibonacci() % range
}
export function getRandomNormalized(range){
	return getRandomInteger(range) / range
}
function* getUniqueIntegerGeneratorIntegrated(start, offset, range) {  
	let current = start
  let next = offset
  while(true) {
    const shift = yield (current % range); //shift next?
    [current, next] = [next, next + current];
  } 
}
*/
