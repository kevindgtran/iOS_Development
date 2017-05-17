//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//

//variables, constants
//var newInstanceOfString = "Tran"
//print(newInstanceOfString)
//newInstanceOfString += " is the man!"
//print(newInstanceOfString)
//let numStopLights: Int = 4
////numStopLights += 2

//string interpolation
////create town name
//let townName: String = "KevinLand"
////create town population
//var townPopulation: Int = 10_500
////create town description
//var townDescription: String = "Welcome to \(townName) with a population of \(townPopulation) and \(numStopLights) stop lights"
////create town unemployment rate, print updated desription
//var townUnemployment: Double = 1.5
//townDescription += ". The town has an unemployment rate of \(townUnemployment)."
//print(townDescription)

//Conditionals
//var townPopulation: Int = 5_422
//var message: String
//var hasPostOffice: Bool = false
//var hasDonutShop: Bool = false
//
//if townPopulation < 10_000 {
//    message = "\(townPopulation) is a small town"
//} else {
//    message = "\(townPopulation) is a large town"
//}
//print(message)
//
//if !hasPostOffice {
//    print("no post office, must go to next town for stamps")
//} else {
//    print("can buy stamps at the post office")
//}
//
//if !hasDonutShop {
//    print("no donut shop")
//} else {
//    print("donuts!")
//}

//Ternary 
//var hasFood: Bool = true
//hasFood ? print("there's food!"): print("no food")
//
////refactor above code to ternary
//var townPopulation: Int = 5422
//var message: String
//
//message = townPopulation < 10000 ? "\(townPopulation) is a small town": "\(townPopulation) is a large town"
//print(message)

//Nested If statements
//var townPopulation: Int = 190244
//var message: String
//
//if townPopulation < 10000 {
//    message = "\(townPopulation) is a small town"
//} else {
//    if townPopulation < 50000 {
//        message = "\(townPopulation) is a medium sized town"
//    } else {
//        message = "\(townPopulation) is a large town"
//    }
//}
//
//print(message)

////else if statements
//var population: Int = 105321
//var description: String
//
//if population < 10000 {
//    description = "small town"
//} else if population < 25000 {
//    description = "medium town size"
//} else if population < 50000 {
//    description = "large town."
//} else {
//    description = "a very large town"
//}
//print(description)


//types of Ints
//var wholeNumber: Int = 12
//var decimalNumber: Float = 3.1415
////max and min
//print("\(Int.max)")
//print("\(Int.min)")
////explicit declaration vs inferr
//var explicitInteger: Int = 100
//var inferredInteger = 2
////arithmatic operations, order of operations
//var total = 3 * 4 + 9
//print(total)
////division of Integers
//var numDivisible = 8 / 3
//print(numDivisible)
//
//var betterDivisible = 8.0 / 3.0
//print(betterDivisible)
//
////remainder operator == modulus
//var remainder = -16 % 4
//print(remainder)

////new instance of Int
//let number: Int = 100
////arithmatic operation
//let newNumber = (number * 2) + 12
//print(newNumber)
////division of different int types
//let firstInt: Int8 = 50
//let secondInt: Int16 = 130
//let sumOfInts = (Int16(firstInt) + secondInt)
////modulus
//let three: Int = 3
//let eleven: Int = 11
//var remainder = eleven % three
//print(remainder)
////operation shorthand
//remainder += 5
//print(remainder)
////trap
//let oneHundred: Int = 100
////var someMath = oneHundred - 1.2
////converting integer types
//var correctMath = oneHundred - Int(1.2)
//print(correctMath)
////new instance of floating point numbers (both) & arithmatic
//let f1: Float = 1.4
//let d1: Double = 3.2
//let answer = Double(f1) + d1
//print(answer)
////float equality
//let f2: Float = 1.3 + 0.1
//if f1 === f2 {
//    print("they're equal")
//}

////switch statement without default case
//let errorCode: Int = 100
//let errorMessage: String
//
//switch errorCode {
//case 100:
//    errorMessage = "error 100"
//case 200:
//    errorMessage = "error 200"
//case 300:
//    errorMessage = "error 300"
//case 400:
//    errorMessage = "error 400"
//default:
//    errorMessage = "no error found"
//}
//print(errorMessage)
//
////switch with fallthrough
//let answer: String = "afternoon"
//var meeting = String()
//
//switch answer.lowercased() {
//case "morning":
//    meeting = "lets have breakfast"
//case "afternoon":
//    meeting = "lets have lunch"
//case "evening":
//    meeting = "lets have dinner"
//default:
//    meeting = "Let's reschedule"
//}
//meeting += ", see you then!"
//print(meeting)
//
////switch with range
//let age = 20
//var barTenderResponse = String()
//
//switch age {
//case 1...20:
//    barTenderResponse = "sorry cant drink."
//case 21...100:
//    barTenderResponse = "what would you like to drink?"
//default:
//    barTenderResponse = "how old are you?"
//}
//print(barTenderResponse)
//
////switch with value binding
//let color: String = "black"
//var feedback = String()
//
//switch color.lowercased(){
//case "red", "blue", "green":
//    feedback = "Yes! that is a color on the RGB scale"
//case let unknownColor:
//    feedback = "\(unknownColor) is not a main color on the RBG color scale"
//}
//print(feedback)

