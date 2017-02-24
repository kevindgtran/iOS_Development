//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//declaring constants, variables with diff data types
//let name: String = "Kevin"
//var age: Int = 29
//var favoriteFood: String = "donuts"
//var favoriteNum: Double = 3.1415
//let isKool: Bool = true

//floats are precise up to 6 digits
//Doubles are precise up to 15 digits (standard)

//updating a variables
//var greetings = "hello my name is \(name)"
//greetings = "\(greetings)!"
//greetings = "\(greetings) Welcome to the swift club"

//casting - converting datatypes
//var pi: Double = 3.1415
//print("now pi is an int \(Int(pi))")
//var sevenPointOne: Double = 7.1
//var newSevenPointOne = Int(sevenPointOne)
//var oneHundred: Int = 100
//var newOneHundred = Double(oneHundred)
//var numIsBool = Bool(5.5)
//var someNumber = "17"
//var newSomeNumber = Int(someNumber)

//get the remainder(whole number) of 3 into 5.3
//var remainder1 = (Int(5.3) % 3)
//var remainder2 = Int(9.3) % 3

//math
//var sum = 2 + 3
//var mult = 2 * 3
//var division = 6 / 3
//var subtract = 3 - 2
//adding one to a number
//var num = 3
//print(num + 1)
//var num = 5
//num += 1
//print(num)

//////////////////////////////////////////////////COMPOUNDING VARIABLES
//var num = 5
//num += 5
//print(num)
//num -= 5
//print(num)
//num *= 5
//print(num)
//num /= 5
//print(num, terminator:"")

//////////////////////////////////////////////////RANDOM NUMBER GENERATOR
//var randomNum = arc4random() % 5
//print(randomNum)
//var randomNumUpto10 = arc4random() % 11
//print(randomNumUpto10)
//var randomNumUpTo100 = arc4random() % 101
//print(randomNumUpTo100)
//var randomNumTo20 = arc4random() % 21
//print(randomNumTo20)

//////////////////////////////////////////////////LOGICAL OPERATOR && IF STATEMENTS
//print the largest value
//var num1 = 300
//var num2 = 250
//var num3 = 200
//if num1 > num2 && num1 > num3{
//    print("\(num1) is the largest")
//} else if num3 > num2{
//    print("\(num3) is the largest")
//} else {
//    print("\(num2) is the largest")
//}

//////////////////////////////////////////////////TERNARY OPERATOR
//var isSpicy = true
//isSpicy ? "lets eat!" : "needs some hot souce!"
//var cleanHouse = false
//cleanHouse ? "ahh its clean" : "need to clean the house!"
//var daysOfVacation = 3
//daysOfVacation >= 3 ? "we can take a trip!" : "no vacation yet"

//////////////////////////////////////////////////SWITCH STATEMENTS
//var cupOz = 12
//switch cupOz {
//case 1...8:
//    print("short cup")
//case 8...12:
//    print("tall cup")
//case 12...16:
//    print("grande cup")
//case 16...20:
//    print("vente cup")
//default:
//    print("no cup size")
//}

//var ingredients = ""
//switch ingredients {
//case "rice":
//    print("you can make fried rice")
//case "pasta":
//    print("you can make spaghetti")
//default:
//    print("need to get groceries")
//}

////////https://youtu.be/6Zf79Ns8_oY
//paused at 15:20





////////////////////////////////////////////////////////CONSTANTS AND VARIABLES
//var str = "Hello, playground"
//let maxNumOfLoginAttempts = 10
//var currentLoginAttempt = 0
//var x = 0, y = 2, w = "hello"
//print(w)
//var age = 99
//let name = "Kevin Tran"
//age = 29
//print(name)
//var time = "10:59am"; print(time)
//let heart = "\u{2665}"
//var isHungry = true

////////////////////////////////////////////////////////MATH AND ARITHMATIC
//let numThree = 3
//let pointOneFour = 0.1415
//let numPi = Double(numThree) + pointOneFour
//let heatherMilesPerHour = 60.8
//let hoursInWeek = 168
//let heatherTraveledinOneWeek = heatherMilesPerHour * Double(hoursInWeek)
//var timePerCust = 1.66666667
//let onethousandCust = 1000 * timePerCust
//let totalPeapodsPickedADay = (6 * 2400) * 9

////////////////////////////////////////////////////////TYPE OF
//typeof operator
//type(of:age)
//type(of:numThree)
//type(of:time)
//type(of:heart)
//type(of:sfWeather)
//type(of:isHungry)

////////////////////////////////////////////////////////TERNARY OPERATOR
//var weather = 45
//weather < 50 ? "Its cold!" : "Its confortable"
//sfWeather < 60 ? "Its cold in the city... thats normal" : "its warm in san francisco"
//nycWeather > 80 ? "It's hot in New York" : "its chilly in new york city :)"
//londonWeather == 87 ? "the weather is peachy!" : "weather is not well"
//let balance = 3000
//balance >= 3500 ? "new shoes!" : "can't buy those shoes"

////////////////////////////////////////////////////////FOR LOOPS
//let seriesOfCharacters = "A series of characters"
//for element in seriesOfCharacters.characters {
//    print(element)
//}
//let randomLetters = "uekwjno8207 kadmj9374"
//for spot in randomLetters.characters {
//    print(spot)
//}
//let zeroToTen = 0...10
//for numberz in zeroToTen {
//    print(numberz)
//}
//for eachCharacter in "Marlene".characters {
//    print(eachCharacter)
//}
//for keypad in "keyboard".characters {
//    if (keypad == "e") {
//        print(keypad)
//        break
//    }
//}

////////////////////////////////////////////////////////WHILE LOOPS
//var number = 1
//while(number <= 500) {
//    print(number)
//    number += 1
//}
//var number = 500
//while(number >= 0) {
//    print(number)
//    number -= 1
//}
//var starting = 1
//
//repeat {
//    print("Kevin")
//    starting += 1
//} while starting <= 777
//var startingPoint = 1
//while startingPoint <= 10000 {
//  if (startingPoint % 2 != 0) {
//    print(startingPoint)
//    }
//  startingPoint += 1
//}
//for divisibleByThree in 1...10000 {
//    if (divisibleByThree % 3 == 0) {
//        print(divisibleByThree)
//    }
//}
//var startingPoint = 1
//while (startingPoint <= 10000) {
//    if (startingPoint % 3 == 0) {
//        print(startingPoint)
//    }
//startingPoint += 1
//}
//let birthdayMonth = "October"
//var birthdayDay = 1
//
//while (birthdayDay <= 31) {
//    if (birthdayDay == 1 || birthdayDay == 21) {
//        print("\(birthdayMonth), \(birthdayDay)st")
//    } else if (birthdayDay == 3 || birthdayDay == 23) {
//        print("\(birthdayMonth), \(birthdayDay)rd")
//    } else if (birthdayDay == 2 || birthdayDay == 22) {
//        print("\(birthdayMonth), \(birthdayDay)nd")
//    } else {
//        print("\(birthdayMonth), \(birthdayDay)th")
//    }
//    birthdayDay += 1
//}












