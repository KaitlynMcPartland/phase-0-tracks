// Release 1
// var allBoldElements = document.getElementsByTagName("strong");
// var boldElement = allBoldElements[0];
// boldElement.style.backgroundColor = "red";

// Release 2
function addRedBackground (event) {
	event.target.style.backgroundColor = "red";
}

var allBoldElements = document.getElementsByTagName("strong");
var boldElement = allBoldElements[0];
boldElement.addEventListener("click", addRedBackground);
