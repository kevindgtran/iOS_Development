import UIKit

//nil-coalescing operator
//var isOn: String? = "On"
//print("The light is \(isOn ?? "off")")

//ranges
//let list = [[1,2,3],
//            [4,5,6],
//            [7,8,9]
//            ]
//for group in list {
//    print("The third item in each sub array is \(group[2])")
//}

//for number in 5..<10 {
//    print(number)
//}

//logic
//let hasBread: Bool? = true
//let hasMeat: Bool? = true
//let hasCheese: Bool? = true
//if (hasBread! && hasMeat! && hasCheese!) {
//    print("Can make a sandwich")
//}
//if let hasBread = hasBread, let hasMeat = hasMeat, let hasCheese = hasCheese {
//    print("Yup can make bread")
//}
//func makeSandwich(bread: Bool?, meat: Bool?, cheese: Bool?) -> String {
//    guard let hasBread = bread else { return "no bread"}
//    guard let hasMeat = meat else { return "no meat" }
//    guard let hasCheese = cheese else { return "no cheese" }
//
//    if hasBread && hasMeat && hasCheese {
//        return "we can make a sandwich!"
//    } else {
//        return "we can't make a sandwich"
//    }
//}
//makeSandwich(bread: true, meat: false, cheese: true)

//string initialization
//let emptyString = ""
//let anotherEmptyString = String()
//let newGreeting = emptyString + "hello" + " world"
//print(newGreeting)

//String looping
//let name = "Bobby"
//for letter in name.uppercased() {
//    print(letter)
//}

//arrays
//var alist: [String] = []
//let anotherList = [String]()
//alist.append("One")
//let a2DList = [[1,2,3],
//               [4,5,6],
//               [7,8,9]
//              ]
//let three = a2DList[0][2]
//let seven = a2DList[2][0]
//let listOfThrees = Array(repeatElement(3, count: 5))
//var studyMaterials: [String] = ["Laptop", "Books"]
//studyMaterials.append("Internet")
//var greatStudyMaterials: [String] = ["Practice Interviews", "math and algorithm websites"]
//studyMaterials += greatStudyMaterials
//print(studyMaterials)
//print("I've found that \(studyMaterials[3]) and \(studyMaterials[4]) are really helpful!")
//for thing in studyMaterials.enumerated() {
//    print("\(thing.offset + 1). \(thing.element)")
//}
//for (number, item) in studyMaterials.enumerated() {
//    print("\(number + 1). \(item)!!!")
//}

//sets
//var aNewSet = Set<String>()
//let anotherSet = Set<Character>()
//aNewSet.insert("First")
//print(aNewSet)
//let aListOfStuff: Set<String> = ["Rufus", "Buddy", "Buddy"]
//print(aListOfStuff.first!)

//Dictionaries
//var emptyDict: [String: String] = [:]
//emptyDict["hot dog and "] = "bun"
//print(emptyDict)
//let anotherEmptyDict = [String: String]()
//let dict = ["name": "Bobby",
//            "age": "twenty-two",
//            "favFood": "Pizza"
//            ]
//var dict2: [String: Int] = ["address": 123,
//                            "phone": 5551234,
//                            "health": 100]
//print("There are \(dict2.count) key value pairs in dict2")
//dict2["weight"] = 165
//dict2.count
//dict2["weight"] = 155
//if let newWeight = dict2["weight"] {
//    print("he now weighs \(newWeight)")
//}
//dict2["address"] = nil
//dict2.count
//for (pumpkin,latte) in dict2 {
//    print(pumpkin, latte)
//}
//let dict2Array = [Int](dict2.values)

//control flow
//let listOfNames: [String] = ["Bob", "Mary", "Justin"]
//for (number, name) in listOfNames.enumerated() {
//    print("\(number + 1). \(name)")
//}
//let aDict: [String: Bool] = ["Milk": true,
//                             "eggs": true,
//                             "coffee": true
//                            ]
//for item in aDict {
//    print(item)
//}
//let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4, "dog": 4]
////print statement of each animal and number of legs
//for animal in numberOfLegs {
//    print("the \(animal.key) has \(animal.value) legs")
//}

//print all the base 3 values up to 10. ie 3,9,27,...

//loop through 10 times, on each loop multiply and update an answerVariable - on each iteration update answerVariable to the product of itself and base 3
//var answerVariable = 1
//let base = 3
//for _ in 1...10 {
//    answerVariable = answerVariable * base
//    print(answerVariable)
//}

