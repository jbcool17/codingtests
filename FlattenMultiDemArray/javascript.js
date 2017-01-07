var myArray = [[1, 2],[3, 4, 5], [6, 7, 8, 9]];

//One Line
myArray.join('').split(',').join('').split('').map(function(a){ return parseInt(a)});

// concat / apply
var myNewArray = [].concat.apply([], myArray);
