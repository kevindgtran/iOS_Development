//: Playground - noun: a place where people can play

import UIKit

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ENUMERATIONS

//swift built in types (Strings, Bool, Dictionaries, etc.
//enums let us create a new type instance, which is a defined list of cases

//create an enum
//enum Alignments {
//    //possible values of the enum
//    case left
//    case center
//    case right
//}
//
//var style: Alignments
//var word: String
//var arrayList: [String] = ["one", "two"]
//
////new instance of newly created enum
//var format: Alignments = Alignments.left
//print(format)

/////////////////////////////////////////////////EXAMPLE 1
//create enum of seasons
//enum Season {
//    case spring
//    case winter
//    case fall
//    case summer
//}
//create new variable using custom enum type instance
//var bbqWeather: Season = Season.summer
//var hotChocolateWeather = Season.winter //using type inference
//print(bbqWeather)
//var coldWeather = Season.fall
//coldWeather = .winter //infering the enum
//print(coldWeather)
//coldWeather == .winter ? "bring a jacket" : "bring a hat"

//use switch statement to handle possible enum type, values
//var currentWeather = Season.summer
//switch currentWeather {
//case .fall :
//    print("leaves are changing colors")
//case .winter :
//    print("it is cold")
//case .spring :
//    print("look at all the plants!")
//case .summer :
//    print("lets bbq!")
//    //DO NOT ADD default in switch statement going through a enum values. This is because we want the switch statement run through all possible enum cases, having a default lets the compiler run without telling us we're missing an enum case value
//}

/////////////////////////////////////////////////EXAMPLE 2
//enum LightBulb {
//    case on
//    case off
//    
//    func surfaceTemperature(_ ambient: Double) -> String {
//        switch self {   //use self as the switch statement needs to check on LightBulb aka it "self"
//        case .on :
//            return "Because the bulb's ON its \(ambient) degrees"
//        case .off :
//            return "the lights off... so its cold"
//        }
//    }
//}
//create variable with new enum type, set ambient temp
//var roomLights: LightBulb = LightBulb.off
//var ambient = 65.0

//create new variable set to new enum variable, method and pass in ambient value
//var roomTemp = roomLights.surfaceTemperature(ambient)
//print(roomTemp)

/////////////////////////////////////////////////EXAMPLE 3
//create enum for directions
//enum Directions {
//    case north, east, west, south
//    
//    func move(_ direction: String) -> String {
//        switch self {
//        case .east :
//            return "east siiide lets go!"
//        case .west :
//            return "west coast cruising!"
//        case .north :
//            return "to the north pole!"
//        case .south :
//            return "going downtown!"
//        }
//    }
//}
//
//var drivingDirection: Directions = Directions.north
//var direction = "north"
//var roadTrip = drivingDirection.move(direction)
//print(roadTrip)

/////////////////////////////////////////////////EXAMPLE 4
//coins



/////////////////////////////////////////////////EXAMPLE 5
//rating system



////////////////////////////////////////REVERSED WORD
//func reverse(word: String) -> String{
//    let reversedWord = String(word.characters.reversed())
//    return reversedWord
//}
//reverse(word: "Kevin")

////////////////////////////////////////REPEAT STRING
//func repeatString(phrase1: String, repeatNum: Int) -> String {
//    let repeatString = String(repeating: phrase1, count: repeatNum)
//    return repeatString
//}
//repeatString(phrase1: "hello world!", repeatNum: 3)

////////////////////////////////////////IS EQUAL
//func isEqual(sentence1: String, sentence2: String) -> Bool {
//    if sentence1.lowercased() == sentence2.lowercased() {
//        return true
//    } else {
//        return false
//    }
//}
//isEqual(sentence1: "coding is fun!", sentence2: "CODING IS FUN!")

////////////////////////////////////////FAHRENHEIT TO CELSIUS
//func convertsFtoC(fValue: Double) -> String {
//    let celsiusValue = (fValue - 32) * 5/9
//    return "\(celsiusValue) degrees celcius"
//}
//convertsFtoC(fValue: 32)

////////////////////////////////////////CELSIUS TO FAHRENHEIT
//func convertsCtoF(cValue: Double) -> String{
//    let fahrenheitValue = cValue * 9/5 + 32
//    return "\(fahrenheitValue) degrees fahrenheit"
//}
//convertsCtoF(cValue: 0.0)

////////////////////////////////////////Kilobytes to bytes
//func kiloToBytes(kilobyte: Int) -> String {
//    let conversion = kilobyte * 8000
//    return "\(kilobyte), kylobyte is \(conversion) bytes!"
//}
//kiloToBytes(kilobyte: 2)

//func partyTime(goodMusic: Bool, numPeople: Int, food: String) -> String {
//    if goodMusic && numPeople >= 3 && food == "tacos" {
//        return "good times!"
//    } else {
//        return "this parties missing something."
//    }
//}
//partyTime(goodMusic: true, numPeople: 3, food: "tacos")

//func canBrew(hasWater: Bool, hasSugar: Bool, hasHops: Bool, hasYeast: Bool) -> String {
//    if hasWater && hasSugar && hasHops && hasYeast {
//        return "you can brew!"
//    } else {
//        return "you're missing an important ingredient."
//    }
//}
//canBrew(hasWater: true, hasSugar: true, hasHops: true, hasYeast: true)

//func decimalToHexadecimal(decimal: Int) -> String {
//    switch decimal {
//    case 10:
//        return "A"
//    case 11:
//        return "B"
//    case 12:
//        return "C"
//    case 13:
//        return "D"
//    case 14:
//        return "E"
//    case 15:
//        return "F"
//    default:
//        return "\(decimal)"
//    }
//}
//decimalToHexadecimal(decimal: 10)

//func max(num1: Int, num2: Int) -> String {
//    if num1 > num2 {
//        return "\(num1)"
//    } else if num1 == num2 {
//        return "equal"
//    } else {
//        return "\(num2)"
//    }
//}
//max(num1: 15, num2: 100)

//func max(num1: Int, num2: Int) -> Int {
//    return num1 > num2 ? num1 : num2
//}
//max(num1: 12, num2: 2)

//func min(value1: Int, value2: Int) -> Int {
//    if value1 > value2 {
//        return value1
//    } else {
//        return value2
//    }
//}
//min(value1: 12, value2: 102)

//func min(value1: Int, value2: Int) -> Int {
//    return value1 > value2 ? value1 : value2
//}
//min(value1: 100, value2: 20)


////////////////////////////////////////////////////////UIIMAGE
//var image = UIImage(named: "me.png")
//let tacosImage = UIImage(named: "tacos.jpg")
//let cuteDogImage = UIImage(named: "cuteDog.jpg")
//let breakTimeActivity = UIImage(named: "youtube.jpg")
//let secretToSuccess = UIImage(named: "books.jpeg")




