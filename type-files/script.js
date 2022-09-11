window.onload = function(e) {
	//query split match change-memory return-text
	const urlParams = new URLSearchParams(window.location.search);
	//const setup =  urlParams.get('setup').split("");
	let actor =	urlParams.get("actor")
	let action = urlParams.get("action")
	let target = urlParams.get("target")
	let comment = urlParams.get("comment")
	
	/*
	let file = "data.json"
	
	fetch (file)
		.then(response => response.json())
		.then(jsondata => document.getElementById("return").innerHTML += jsondata);
	*/
	
	var key = `${actor} ${action} ${target}`
	
	if (comment) { 
		document.getElementById("return").innerHTML = key + `, ${comment}` 
		}
	else {
		document.getElementById("return").innerHTML = `${actor} ${action} ${target}`
		}
		
	document.getElementById("return").innerHTML += "<br>" + dialogue[key]
}

var dialogue = {
	"Me Talk Parama":"hello",
	"key2":"how are you",
	"key3":"good",
}

function check_arguments(value) {
	switch(value) {
		case "give": document.getElementById("actor").style.display = "inline";break;
		case "talk":
		case "walk":
		case "grab":
		case "give":
		case "look":
			document.getElementById("actor").style.display = "none";break;
		}
}

/*
var command = {
	"a":
		"b":
			"b":
				"r":
					"e":
						"v":
							"i":
								"a":
									"t":
										"e": "abbreviate"
}

or list command: https://www.w3schools.com/TAGS/att_input_list.asp

mulit-command/input with ",": array, array2, array3

Still split with " ", but "," for extend command.
*/
