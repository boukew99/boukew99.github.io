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
  
  for (let i = 0; i < cells.length; i++) {  
		cell = cells[i]
		
		cell.setAttribute("draggable", cell.innerHTML != "")

  }
  
}



function flip_fen(fen){
  return fen
}
