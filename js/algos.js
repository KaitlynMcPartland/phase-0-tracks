//longest phrase in array method
//method will return longest phrase
//create a an empty variable for longest current phrase
//loop through the array
	// if current phrase.length is > longest current phrase
	// set longest current phrase = current phrase
//return longest current phrase array

function longestPhrase (arrayOfPhrases) {
	var curLongestPhrase = [""];

	for (var i = 0; i < arrayOfPhrases.length; i++){
		if (arrayOfPhrases[i].length > curLongestPhrase[0].length){
			curLongestPhrase = [arrayOfPhrases[i]];
			//console.log(curLongestPhrase);
		}
	}

	return curLongestPhrase;
}

//compare two objects method
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











//driver code/ tests
//longestPhrase tests

//console.log(longestPhrase(["firstest phrase", "second phrase", "longest phrase for sure", "fourth"]));
//console.log(longestPhrase(["short", "medium", "other", "longest"]))



//keyValueMatch tests

// console.log(keyValueMatch ({name: "Steven", age: 54}, {name: "Tammy", age: 54}));
// console.log(keyValueMatch ({name: "Steven", age: 20}, {name: "Tammy", age: 54}));
// console.log(keyValueMatch ({job: "lawyer", school: "Duke", position: "associate"}, {name: "Tammy", age: 54}));
// console.log(keyValueMatch ({job: "lawyer", school: "Duke", position: "associate", age: 54}, {name: "Tammy", age: 54}));
// console.log(keyValueMatch ({job: "lawyer", school: "Duke", position: "associate", 'age': 54}, {name: "Tammy", age: 54}));





