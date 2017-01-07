var myArray = [[1, 2],[3, 4, 5], [6, 7, 8, 9]];

//One Line
myArray.join('').split(',').join('').split('').map(function(a){ return parseInt(a)});

// concat / apply
var myNewArray = [].concat.apply([], myArray);

// reduce
var myNewArray = myArray.reduce(function(prev, curr) {
  return prev.concat(curr);
});

// For Loop
var myNewArray = [];
for (var i = 0; i < myArray.length; ++i) {
  for (var j = 0; j < myArray[i].length; ++j)
    myNewArray.push(myArray[i][j]);
}
console.log(myNewArray);
