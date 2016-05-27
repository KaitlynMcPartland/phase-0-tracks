//longest phrase in array method
//method will return longest phrase - if two are same length will return both
//create a an empty variable for longest current phrase
//loop through the array
	// if current phrase.length is > longest current phrase
	// set longest current phrase = current phrase

	// shovel current word into array
	// else continue to next phrase
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

console.log(longestPhrase(["firstest phrase", "second phrase", "longest phrase for sure", "fourth"]));
console.log(longestPhrase(["short", "medium", "other", "longest"]))