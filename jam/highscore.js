// local score tracking
// highscore = {}
// scores = [{}]
// highscore = int

function addHighscore(name, score) {
	const threshold = safeStorage("highscore", 0)
	let scores = safeStorage("scores", [])
	scores.push({"name":name,"score":score, "time":new Date().getHours()})
	
	if (score > threshold) {
		let records = safeStorage("records", {})
		records.set(name, score)
		localStorage.setItem("records", records)
		localStorage.setItem("highscore", score)
	}
}

function safeStorage(key, default){
	if (localStorage.getItem(key) == null) {
		return default
	}
	else {
		return localStorage.getItem(key)
}

function getRecords(limit) {
	const records = localStorage.getItem("records")
	scores.filter(score => score.score > limit)
