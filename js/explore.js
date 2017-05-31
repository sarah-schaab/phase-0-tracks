/*  ****PSEUDOCODE 7.1 release 4***
-the function takes a string as a parameter
-the function should take the string and reverse it
-the output from the function should be the string entered, backwards.
example:
input would be a "string"
and the output would be "gnirts"

function =
input: a string
output: an array composed of the individual letters from the string array = ["s", "t", "r", "i", "n", "g"]
input: array = ["s", "t", "r", "i", "n", "g"]
output: array reversed = ["g", "n", "i", "r", "t", "s"]
input: array reversed = ["g", "n", "i", "r", "t", "s"]
output: an array reversed and rejoined together "gnirts"

*/

function reverseString(str) {

    var splitString = str.split("");

    var reverseArray = splitString.reverse();

    var joinArray = reverseArray.join("");

    return joinArray;
}


var itsBackwardsDay = true

if (itsBackwardsDay){
  console.log(reverseString('hello'));
} else{
  console.log("HAYYYYYYYY");
}

