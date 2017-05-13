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





