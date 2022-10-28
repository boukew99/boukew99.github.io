//https://www.w3docs.com/snippets/javascript/how-to-get-url-parameters.html
//https://stackoverflow.com/questions/3065342/how-do-i-iterate-through-table-rows-and-cells-in-javascript

window.addEventListener('load', (event) => {
	const urlParams = new URLSearchParams(window.location.search);
	white = 'w' in urlParams
	black = 'b' in urlParams
	
	gameKey = urlParams.get("vs")
	setup = localStorage.getItem("vs")
	if (!setup) {
		locaStorage.setItem("vs")
	}
	//let opponent = getChessColor(move)
	
	if (urlParams.has('w')){
		document.getElementById("white").value = urlParams.get('w');
	}	
	else { 
		document.getElementById("white").disabled = false;
		}
	if (urlParams.has('b')){
		document.getElementById("black").value = urlParams.get('b');
		}
	else {
		document.getElementById("black").disabled = false;
	}
		
	let setup = localStorage.getItem("opponent")
	if (setup) {
		//localStorage.setItem(opponent, setup)
	}
	else {
		setup = "rnbkqbnrpppppppp8888PPPPPPPPRNBKQBNR"
		//localStorage.setItem(w+b, setup)
	}
	
	setupBoard(setup)
	
	const move = urlParams.get('move')
});


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


function setupBoard(fen2, side=false) {
		const setup =  fen2.split("");
		const cells = document.getElementsByTagName("td") 
		const bench = "♖♘♗♔♕♗♘♖♙♙♙♙♙♙♙♙♟♟♟♟♟♟♟♟♜♞♝♚♛♝♞♜".split("")
		
		for (let i = 0; i < 64;i=i) {
			var cell = cells[i];
			var character = setup.shift();
			if (!isNaN(character)) {
				i += parseInt(character);
			}	else if (character == "/"){
				if (i%8==0) {i=i}
				else { i += (8 - i % 8) }
			} else {				
			
				icon = char2piece(character)
				cell.innerHTML = (icon) ? icon : "";
				if (icon) {bench.splice(bench.indexOf(icon), 1)}
				
				if (character == character.toLowerCase() == side) {
					
					var opt = document.createElement('option');
					opt.value = i;
					opt.innerHTML = String.fromCharCode(97 + 8 - Math.trunc((i/8+1))).toUpperCase() + (i%8 +1) + icon;
					//select.appendChild(opt);
				}
				
				i++;
				}
			}
		document.getElementById("bench").innerHTML = bench.join("")
		const to = document.getElementById("to")
		for (let i = 1; i < 9;i+=1) {
			for (let j = 0; j < 8; j+=1) {
				const opt = document.createElement('option');
				opt.value = i;
				opt.innerHTML = String.fromCharCode(97 + j).toUpperCase() + i
				//to.appendChild(opt)	
			}
		}
}
