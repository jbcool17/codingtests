function reverse(str){
    // Strings are immutable so we create an array to use.
    var arr = new Array(str.length), l1, l2;
    for (var i = 0; i < str.length; i++) {
        //set vars
        l1 = str[i]
        l2 = str[(str.length - 1) - i]
        //Swap em
        arr[i] = l2;
        arr[(str.length -1) - i]
    }
    str = arr.join('');
    
    return str;
}