//function to reverse string
// create an empty string variable
// loop through the current string starting from the end
// initialize the counter at the string.length -1 to start from end
// while counter is >= 0 execute code block
// code block should add the strings current index to new variable
// increment counter by -1

function reverse (stringInput) {
	reversedString = "";
	for (var i = stringInput.length - 1; i >= 0; i-= 1) {
		reversedString = reversedString + stringInput[i];
	}
	return reversedString;
}

//Driver Code
var newString = reverse("hello");

if (newString = "olleh"){
	console.log(newString)
}