//switch with break
//let chip: Int = 8
//var bagColor = String()
//
//switch chip {
//case 8:
//    bagColor = "red"
//default:
//    break
//}
//print(bagColor)

////if-case
//let flavor: String = "spicy"
//if case "spicy" = flavor.lowercased() {
//    print("spicy flavor")
//}
//
////if-case with mutliple cases
//let age: Int = 29
//if case 21...100 = age {
//    print("can drink and in cool demographic")
//}

//for in loop with explicit iterator & wildcard
//for num in 5...10 {
//    print(num)
//}

//for _ in 1...3 {
//    print("hello world")
//}

//for in loop with where clause
//for i in 1...20 {
//    if i % 3 == 0 { print("fizz") }
//    else if i % 5 == 0 { print("buzz") }
//    else if i % 15 == 0 { print("fizzbuzz") }
//    else { print(i) }
//}


//for loop with where
//for i in 1...10 where i == 7 {
//    print(i)
//}

//while loop
//var counter: Int = 0
//while counter < 5 {
//    print("\(counter)")
//    counter += 1
//}

//repeat while loop
//var newCounter: Int = 0
//
//repeat {
//    print(newCounter)
//    newCounter += 1
//} while newCounter < 5
//    print(newCounter)


//control transfer statements, all
//continue, break, fallthrough

//fizzbuzz (if/else, swtich)
//for i in 1...100 {
//    if i % 3 == 0 {
//        print("fizz")
//        continue
//    }
//    
//    if i % 5 == 0 {
//        print("buzz")
//        continue
//    }
//    
//    if i % 15 == 0 {
//        print("fizzbuzz")
//        continue
//    }
//    print(i)
//}

//for i in 1...100 {
//    switch i {
//    case _ where i % 15 == 0:
//        print("fizzbuzz")
//    case _ where i % 3 == 0:
//        print("fizz")
//    case _ where i % 5 == 0:
//        print("buzz")
//    default:
//        print(i)
//    }
//}

//loop through string
//let name: String = "Mochi"
//for letter in name.characters {
//    print(letter)
//}

//check if a string is empty
//let maybeWord: String = ""
//if maybeWord.isEmpty {
//    print("emtpy word")
//} else {
//    print(maybeWord)
//}
//
//maybeWord.isEmpty ? print("empty word") : print(maybeWord)

//unicode scholar string
//var dollarSign: String = "\u{24}"
//print(dollarSign)


//declare an optional, check if !nil
//var userImage: String?
//userImage = "photo.jpeg"
//
//if userImage != nil {
//    let hasPicture = userImage!
//    print("\(hasPicture) is a nice picture")
//}

//optional binding
//var favoritesList: String?
//favoritesList = "apples"
//
//if let hasFavoritesList = favoritesList {
//    print(" \(hasFavoritesList) are his favorite")
//}

//optional binding multiple optionals and converting type
//var errorCode: String? = "404"
//
//if let theErrorCode = errorCode, let theErrorCodeInt = Int(theErrorCode) {
//    print(theErrorCodeInt)
//}

//implicit unwrapping, optional chaining
//var value: String?
//value = "value"
//value!.uppercased()
//print(value!)

//nill coelescent operator
//var accountBalance: String?
//let realAccountBalance = accountBalance ?? "no balance"
//print(realAccountBalance)

////new array
//var newArray: [String] = ["oranges", "carrots", "ginger"]
//
////adding to array, count
//newArray.append("cucumber")
//newArray.count
//print(newArray)
//
////removing from an array
//newArray += ["lemons"]
//print(newArray)
//newArray.remove(at: 2)
//print(newArray)
//
////subscript to add new items
//newArray[2] += "s"
//print(newArray)
//
////replacing an array item
//newArray[0] = "tangerines"
//print(newArray)
//
////loop through array
//for fruit in newArray {
//    print(fruit)
//}
//
////add 2 arrays together
//var otherArray: [String] = [
//    "apples",
//    "H20",
//    "ice"
//]
//
//newArray += otherArray
//print(newArray)
//
////find var in array documentation to tell wether an array contains elements
//newArray.contains("H20")
//
////reverse the order of an array
//newArray.reverse()
//print(newArray)
//
////return index of specific item in array AND the item in the array
//if let indexOfH20 = newArray.index(of: "H20") {
//    print("\(newArray[1]) is at index: \(indexOfH20)")
//}

