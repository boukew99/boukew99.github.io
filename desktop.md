# Desktop

## Tools

Category | Tools 
--- | ---
Pixel art | [Piksel](https://www.piskelapp.com/p/create/sprite)
Web | [W3 Schools](https://www.w3schools.com/), [emojipedia](https://emojipedia.org), [Image maps](https://www.image-map.net/)
Game | [Godot Engine Docs](https://docs.godotengine.org/en/stable/)


## News
[Godot Engine News](https://godotengine.org/news)

## Playlist
[Desktop Focus](https://open.spotify.com/playlist/53RKMRb1OjTECMvwobKwzi?si=4ad82b6d35414def)

<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/53RKMRb1OjTECMvwobKwzi?utm_source=generator" width="100%" height="380" frameBorder="2" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"></iframe>

## Clipboard

<!--Clipboard-->
<textarea onchange="text_changed()" id="clipboard" autofocus rows="50" cols="100"></textarea>

<script>
window.onload = function get_clipboard() {
	document.getElementById("clipboard").value = localStorage.getItem("clipboard");
}

function text_changed() {
	localStorage.setItem("clipboard", document.getElementById("clipboard").value);
}
</script>
