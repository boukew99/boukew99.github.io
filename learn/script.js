var depth=-1

window.onload = function(e) {

}

function deepen() {
	depth = Math.min(depth +1, 4)
	add_chapter()
}

function surface() {
	depth = Math.max(depth -1, 0)
	add_chapter()
}

function add_chapter() {
	var temp = document.getElementsByTagName("template")[depth];
  var clon = temp.content.cloneNode(true);
  document.getElementsByTagName("article")[0].appendChild(clon);
}