//dictionary documentation, create new instance, explicit dictionary, count
//var newDictionary = [String: Double]()
//var anotherDictionary: [String: Double] = ["small" : 3.00, "medium" : 5.00, "large" : 8.00]
//anotherDictionary.count

//Read from dictionary, option click, modify value for key - printing value
//print(anotherDictionary)
//anotherDictionary["large"] = 10.00
//print(anotherDictionary["large"])
//if let largePrice = anotherDictionary["large"] {
//    print(largePrice)
//}

//adding a value, removing a value
//anotherDictionary.updateValue(12, forKey: "extra large")
//print(anotherDictionary)

//anotherDictionary["kids"] = 1.00
//print(anotherDictionary)

//looping - print both key & value, just keys
//for (key, value) in anotherDictionary {
//   print("A \(key) is $\(value)")
//}

//for item in anotherDictionary.keys {
//    print("we have \(item) size")
//}

//converting dictionary keys to an array
//var dictionaryKeysToArray = [String]()
//for thing in anotherDictionary.keys {
//    dictionaryKeysToArray.append(thing)
//}
//print(dictionaryKeysToArray)

//let dictionaryKeysToArray2 = Array(anotherDictionary.keys)
//print(dictionaryKeysToArray2)

//create dictionary of state and 5 zip codes
//let zips: [String:[Int]] = [
//    "california" : [12345, 567891, 98547],
//    "arizona" : [54876, 54876, 83154]
//]

//print(zips)

//set declaration and empty initialization
//let newSet = Set<String>()

//create explicit set, loop through set, contains a value
//let explicitSet: Set<String> = ["hello", "world"]



//declare and initialize an empty set
//let emptySet = Set<String>()

//create explicit set, documentation, contains a value
//var newSet: Set<String> = ["water", "coffee", "tea"]
//newSet.contains("coffee")

//loop through set
//for drink in newSet {
//    print("we offer \(newSet.count) drinks, \(drink)")
//}

//basic function
//func basicFunction() {
//    print("some function")
//}
//basicFunction()

//function with one parameter
//func OneParameter(number: Int) {
//    print("\(number) items")
//}
//OneParameter(number: 12)

//function with multiple parameters
//func addition(firstNum: Int, secondNum: Int) {
//    let answer = firstNum + secondNum
//    print(answer)
//}
//addition(firstNum: 3, secondNum: 2)

//explicit parameter names
//func explicitParameters(word favoriteColor: String) {
//    print("his favorite color is \(favoriteColor)")
//}
//explicitParameters(word: "blue")

//variadic parameters
//func greetEveryone(person name: String...) {
//    for individual in name {
//        print("hello \(individual)!")
//    }
//}
//greetEveryone(person: "Kevin", "Marlene", "Mochi")

//default parameter and modify one output
//func goodMorning(person name: String, punctuation: String = ".") {
//    print("Good morning \(name)\(punctuation)")
//}
//goodMorning(person: "Kevin")
//goodMorning(person: "Marlene", punctuation: "!")

//function with _, return function
//func withUnderScore(_ word1: String) {
//    print("\(word1)")
//}
//withUnderScore("Hello world")

//nested function call
//func someMath(first: Int, second: Int) {
//    let addition = first + second
    
//    func add10(number: Int) {
//        print(number + 10)
//    }
    
//    add10(number: addition)
//}

//someMath(first: 1, second: 2)

//function with multiple returns
//func returnMultipleNums(num1: Int, num2: Int, num3: Int, num4: Int) -> (Int, Int) {
//    let firstNumberAdded = num1 + num2
//    let secondNumberAdded = num3 + num4
//
//    return (firstNumberAdded, secondNumberAdded)
//}
//returnMultipleNums(num1: 2, num2: 2, num3: 3, num4: 3)

//function with optional parameter and return type
//func sayMiddleName(first: String, middle: String?, last: String) -> String? {
//    if let middleName = middle {
//        return "\(middleName)"
//    }
//    return "no middle name"
//}

//sayMiddleName(first: "Kevin", middle: nil, last: "Tran")

//guard statement in function - return middle name
//func sayMiddleName(first: String, middle: String?, last: String) -> String? {
//    guard let hasMiddleName = middle else {
//        print("no middle name found")
//        return "no middle name found"
//    }
    
//    return "your middle name is \(hasMiddleName)"
//}
//sayMiddleName(first: "Kevin", middle: nil, last: "Tran")


//function, void and empty (typealiase)
//func greet(){
//    print("hello")
//}

//func greet2() -> Void {
//    print("hello")
//}

//func greet3() -> () {
//    print("hello")
//}


