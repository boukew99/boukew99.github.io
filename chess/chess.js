//https://www.w3docs.com/snippets/javascript/how-to-get-url-parameters.html
//https://stackoverflow.com/questions/3065342/how-do-i-iterate-through-table-rows-and-cells-in-javascript

window.onload = function setupDragAndDrop() {
		
		document.ondragstart = function(event) {
			event.dataTransfer.setData("cell", event.target.innerHTML)
		}
		
		document.ondrop = function(event){
    	  event.target.innerHTML = event.dataTransfer.getData("cell")
    	  event.target.draggable = true
		}
  
    document.ondragover = function(event){
			event.preventDefault()
    }
    
	const cells = document.getElementsByTagName("td") 
  
	const urlParams = new URLSearchParams(window.location.search);
	const setup = urlParams.get('setup');
	
  for (let i = 0; i < cells.length; i++) {  
		cell = cells[i]
		cell.innerHTML = setup[i]
		cell.setAttribute("draggable", cell.innerHTML != "")

  }
  
	
	var table = document.getElementById("chessboard");
	for (var i = 0, cell; cell = table.cells[i]; i++) {
		cell.innerHTML = pos[i]
		alert(pos[i])
		
}
}



function flip_fen(fen){
  return fen
}
