//https://www.w3docs.com/snippets/javascript/how-to-get-url-parameters.html
//https://stackoverflow.com/questions/3065342/how-do-i-iterate-through-table-rows-and-cells-in-javascript

window.onload = function(event) {
	const urlParams = new URLSearchParams(window.location.search);
	
	const drag = urlParams.get('drag');
	const select = document.getElementById('from');

	if (urlParams.has("setup")) {
		const setup =  urlParams.get('setup').split("");
		const cells = document.getElementsByTagName("td") 
		
		for (let i = 0; i < 64;i=i) {
			var cell = cells[i];
			var character = setup.shift();
			if (!isNaN(character)) {
				i += parseInt(character);
			}	else if (character == "/"){
				if (i%8==0) {i=i}
				else { i += (8 - i % 8) }
			} else {				
				character = char2piece(character)
				cell.innerHTML = (character) ? character : "";
				cell.setAttribute("draggable", drag && cell.innerHTML != "" )
				
				var opt = document.createElement('option');
				opt.value = i;
				opt.innerHTML = i + character;
				select.appendChild(opt);
				
				i++;
			}
		}
	} else {
		document.getElementById("setup").showModal()
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

function reverseSetup(){
	var setup = []
	const cells = document.getElementsByTagName("td") 
	for (let i = 0; i < 64;i++) {
		var cell_value = cells[i].innerHTML;
		if (cell_value == "") {
			if (isNaN(setup.at(-1)) || setup.at(-1) == 8) {
				setup.push(1)
			} else {
				setup[setup.length -1] += 1
			}
		}
		else {
			setup.push(cell_value)
		}
	}
	document.getElementById("link").value = "https://boukew99.github.io/chess?setup=" + setup.reverse().join("");
	document.getElementById("link").display = "block";
	document.getElementById("link").select();
}

function char2piece(character) {
	switch (character) {
		case "k":	return "♚";
		case "K": return "♔";
		case "q": return "♛"
		case "Q": return "♕"
		case "b": return "♝"
		case "B": return "♗"
		case "n": return "♞"
		case "N": return "♘"
		case "r": return "♜"
		case "R": return "♖"
		case "p": return "♟"
		case "P": return "♙"
		default: return character
	}
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
