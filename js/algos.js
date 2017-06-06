//instrctions
/* write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
-So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase"
*/
// Pseudocode
/* input: an array of strings
    -if the string at index 1 behind the first string is longer,
  output:the longest string
*/



var arr = [ 'fdgdfgdfg', 'gdfgf', 'gdfgdfhawsdgd', 'gdf', 'gdfhdfhjurvweadsd' ];
arr.sort(function (a, b) { return b.length - a.length })[0];