//print the multiples of 5 from 0 - 50
//loop through and only return divisibles of 5
//for f in 0...50 {
//    if (f % 5 == 0) {
//        print(f)
//    }
//}
////loop through using stride to set the from, to and by what stride
//for n in stride(from: 0, to: 55, by: 5) {
//    print(n)
//}
//for f in stride(from: 0, through: 50, by: 5) {
//    print(f)
//}
//While loops
//var n = 1
//while (n < 10) {
//    print(n)
//    n = n + 1
//}
//create an array of values 0-25, using repeating
//let finalSquare = 25
//var board = [Int](repeatElement(0, count: finalSquare + 1))
//var square = 0
//var diceRoll = 0
//while square < finalSquare {
//    // roll the dice
//    diceRoll += 1
//    if diceRoll == 7 { diceRoll = 1 }
//    // move by the rolled amount
//    square = square + diceRoll
//    if square < board.count {
//        // if we're still on the board, move up or down for a snake or a ladder
//        square = square + board[diceRoll]
//    }
//}
//print("Game over!")
//uinary operators
//var sum = Int()
//sum = +3
//sum = sum + 7
//sum = sum - 5
//print(sum)
//repeat-while
//var n = 0
//repeat {
//    print("first")
//    n = n + 1
//} while (n < 3)
//    print("last")
//switch statements
//let letter = "A"
//switch letter {
//case "c", "C":
//    print("found C")
//case "a", "A":
//    print("found A")
//default:
//    print("could not find letter")
//}
//let countTime = Int()
//var finalTime = String()
//switch countTime {
//case 0:
//    finalTime = "zero"
//case 1..<20:
//    finalTime = "low"
//case 20..<35:
//    finalTime = "good"
//case 35..<50:
//    finalTime = "too long"
//default:
//    finalTime = "Could not record time"
//}
//let somePoint = (1,1)
//switch somePoint {
//case (0, 0):
//    print("At the center")
//case (_, 0):
//    print("somewhere on the y-axis")
//case (0, _):
//    print("somewhere on the x-axis")
//case (-2...2, -2...2):
//    print("\(somePoint) is in the box")
//default:
//    print("unable to locate somePoint at: \(somePoint)")
//}

//create an algorithm - that returns a phrase removing all the vowels
//declare inputPhrase & outputPhrase variables, create array of characters of vowels, loop through the inputPhrase, on each character loop - check if the array of vowels contains that character if so, do nothing, if not then append the non-vowel letter to the outputPhrase
//let inputPhrase = "great minds think alike"
//var outputPhrase = ""
//let vowels: [Character] = ["a", "e", "i", "o", "u"]
//for letter in inputPhrase {
//    if (vowels.contains(letter)) {
//        //continue
//    } else {
//        outputPhrase.append(letter)
//    }
//}
//print(outputPhrase)
//guard statement

//create a person dictionary with string key and values of name, location, favFood
//var person = [String:String]()
//person = ["name": "Dean",
//          "location": "San Jose",
//          "favFood": "Burgers"
//         ]
//func greetDean(person: [String: String]) -> String {
//    guard let name = person["name"] else { return "no name found" }
//    guard let location = person["location"] else { return "no location found" }
//    guard let favoriteFood = person["favFood"] else { return "no favorite food found" }
//    return "Hello \(name), it's a lovely day in \(location), \(favoriteFood) are my favorite food too!"
//}
//greetDean(person: person)

//functions
//func greetPerson(_ person: String) -> String {
//    return "Hello \(person)"
//}
//greetPerson("Boo")
//print(greetPerson("Bob"))

//func climateGreeting(name: String, location: String) -> String {
//    return "Hello \(name), hope you're enjoying the weather in \(location)!"
//}
//print(climateGreeting(name: "Sandy", location: "Hawaii"))











//recursion
//print all the numbers from 1 - N with recursion
//func printNums(N: Int) {
//    var num = 1
//    while (num <= N) {
//        print(num)
//        num += 1
//    }

//func printFirstNums(_ N: Int) {
//    if N > 1 {
//        printFirstNums(N - 1)
//    }
//    print(N)
//}
//printFirstNums(3)





////factorial with recursion
//func factorial(number: Int) -> Int {
//    var answer: Int = 1
//    if number == 1 {
//        return 1
//    } else if (number < 1) {
//        print("Only positive numbers")
//        return 0
//    } else {
//        answer = number * factorial(number: number - 1)
//    }
//    return answer
//}
//factorial(number: 4)










