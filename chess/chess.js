//https://www.w3docs.com/snippets/javascript/how-to-get-url-parameters.html
//https://stackoverflow.com/questions/3065342/how-do-i-iterate-through-table-rows-and-cells-in-javascript

window.onload = function(event) {
	const urlParams = new URLSearchParams(window.location.search);
	const setup = urlParams.get('setup');
	
	if (setup) {
		const cells = document.getElementsByTagName("td") 
		
		for (let i = 0, cell;cell = cells[i]; i++) {  
			cell.innerHTML = (setup[i]) ? setup[i] : "";
			cell.setAttribute("draggable", cell.innerHTML != "")
		}
		
	}
	
}

document.ondragstart = function(event) {
	event.dataTransfer.setData("cell", event.target.id)
}

document.ondrop = function(event){
	event.preventDefault()
	from = event.dataTransfer.getData("cell")
	var cell = document.getElementById( from )
	
	if	( validate_move(cell.innerHTML, from, event.target.id) ) return
	
	event.target.innerHTML = cell.innerHTML
	event.target.draggable = true
	cell.innerHTML = ""
	cell.draggable = false
	
}

document.ondragover = function(event){
	event.preventDefault()
}


function validate_move(piece, from, to) {
	switch (piece) {
		case "♜", "♖", "n", "N":
			break
		case "♟", "P":
		  alert("pawns can only move forward and capture diagonally.")
		  return true
		case "♙", "p":
			break
	}
}


function flip_fen(fen){
  return fen
}
