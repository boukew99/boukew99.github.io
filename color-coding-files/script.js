function highlight(text) {
	var parse =	text.split(/[\s\n]+/);
	for (let i = 0; i < parse.length; i++) {
		const word = parse[i];
		var color;
		switch (word.trim()) {
			case "bool":
			case "int":
			case "float":
			case "String":
				color = "#42ffc2";break;
				
			case "Color": 
			case "NodePath":
			case "Vector2":
			case "Rect2":
				color = "#8effda";break;
			//Transform2D Vector3 Rect3 Plane Quat Basis Transform Color RID Object NodePath Dictionary Array PoolByteArray PoolIntArray PoolRealArray PoolStringArray PoolVector2Array`	'PoolVector3Array PoolColorArray' Array.includes()
			
			case "Extends":
			case "var":
			case "onready":
			case "export":
			case "return":
			case "func":
				color = "#ff8ccc";break;
				
			case "if":
			case "else":
				color = "#ff8ccc";break;
		}
		
		//https://regexr.com/38qb8
		if (word.trim().match(/([a-zA-Z_]+\()+/ )) {
				console.log(word);
				color = "#57b3ff";
			}
	
		if (color) {
			parse[i] = '<span style="color:' + color + '">' + word + '</span>';
			color = null;
		}
		
	}
	text = parse.join(" "); 
	document.getElementById('result').innerHTML = text;
	return text;
}
