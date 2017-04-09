import UIKit

//closures are advanced functions, which help us write functions with less code
//syntax #1:
var someName: () -> (String) = {
    return "Hello world"
}
someName()

//syntax #2:
var multiplyTwoNumbers: (Int, Int) -> (Int) = { num1, num2 in
    return num1 * num2
}
multiplyTwoNumbers(3, 3)

//syntax #3
var addNumbers: (Int, Int, Int) -> (Int) = {
    return $0 + $1 + $2
}
addNumbers(2, 3, 4)

//syntax #4
//closure is defined by its parameters and its return value. Closures always have to define the return type
var multiplyClosure = { (number: Int, multiplier: Int) -> Int in    //head of closure, declares the parameters and the return value
    return number * multiplier                                      //body of closure, actual code to be executed
}
multiplyClosure(2, 3)

//syntax #5 - not returning anything
var convertToDouble: (Int) -> Void = { k in
    Double(k)
}
convertToDouble(10)






