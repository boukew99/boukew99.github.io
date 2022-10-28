window.addEventListener('load', (event) => {
	
	const urlParams = new URLSearchParams(window.location.search);
	if (urlParams.has('t')) {
		const turn = urlParams.get('t')
		document.getElementById('turn').value = parseInt(turn) + 1
		document.getElementById('turn_text').textContent = 'turn: ' + turn
		
	}
	if (urlParams.has('new'))	 {
			localStorage.clear()
	}
	
	const cells = document.getElementsByTagName("img");
//	const cells = document.querySelectorAll("td");
	difficulty = 24;
	state = []
	for (const cell of cells) {  
		if (Math.random() > 0.5) {	// use a more consistent difficulty algoritm	
			cell.src = "map-files/forest.png";
			cell.alt = "forest";
			difficulty-= 1;
			state.push(1)
		}
		else state.push(2)
	}
	localStorage.setItem("state", state)
	let forestTiles = state.filter(x => x==1).length
	document.getElementById("difficulty").innerHTML +=Math.round(( (difficulty*100/24))) + "%";
	//random_event()
	random_event_text()
	
	//createTable();	

});

//hub
 function changeTerrain(){
	//logica om zand->bos en andersom te simuleren
	//omliggende horizontale en verticale velden zijn: west cell[-4] noord cell[-1] oost cell[+4] zuid cell[+1]
	
const table = document.getElementById('gameMap')
console.log(table)
const arr = [...table.rows].map(r => [...r.querySelectorAll('td')].map(td => td.innerHTML)) 
console.log(arr)

//to array or not to array, setAttribute lijkt in beide gevallen niet te werken
const mapCells = Array.from(document.getElementsByClassName("imgMC")); //mapCell moet dan nog naar img.alt kunnen kijken - hoe van td element naar cell.getElementsByTagName("img")
console.log("dit is const array mapcells", mapCells)
for (var i = 0, cell; cell = mapCells[i]; i++) {
console.log("dit is mapcell[i]", mapCells[i]['drought'])
console.log("dit is cell ",cell['drought'])
if(Math.random()>.2 && mapCells[i-1]['drought'] == 1 && mapCells[i+1]['drought'] == 1 ){
cell.src = 'map-files/desert.png'
}
//cell.setAttribute('drought', 1) //zo'n new attribute is blijkbaar niet accessible via console.log, want geeft hierna undefined terug. 
cell.drought = 1 //direct nieuwe waarde introduceren en setten gaat zonder problemen en komt ook goed terug in console.log
console.log("dit is cell buiten loop ",cell['drought'])
console.log(cell.alt)
console.log(cell.drought)

}
/*var table = document.getElementById("gameMap");
for (var i = 0, row; row = table.rows[i]; i++) {
   //iterate through rows
   //rows would be accessed using the "row" variable assigned in the for loop
   for (var j = 0, col; col = row.cells[j]; j++) {
   console.log(col.innerHTML);
  
     //iterate through columns
     //columns would be accessed using the "col" variable assigned in the for loop
   }  
}

	//for (var i = 0; i < cells.length; ++i){
	//console.log(cells[i+1]["alt"]);
	
	//}
	*/
	};
 

	function createTable() {
  const body = document.body,
        tbl = document.createElement('table');
		tbl.id = "gameMap"
  //tbl.style.width = '500px';
  //tbl.style.height = '500px';
  // tbl.style.padding = '5px'; //welke setting geeft deze white space om velden en welke waarde heb jij gebruikt?

  //tbl.style.border = '1px solid black';

//counter om cell nummerID te geven
var cell_id = 0;
var img = document.createElement('img');
    img.src = "map-files/desert.png";
	img.alt = "desert"
	img.setAttribute('drought', 1)
	
  for (let i = 0; i < 6; i++) {
    const tr = tbl.insertRow();
    for (let j = 0; j < 8; j++) {
 
        const td = tr.insertCell();
		
		td.setAttribute('class', "mapCell" ) //counter cell_id=+1??
		td.drought = 0
     //   td.appendChild(document.createTextNode(`Cell I${i}/J${j}`));
		//td.appendChild(img)
		if (0 < i  && i < 5 && 0 < j && j < 7) { // 0 < i < 5 is blijkbaar geen JS-syntax
		//if (i != 0 && i != 5 && j != 0 && j!= 7){
		td.drought = 1
		td.innerHTML="<img src='map-files/desert.png' alt='desert' class='imgMC'/>"
			if (Math.random() > 0.5) {		
				td.innerHTML="<img src='map-files/forest.png' alt='forest' class='imgMC'/>"
				td.drought = 0
				}
		 console.log("hiero "+ td.getElementsByTagName("img")) //td.['img'] td.img geeft undefined
		
		// td.appendChild(document.createTextNode(`Cell I${i}/J${j}`));
		
		} 
    
        }
      }

  body.appendChild(tbl);
}

// event
event_text.setAttribute('style', 'white-space: pre;'); //this makes linebreak (/r/n ) possible.
var turn = 0;
function random_event(){
	view.src = Math.random() > 0.5 ? 'map-files/sponsor.svg' : "map-files/fire.svg" 
}


function random_event_text(){
var event_prob = Math.random();
if (event_prob>=.6 && event_prob<.85){//negative event vuur
	if (Math.random )
	var randomI = Math.floor(Math.random() * 4)+1; //+1 om 0 te voorkomen
	var randomJ = Math.floor(Math.random() * 7)+1;
	var location = "Verti"+randomI+" Hori"+randomJ;
		event_text.textContent = "A pyromaniac, anti-environmentalist or very clumsy person set fire at " +location+".\r\n Throw a dice for each surrounding tile, 5 or 6 means the fire is spread."; 
	} else if(event_prob>=.85 && event_prob <.95){//positive event water supply
		event_text.textContent = "Non-profits and volunteers stand by you: pick one tile to be watered by a drone."
	} else if(event_prob>=.95){
	event_text.textContent = "Non-profits and volunteers stand by you: assign a forester to a tile that will protect it and the 4 surrounding tiles. "
	}
	
	else{ //if <.6, no event this turn
		event_text.textContent = "No events this turn. Stay tuned!"
		  }
//turn+=1;
//turn_text.textContent = "turn: "+turn;
}

