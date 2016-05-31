//longest phrase in array function
//method will return longest phrase
//create a an empty variable for longest current phrase
//loop through the array
	// if current phrase.length is > longest current phrase
	// set longest current phrase = current phrase
	// else if the phrase is the same length as the longest phrase add to array and return both
		//didn't specify to do this (return two equal max length phrases) in instructions but seems like the right thing to do
//return longest current phrase array



function longestPhrase (arrayOfPhrases) {
	var curLongestPhrase = [""];
	var counter = 0;
	while (counter < arrayOfPhrases.length) {
		if (arrayOfPhrases[counter].length > curLongestPhrase[0].length){
			curLongestPhrase = [arrayOfPhrases[counter]];
			//console.log(curLongestPhrase);
		} else if (arrayOfPhrases[counter].length === curLongestPhrase[0].length) {
			curLongestPhrase.push(arrayOfPhrases[counter]);
		}

		counter += 1;
	}

	return curLongestPhrase;
}


//compare two objects function
//iterate through first object using a for loop
//within the for loop code block iterate through the second object (nestediteration)
//if obj1 key === obj2 key AND obj1  value === obj2 value return true
//otherwise continue iteration


function keyValueMatch (firstObject, secondObject) {
	for (var firstObjKey in firstObject) {
		for (var secondObjKey in secondObject){
			if ((firstObjKey === secondObjKey) && (firstObject[firstObjKey] === secondObject[secondObjKey])) {
				return true;
			}
		}
	}
	return false;
}



//random array builder function
//takes an integer as input
//create an empty array
//create a string variable with all posible letters
//for loop for as many times as the integer that was input
//in for loop code block create a new word
//generate a string between length 1-10 of random letters
	//generate random string length Math.floor(Math.random()*10) + 1
	//create an empty string variable
	//use another nested for loop that runs for the random length generated above
		//in the code block add a random character from charSet to empty string
//outside of nest for loop add the now full string to array
//outside outter for loop return array

function randomArrayBuilder (arrayLength){
	var randomArray = [];
	var characterSet = "abcdefghijklmnopqrstuvwxyz";

	while (randomArray.length < arrayLength) {
		var stringLength = Math.floor(Math.random() * 10) + 1;
		var currentString = "";
		//console.log("string length is " + stringLength);

		for (var i = 0; i < stringLength; i++) {
			currentString += characterSet.charAt(Math.floor(Math.random() * characterSet.length));
			//console.log("current string in loop " + currentString);
		}
		//console.log("array before push " + randomArray)
		randomArray.push(currentString);
		//console.log("array after push " + randomArray)

	}

	return randomArray;
}







//driver code/ tests
//longestPhrase tests

console.log(longestPhrase(["firstest phrase", "second phrase", "longest phrase for sure", "fourth"]));
console.log(longestPhrase(["short", "medium", "other", "longest"]));
console.log(longestPhrase(["tiedforlongest", "short", "other", "tiedforlongest"]));



//keyValueMatch tests

console.log(keyValueMatch ({name: "Steven", age: 54}, {name: "Tammy", age: 54}));
console.log(keyValueMatch ({name: "Steven", age: 20}, {name: "Tammy", age: 54}));
console.log(keyValueMatch ({job: "lawyer", school: "Duke", position: "associate"}, {name: "Tammy", age: 54}));
console.log(keyValueMatch ({job: "lawyer", school: "Duke", position: "associate", age: 54}, {name: "Tammy", age: 54}));
console.log(keyValueMatch ({job: "lawyer", school: "Duke", position: "associate", 'age': 54}, {name: "Tammy", age: 54}));



//randomArrayBuilder tests
console.log(randomArrayBuilder(3));
console.log(randomArrayBuilder(5));
console.log(randomArrayBuilder(0));

//driver code that does the following 10 times: generates an array, 
//prints the array, feeds the array to your "longest word" function, and prints the result.
// **** instructions didn't specify length of arrays to do this for so I made the array lengths
// a random length between 1 and 10 *****

var counter = 0;
while (counter < 10){
	var lengthOfArray = Math.floor(Math.random() * 10) + 1;
	var generatedArray = randomArrayBuilder(lengthOfArray);
	console.log("generated array is " + generatedArray);

	console.log("longest phrase is current array is " + longestPhrase(generatedArray));
	counter += 1;
}







