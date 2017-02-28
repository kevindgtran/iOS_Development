//: Playground - noun: a place where people can play

import UIKit


/*:
 
 # Master Pla
 
 */

// write code here


/*:
 
 # Master Playground
 
 */


///////////////////////////////////////////////////////////////////////////////////////////////////////////VARIABLES, CONSTANTS, TYPES
//Definition: variables and constants store data in the application, to later be passed around your application
//Syntax:
//var variableName: String = "variableValue"
//let constantName: String = "constantValue"
//Updating:
//variableName = "updatedVariable"
//variableName += "addingAndUpdatingVariable"
//Examples: 30
//var x = 0, y = 2, w = "hello"
//let heart = "\u{2665}"
//var greeting: String = "Hello world"
//var word: String = "taco"
//var city: String = "Hillsdale"
//var transportation: String = "Train"
//var lunch: String = "spaghetti"
//var toy: String = "bike"
//var medicine: String = "advil"
//var book: String = "Swift Programming"
//var car: String = "Chevy Volt"
//var dogName: String = "Rufus"
//var bookStore: String = "Barnes & Noble"
//var restaurant: String = "The Counter"
//var beer: String = "Anderson Valley Boont"
//var gym: String = "24 hour fitness"
//var phone: String = "iphone"
//var shape: String = "box"
//var sportsTeam: String = "Worriors"
//var woodType: String = "Maple"
//var sound: String = "music"
//var carParts: String = "radiator"
//var tools: String = "screw driver"
//var ride: String = "lyft"
//var backpack: String = "north face"
//var benchColor: String = "blue"
//var jacketType: String = "blazer"
//var exercise: String = "yoga"
//var dinner: String = "Steak and potatoes"
//var haircut: String = "bowl cut"
//var fruit: String = "apple"
//var streetName: String = "Bush St."
//var houseColor: String = "yellow"
//let state: String = "California"
//let carIsWorking: Bool = true
//let lovesMusic: Bool = true
//let hours: Int = 24
//let seconds: Int = 60
//let pi: Double = 3.1415
//let college: String = "Stanford"
//let rideHeight: String = "48 inches"
//let year: String = "365 days"
//let coffee: String = "delicious"
//let ice: String = "cold"
//let name: String = "George"
//let isKool: Bool = true
//let worksHard: Bool = true
//let hasKids: String = "Yes"
//let favoriteColor: String = "Green"
//let language: String = "English"
//let sun: String = "hot"
//let carSeats: Int = 4
//let bug: String = "Spider"
//let ocean: String = "Pacific"
//let hungry: Bool = true
//let planetSize: Double = 3959
//let ounce: Int = 8
//let inches: Int = 12
//let hasBreadAndCheese: Bool = true
//let wineType: String = "Red"
//let energy: Int = 10
//Looping through 30 examples:
//for letter in state.characters {
//    print(letter)
//}
//for i in college.characters {
//    print(i == "a" ? true : i)
//}
//for l in rideHeight.characters {
//    if l == " " {
//        print("-", terminator: "")
//    } else {
//        print(l, terminator: "")
//    }
//}
//for space in year.characters {
//    print(space, terminator: "")
//}
//for character in coffee.characters {
//    print(character == "o" ? "😍" : character)
//}
//for cube in ice.characters {
//    if cube == "o" {
//        print("☕️")
//    } else {
//        print(cube)
//    }
//}
//for character in name.characters {
//    print(character, terminator: "")
//}
//for kid in hasKids.characters {
//    switch kid {
//    case "y":
//        print("🙎🏻‍♂️")
//    case "Y":
//        print("🙎🏻‍♂️")
//    case "e":
//        print("🙎🏻")
//    case "s":
//        print("👪")
//    default:
//        print("none")
//    }
//}
//for leaf in favoriteColor.characters {
//    print(leaf == "e" ? "🍃" : leaf)
//}
//for letter in language.characters {
//    print(letter)
//}
//for suntan in sun.characters{
//    print(suntan == "o" ? "☀️" : suntan)
//}
//for creature in bug.characters{
//    print(creature)
//}
//for letter in ocean.characters{
//    print(letter, terminator: "")
//}
//for letter in "red".characters{
//    print(letter)
//}
//for char in "samari".characters {
//    print(char, terminator: "")
//}
//for pages in "book".characters {
//    print(pages, terminator: "")
//}
//for letter in "legend".characters {
//    print(letter, terminator: "")
//}
//for iterator in "outfit".characters {
//    print(iterator)
//}
//for button in "keyboard".characters {
//    print(button)
//}
//for jumping in "dancing".characters {
//    print(jumping)
//}
//for loop in "iterator".characters {
//    print(loop)
//}
//for drop in "water".characters {
//    print(drop)
//}
//for blade in "grass".characters {
//    print(blade)
//}
//for tree in "forest".characters {
//    print(tree)
//}
//for letter in "contract".characters {
//    print(letter)
//}
//for bricks in "building".characters {
//    print(bricks)
//}
//for night in "year".characters {
//    print(night)
//}
//for iterator in "string".characters {
//    print(iterator)
//}
//for iterator in "string".characters {
//    print(iterator)
//}
//for iterator in "string".characters {
//    print (iterator)
//}
//Type conversion 30 examples:
//Int(3.4)
//Int("123")
//Int(7.3455677654)
//Int(0.790)
//Int("1000")
//Int(-5)
//Int(9009)
//Int(7.05)
//Int("-90876")
//Int(3.999999)
//Int(-1)
//Double(-23456)
//Double(3.0899)
//Double(1)
//Double(10)
//Float(3.9239559435749494759483937485649394)
//Float(0.8464475758476585854)
//Float(8.98765436789)
//Float(-1223.234562345)
//String(1)
//String(1739475957)
//String(-92738464)
//String(3.1514)
//String(-0975087)
//String(123)
//String(12334.789)
//String(23456)
//String(13242345)
//String(-23478596)
//String(12435.987)
//String(099283475)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////(LOGIC) SWITCH STATEMENTS
//Definition: controls the flow of your program based on conditions matching specific conditions
//Syntax:
//switch variableName {
//case condition1:
//    execute this code
//case condition2, condition3:
//    execute this code
//case condition4...condition10:
//    execute this code
//default:
//    otherwise execute this code
//}
//Examples: 30
//var alertCode: Int = 100
//switch alertCode {
//case 100:
//    print("\(alertCode) is good!")
//default:
//    print("not good")
//}

//var size: String = "LARGE"
//switch size.lowercased() {
//case "small":
//    print("you ordered small")
//case "medium":
//    print("you ordered medium")
//case "large":
//    print("you ordered large")
//default:
//    print("no size found")
//}

//var drink: String = "Vente"
//drink = drink.lowercased()
//switch drink.lowercased() {
//case "tall":
//    print("a \(drink) is 3 dollars")
//case "grande":
//    print("a \(drink) is 4 dollars")
//case "vente":
//    print("a \(drink) is 5 dollars")
//default:
//    print("drink size not found")
//}

//var numVotes: Int = 10
//switch numVotes {
//case 0..<100:
//    print("not enough votes")
//case 100..<200:
//    print("enough votes")
//case 200...500:
//    print("you won!")
//default:
//    print("not sure number of votes")
//}

//var num: Int = 9
//switch num {
//case 9, 10:
//    print("Great job!")
//case 7..<9:
//    print("Good job!")
//case 0...6:
//    print("try again")
//default:
//    print("could not calculate number")
//}

//var teamSize: Int = 11
//switch teamSize {
//case 11:
//    print("Ocean's 11")
//case 13:
//    print("Ocean's 13")
//default:
//    print()
//}

//var yearsExp: Int = 8
//switch yearsExp {
//case 0, 1:
//    print("Junior")
//case 2,3,4:
//    print("SWE 2")
//case 5...9:
//    print("senior")
//default:
//    print()
//}

//var animal: String = "tiger"
//switch animal {
//case "tiger":
//    print("orange stripes")
//case "giraff":
//    print("long neck")
//case "dog":
//    print("man's best friend!")
//default:
//    print()
//}

//var emoji = "😎"
//switch emoji {
//case "😎":
//    print("kool")
//case "😍":
//    print("love")
//default:
//    print("emoji not found")
//}

//var transportation: String = "CAR"
//transportation = transportation.lowercased()
//switch transportation {
//case "car", "bus":
//    print("traffic")
//case "plane", "jet":
//    print("fast")
//case "bike","scooter":
//    print("dangerous")
//default:
//    print
//}

//var cost = 50.99
//switch Int(cost) {
//case 0...100:
//    print("affordable")
//case 101...300:
//    print("expensive")
//default:
//    print("out of budget")
//}

//var state: String = "wa"
//state = state.lowercased()
//switch state {
//case "california", "ca":
//    print("CALIFORNIA!")
//case "washington", "wa":
//    print("WASHINGTON!")
//case "new york", "ny":
//    print("NEW YORK!")
//default:
//    print
//}

//var numPeople: Int = 1
//switch numPeople {
//case 1:
//    print("good")
//case 2:
//    print("great")
//case 3:
//    print("trifecta!")
//default:
//    print("")
//}

//var color: String = "#FF0000"
//color = color.lowercased()
//switch color {
//case "red", "#ff0000":
//    print("RED")
//case "blue", "#0000ff":
//    print("BLUE")
//default:
//    print()
//}

//var time: Int = 15
//switch time {
//case 0..<10:
//    print("almost here!")
//case 10...30:
//    print("time for more coding practice")
//default:
//    print()
//}

//var temp: Int = 90
//switch temp {
//case 0..<50:
//    print("its cold!")
//case 50..<80:
//    print("its a bit chilly")
//case 80...90:
//    print("its perfect weather!")
//default:
//    print()
//}

//var speed: Double = 10.7
//switch Int(speed) {
//case 0...15:
//    print("we're going slow")
//case 16...25:
//    print("moderate speed")
//default:
//    print()
//}

//var winner: Bool = true
//switch winner {
//case true:
//    print("Kevin won!")
//default:
//    print("Kevin lost...")
//}

//var seatsAvail: Int = 4
//switch seatsAvail {
//case 1,2,3,4:
//    print("there's \(seatsAvail) available! BOOK NOW HERE ☑️")
//case 5...100:
//    print("there's plenty of seats available!")
//default:
//    print("number of seats not found")
//}

//var lateTime: Int = 10
//switch lateTime {
//case 1:
//    print("train is \(lateTime) minute behind, sorry for the inconvenience")
//case 2...60:
//    print("train is \(lateTime) minutes behind, sorry for the inconvenience")
//default:
//    print("all trains running on time")
//}

//var name: String = "Sir Lance-Olot"
//switch name.lowercased() {
//case "sir lance-olot":
//    print("Welcome \(name)!")
//default:
//    print("unable to find username")
//}

//var food: String = "Cereal"
//switch food.lowercased() {
//case "eggs":
//    print("you can make an omelete!")
//case "cereal":
//    print("you can make cereal")
//default:
//    print("not sure what you can make with \(food)")
//}

//var hasRide: Bool = true
//switch hasRide {
//case true:
//    print("awesome we have a ride!")
//default:
//    print("uh oh, no ride")
//}

//var hasInternet: Bool = true
//switch hasInternet {
//case true:
//    print("yes we have internet! Let's get to work")
//default:
//    print("half day everyone! 😎")
//}

//var leftDirection: Bool = false
//switch leftDirection {
//case true:
//    print("turn left")
//default:
//    print("turn right")
//}

//var oilChange: Int = 3000
//switch oilChange {
//case 0..<2000:
//    print("ok")
//case 2000..<3000:
//    print("Your at \(oilChange) miles, you should get an oil change soon")
//case 3000...5000:
//    print("OIL CHANGE OVERDUE")
//default:
//    print()
//}

//var weather: String = "Sunny"
//switch weather.lowercased() {
//case "sunny", "hot":
//    print("bring a hat")
//case "raining", "rainy", "rain":
//    print("bring an umbrella")
//default:
//    print()
//}

//var numWalls: Int = 4
//switch numWalls {
//case 1,2,3:
//    print("\(numWalls) walls is less than a standard room, costing you $1000")
//case 4:
//    print("thats a standard room rate of $1000")
//case 5...10:
//    print("\(numWalls) walls is a custom room, cost vary")
//default:
//    print("unable to determine room cost, need to do in-person estimate")
//}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////(LOOPS) FOR LOOPS
//Definition: iterate through a set number/ range and upon each iteration execute the code within the {}
//Syntax:
// for ITERATOR in RANGE {
//      EXECUTE CODE
//}
//Examples: 30

//for number in 0...3 {
//    print(number)
//}

//for duck in 0...5 {
//    print("Hello ducky!")
//}

//for item in 1...3 {
//    print("\(item). Check!")
//}

//for count in 0...10 where count == 3 {
//    print("\(count) is found!")
//}

//var names: [String] = ["Bob", "Amy", "Tom", "Mary", "Oscar"]
//for name in names where name == "Amy" {
//    print("Welcome \(name)!")
//}

//for evenNumber in 0...20 where evenNumber % 2 == 0 {
//    print(evenNumber)
//}

//for oddNumber in 0...30 where oddNumber % 2 == 1 {
//    print(oddNumber)
//}

//for _ in 1...10 {
//    print("hello world")
//}

//for _ in 1...30 {
//    print("Practice, Practice, Practice")
//}

//for _ in 1...30 {
//    print("I love tacos")
//}

//for _ in 10..<15 {
//    print("testing testing")
//}

//for _ in 20..<23 {
//    print("GO!", terminator: "")
//}

//for _ in 20...23 {
//    print("can't use negative range")
//}

//var currentLevel: Int = 4
//for level in currentLevel..<10 {
//    currentLevel += 1
//    currentLevel
//    print("remaining levels to beat game \(currentLevel)")
//}

//var currentChapter: Int = 10
//var chaptersRemaining = 21 - currentChapter
//for chapter in currentChapter..<20 {
//    chaptersRemaining -= 1
//    print("only \(chaptersRemaining) left!")
//}

//var startPoint: Int = 2
//for number in startPoint..<20 where number % 2 == 0 {
//    print("\(number) is even")
//}

//var multOf3: Int = 0
//for _ in 0..<10 {
//    multOf3 += 3
//    print(multOf3)
//}

//var multOf7: Int = 0
//for _ in 14..<21 {
//    multOf7 += 7
//    print(multOf7)
//}

//var checkList: [String] = ["pizza", "sandwich", "chicken", "donut"]
//for _ in 0..<checkList.count {
//    print(checkList)
//}

//for specificNum in 0..<100 where specificNum == 12 {
//    print(specificNum)
//}

//var name: String = "Bob"
//for _ in 0..<3 {
//    print("\(name) is kool")
//}

//var counter: Int = 0
//for _ in 0..<10 {
//    counter += 5
//    print(counter)
//}

//var years: Int = 1986
//for _ in 0..<30 {
//    years += 1
//    print("\(years) was awesome!")
//}

//var menuItems: Int = 12
//for item in 1...menuItems {
//    print("menu item number \(item), is amazing!")
//}

//for number in 0...20 {
//    if number % 2 == 0 {
//        print("\(number) is even")
//    } else {
//        print("\(number) is false")
//    }
//}

//var maxNum: Int = 100
//for number in 1...maxNum {
//    if number % 15 == 0 {
//        print("FIZZBUZZ")
//    } else if number % 3 == 0 {
//        print("FIZZ")
//    } else if number % 5 == 0 {
//        print("BUZZ")
//    } else {
//        print(number)
//    }
//}

//var topNumber: Int = 50
//for _ in 1...topNumber {
//    topNumber -= 5
//    print(topNumber)
//}

//for drink in 1...8 {
//    if drink == 1 {
//        print("\(drink) cup of water ")
//    } else {
//        print("\(drink) cups of water ")
//    }
//}

//var days: Int = 0
//var years: Int = 10
//for year in 1...years {
//    days += 365
//    print("there are \(days) in \(years) year's")
//}

//var step: Int = 100
//for _ in 0..<step {
//    step -= 1
//    if step == 0 {
//        print("You made it!!!")
//    } else if step == 1 {
//        print("\(step) more step to go!")
//    } else {
//        print("\(step) more steps to go!")
//    }
//}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////OPTIONALS
//Definition: variables that are initialized with a nil value and have the "option" to obtain a future value
//Syntax:
//var name: String?
//name = "Kevin"
//print(name!)

//check if the optional has a value then set to a constant
//if name != nil {
//    let realName = name!
//    print(realName)
//}

//optional binding syntax
//if let temperaryConstant = optionalVariable {
//execute code with temperaryConstant
//} else {
//    no value for optionalVariable, thus it is nil
//}

//updating an optional in place
//var city: String?
//city = "San Francisco"
//city?.append("!")
//print(city!)

//nil default optional
//var error: String?
//error = "404 not found"
//let anError = error ?? "no error at this time"

//if let example
//var userResponse: String?
//userResponse = "kevin@gmail.com"
//if let someResponse = userResponse {
//    print("Welcome \(someResponse)")
//} else {
//    print("no user response")
//}

//var errorCode: String?
//errorCode = "404"
//if let code = errorCode {
//    print("\(code) - error")
//} else {
//    print("no error at this time")
//}

//Examples: 30

//var optionalString: String?
//var optionalInt: Int?
//var optionalBool: Bool?
//var optionalArray: Array<String>?
//var optionalArray2: [String]?
//var optionalArrayOfInts: [Int]?
//var optionalString: String?
//var optionalArray: [Int]?
//var optionalArray2: [Int?] = []
//var optionalDictionary: (String, Int)?
//var optionalDictionary2: (String?, Int?)
//var optionString: String?
//print(optionString == "")
//print(optionString == nil)
//optionString = "Wes"
//var optionalBool: Bool?
//print(optionalBool == false)
//print(optionalBool == nil)

//var book: String?
//book = "Swift Programming"
//if book != nil {
//    let bookValue = book!
//    print(bookValue)
//} else {
//    print("no book value yet")
//}

//var drink: String?
//drink = "H2O"
//if drink != nil {
//    let hydrate = drink!
//    print("drink plenty of \(hydrate)")
//} else {
//    print("no drink chosen yet")
//}

//var design: String?
//design = "stripes"
//if design != nil {
//    let realDesign = design!
//    print("the design pattern is \(realDesign)!")
//} else {
//    print("design not yet chosen")
//}

//var email: String?
//email = "tom@gmail.com"
//if email != nil {
//    let userEmail = email!
//    print("your password was sent to \(userEmail)")
//} else {
//    print("please enter valid email")
//}

//var creditCard: Int?
//creditCard = 1234567890123456
//if creditCard != nil {
//    let userCreditCard = creditCard!
//    print("please review purchase credit card on file - \(userCreditCard)")
//} else {
//    print("please enter valid credit card number")
//}

//var hasWine: Bool?
//hasWine = true
//if hasWine != nil {
//    let wine = hasWine!
//    print("Yes we have wine!")
//} else {
//    print("no wine yet...😩")
//}

//var shoppingList: [String]?
//shoppingList = ["eggs", "milk", "coffee"]
//if shoppingList != nil {
//    let list = shoppingList!
//    print("need to get groceries!")
//} else {
//    print("dont need groceries yet")
//}

//var savings: Int?
//savings = 3000
//if savings != nil {
//    let investments = savings!
//    print("time to invest some savings!")
//} else {
//    print("need to refactor budget & expenses to save more.")
//}

//var numWatts: Int?
//numWatts = 100
//if let power = numWatts {
//    print("the bulb is \(power) watts")
//} else {
//    print("how many watts do we need?")
//}

//var dessert: String?
//dessert = "vanilla ice cream"
//if let treat = dessert {
//    print("mmmm \(treat)")
//} else {
//    print("which dessert would you like?")
//}

//var height: Double?
//height = 6.3
//if let size = height {
//    print("you are \(size)ft tall")
//} else {
//    print("please enter height")
//}

//var reservation: Bool?
//var time: String = "7:30pm"
//reservation = true
//if let booked = reservation {
//    print("Confirmed, your reservation is at \(time)")
//} else {
//    print("no tables available at that time, please try again")
//}

//var vacationDays: Int?
//vacationDays = 3
//if let trip = vacationDays {
//    print("vacation balance is \(trip)")
//} else {
//    print("vacation balance: 0")
//}

//var meeting: Bool?
//meeting = true
//if let time = meeting {
//    print("yes there's a meeting today")
//} else {
//    print("no meetings scheduled at this time")
//}

//var allergies: String?
//allergies = "nuts"
//if let safety = allergies {
//    print("known allergies: \(safety)")
//} else {
//    print("no known allergies")
//}

//var seatPref: String?
//seatPref = "Window"
//if let seat = seatPref {
//    print("confirm: \(seat) seat preferred")
//} else {
//    print("please choose a perferred seat")
//}

//var practice: String?
//practice = "programming"
//practice?.append(" is kool!")
//print(practice!)

//var actor: String?
//actor = "Will"
//actor?.append(" Smith")
//print(actor!)

//var phoneNum: String?
//phoneNum = "123"
//phoneNum?.append("-4567")
//print(phoneNum!)

//var show: String?
//show = "friend"
//show?.append("s")
//print(show!)

//var food: String?
//food = "tacos"
//food?.append(" tacos! TACOS!!!")
//print(food!)

//var gymStuff: [String]?
//gymStuff = ["water bottle", "shorts", "left shoe"]
//gymStuff?.append("right shoe")
//print(gymStuff!)

//var weights: String?
//weights = "25"
//type(of: weights)
//weights?.append("lb")
//print("where are the \(weights!) dumbbells?")

//var errorMessage: String?
//errorMessage = "404 not found"
//let error = errorMessage ?? "no error at this time"

//var isHot: Bool?
//isHot = true
//let hot = isHot ?? false

//var laundry: Int?
//laundry = 2
//let clothes = laundry ?? 0

//var exercise: String?
//exercise = "Yoga"
//let strength = exercise ?? "need to excersice"

//var status: String?
//status = "train is late"
//let train = status ?? "no delays at this time"

//var dishesNeeded: String?
//dishesNeeded = "coffee cups"
//let dish = dishesNeeded ?? "no dishes needed at this time"
//print(dish)

//var wrongPassword: String?
//wrongPassword = "secretpassword"
//let pass = wrongPassword ?? ""

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////STRUCTURES
//Definition: a newly created type, a grouping of specific data in memory, used as a template/ mold for new instances of that struct
//Syntax:
//create new struct called Town
//struct Town {
//    var population: Int = 5240
//    var numberOfStopLights: Int = 4
//
//    func townDescription() {
//        print("Welcome, our town has \(population) people, and \(numberOfStopLights) stop lights")
//    }
//
//    mutating func changePopulation(by amount: Int) {
//        population += amount
//    }
//}

//create new instance of Town struct called myTown
//var myTown = Town()
//    print(myTown.population)
//    print(myTown.numberOfStopLights)
//    myTown.townDescription()
//    myTown.changePopulation(by: 1000)
//    myTown.population

//30 examples
//struct Table {
//    var length: Int = 4
//    var numLegs: Int = 4
//
//    func description() {
//        print("beautiful \(length)ft table!")
//    }
//
//    mutating func changeLength(by feet: Int) {
//        length += feet
//    }
//}
//
//var myTable = Table()
//    myTable.numLegs
//    myTable.length
//    myTable.description()
//    myTable.changeLength(by: 3)
//    myTable.description()

//struct Outfit {
//    var top: String = "shirt"
//    var bottom: String = "pants"
//
//    func description() {
//        print("today I'm wearing a \(top) and \(bottom)")
//    }
//
//    mutating func changeOutfit(by style: String) {
//        top = "\(style) shirt"
//    }
//}
//
//var myOutfit = Outfit()
//    myOutfit.top
//    myOutfit.description()
//    myOutfit.changeOutfit(by: "plaid")
//    myOutfit.description()

//ex 3















///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////CLASSES
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////STRING
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////TUPLES
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////IF STATEMENT
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////CLOSURES
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////PROPERTIES
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////INHERITANCE
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////INITIALIZERS
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////PROTOCALS
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ENUMERATIONS
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ALGORITHMS

//Definition:
//Syntax:
//Examples: 30

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ARRAYS
//declared variable of an array that holds strings
//var bucketList: Array <String> = ["climb mt. everest"]
//var bucketList = ["climb mt. everest"]
//bucketList.append("hot air ballon")
//bucketList.append("ironman")
//bucketList.append("build house")
//print(bucketList)
//bucketList.remove(at: 0)
//print(bucketList)
//bucketList.removeLast()
//bucketList.count
//bucketList.insert("fly", at: 0)
//bucketList.append("world record")
//bucketList[0]
//bucketList[0...2]
////add and update to an array element
//bucketList[0] += " a plane"
//bucketList[2] = "finish ironman"

//var goals: Array<String>
//var friends: Array<String>
//var studentGrades: Array<String>
//var flowerTypes: Array<String>
//var weights: Array<Int>

//array declaration and initilization
//var declaredArray: [String]
//var declaredAndInitialized = [String]()
//var emptyStringArray = [String]()
//var emptyIntArray = [Int]()
//var basketOfFruit = [String]()
//var groupOfNumbers = [Int]()
//var emptyBoolArray = [Bool]()
//emptyBoolArray.isEmpty
//var emptyDoubleArray = [Double]()
//emptyDoubleArray.isEmpty
//type(of:emptyDoubleArray)

//var repeatGreeting = Array(repeating: "Hello there", count: 3)
//var repeatStatement = Array(repeating: "Good morning", count: 2)
//var expression = Array(repeating: "oh yea!", count: 3)
//var numbersOne = Array(repeating: "one", count: 2)
//var numbersTwo = Array(repeating: "two", count: 2)
//var allNumbers = numbersOne + numbersTwo
//var favFruit = Array(repeating: "Apples", count: 3)
//var typeOfArray: [Int] = [1,2,3]
//var typeOfArray: [String] = ["hello", "there", "Kevin"]
//var typeOfArray: [Bool] = [true, false, true]
//var typeOfArray: [Double] = [1.2, 3.4, 5.6]
//var fruitList: [String] = ["Apples", "Oranges"]
//var response = "we have \(fruitList.count) fruits"
//var tableStuff: [String] = ["Laptop", "Coffee"]
//tableStuff.append("water bottle")
//print(tableStuff)
//type(of:tableStuff)
//tableStuff += ["apple"]
//var list: [String] = ["shoes", "socks", "pants"]
//list.append("belt")
//print(list)
//var numbers: [Int] = [1,2,3]
//numbers.append(4)
//print(numbers)
//numbers.remove(at: 0)
//print(numbers)
//numbers.removeFirst()
//print(numbers)
//numbers.removeLast()
//print(numbers)

//var exampleArray: [Int] = [1,2,3]
//for num in exampleArray {
//    print(num)
//}
//var list: [String] = ["Kevin", "Wes", "Scott"]
//for name in list {
//  print(name + "!")
//}

//var colors: [String] = ["Blue", "Red", "Yellow"]
//for color in [0...1] {
//    print(color)
//}

//var array1 = ["Scott", "Kevin", "Wes"]
//var array2: [Double] = []
//var array3: [Int] = []
//var array4: [Float] = []
//
//var mountRushmore: [String] = ["Thomas Jefferson", "George Washington", "Theodore Roosevelt", "Abraham Lincoln"]
//mountRushmore.append("Kanye")
//mountRushmore.remove(at: 0)
//print(mountRushmore)
//
//var names: [String] = ["Scott", "Kevin", "Wes"]
//for name in names {
//    print("hello \(name)!")
//}

//var array1: [Int] = [8, 13, 19, 7]
//var array2: [Int] = [2, 26]
//for num in array1 {
//    array2.append(num)
//}
//print(array2)

//var names: [String] = ["Wes", "Scott", "Joy", "David", "Ella", "Prathi", "Vibhas", "TJ"]
//var future = " is going to be a great iOS developer!!!"
//
//for name in names {
//    print(name + future)
//}

//var lapTimes = [42.6, 58.3, 33.7, 84.5]
//let sortedTimes = lapTimes.sorted { (first, second) -> Bool in
//    if first < second {
//        return true
//    } else {
//        return false
//    }
//}
//print(sortedTimes)

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////DICTIONARIES

//var emptyDictionary = [String: Int]()
//var emptyDictionary: [String: Int]
//var oneDictionary: [String: Int] = ["Kevin": 29]

//var phoneDictionary: [String: Int] = [
//    "iphone": 200,
//    "android": 10
//]
//type(of:phoneDictionary)

//var programmingDictionary: [String: String] = [
//    "Swift": "awesome",
//    "javascript": "great",
//    "ruby": "kids play"
//]
////////update a dictionary value
//programmingDictionary.updateValue("AWESOME!", forKey: "Swift")
//print(programmingDictionary)

////////adding to a dictionary
//programmingDictionary["C++"] = "low level language"
//print(programmingDictionary)

////////remove a dictionary
//programmingDictionary.removeValue(forKey: "C++")
//print(programmingDictionary)

////////iterate through dictionary ////////////////////

//var coffeeSize: [String: Int] = [
//    "short": 8,
//    "tall": 12,
//    "grande": 16,
//    "vente": 20
//]
//coffeeSize.count
//coffeeSize.isEmpty

//var unicode: [String: String] = [
//    "😁": "U+1F601",
//    "😂" : "U+1F602",
//    "😍" : "U+1F60D"
//]

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////FUNCTIONS
//func totalTravel(min: Int, speed: Int) -> String {
//    let distance = min * speed
//    return "traveled \(distance) miles"
//}
//totalTravel(min: 60, speed: 1)
//
//func makeBeer(flavor1: String, fermentor: String, time: Int) -> String {
//    let formula = "boil water for 60 mins, add \(flavor1) then add \(fermentor) and let bottle for \(time) months"
//    return formula
//}
//makeBeer(flavor1: "pumpkin spices", fermentor: "California Yeast - 5500", time: 3)
//
//func printEmoji(emoji: String) -> String {
//    if (emoji == "😀") {
//        return "Laughing"
//    } else if (emoji == "😎") {
//        return "kool"
//    } else {
//        return "no emoji found"
//    }
//}
//printEmoji(emoji: "😎")
//
//func average(num1: Int, num2: Int, num3: Int) -> String{
//    let average = ((num1 + num2 + num3) / 3)
//    return "the average is \(average)"
//}
//average(num1: 1, num2: 2, num3: 3)
//
//func greet(name: String) -> String{
//    return "Hello \(name)"
//}
//greet(name: "Kevin")
//
//func product(num1: Double, num2: Double, num3: Double, num4: Double) -> Double {
//    return num1 * num2 * num3 * num4
//}
//product(num1: 1, num2: 2, num3: 3, num4: 4)
//
//func isSquare(num1: Int) -> Bool {
//    var flag = false
//    for i in 1..<num1 {
//        if i*i == num1 {
//            flag = true
//            break
//        }
//    }
//    return flag
//}
//isSquare(num1: 16)

//func sayHello(name: String) -> String {
//    return "Hello \(name)"
//}
//sayHello(name: "Kevin")

//func greetingsFriend(name: String) -> String{
//    return "hello \(name)"
//}
//greetingsFriend(name: "Tom Hanks")

//func giveComplement(adjective: String) -> String {
//    return "You are so \(adjective)"
//}
//giveComplement(adjective: "Kool")

//func scoreReader(score: Int) -> String {
//    if score >= 100 {
//        return "\(score), is a new record!"
//    } else {
//        return "you're score is \(score)"
//    }
//}
//scoreReader(score: 100)

//func canUseLaptop(hasPower: Bool) -> String{
//    if hasPower {
//        return "you can use your laptop!"
//    } else {
//        return "you need to plug in first"
//    }
//}
//canUseLaptop(hasPower: true)

//func isEvenOrOdd(num1: Int) -> String {
//    if num1 % 2 == 0 {
//        return "true"
//    } else {
//        return "false"
//    }
//}
//isEvenOrOdd(num1: 4)

//func studentGrade(number: Int, name: String) -> String {
//    switch number {
//    case 90...100:
//        return "\(name), got an A"
//    case 80..<90:
//        return "\(name), got an B"
//    case 70..<80:
//        return "\(name), got an C"
//    default:
//        return "\(name), did not pass"
//    }
//}
//studentGrade(number: 90, name: "Kevin")
//studentGrade(number: 80, name: "Bob")
//studentGrade(number: 75, name: "Mary")
//studentGrade(number: 50, name: "Sarah")

////////////////////////////////////////EMPTY STRING
//func isEmpty(phrase: String) -> Bool{
//    if phrase.characters.count > 0 {
//        return true
//    } else {
//        return false
//    }
//}
//isEmpty(phrase: "has characters")

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

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////STRUCTURES
//struct Television {
//    var diagonal: Double
//    var make: String
//    var model: Double
//
//    func shortDescription() -> String {
//        return "\(make) \(model) : \(diagonal) inches"
//    }
//}
//
//var myTelevision = Television(diagonal: 50, make: "Samsung", model: 5.6)
//
//myTelevision.diagonal
//myTelevision.make
//
//myTelevision.diagonal = 30
//myTelevision.diagonal
//
//
//
//struct Dog {
//    var breed: String
//    var color: [String]
//    var energyLevel: Int
//    var furType: String
//    var distructive: Bool
//    var instaImage: String
//
//    func showPicture() -> String {
//        return ""
//    }
//}
//
//var captJiblet = Dog (
//    breed: "cattle dog",
//    color: ["red", "white", "blue"],
//    energyLevel: 9,
//    furType: "course medium",
//    distructive: false,
//    instaImage: "cptJiblet.png"
//)
//var image = UIImage(named: "cptJiblet.png")
//
//
//class House {
//    let address: String
//    let numberOfRooms: Int
//
//    init(address specifiedAddress: String, numberOfRooms specifiedNumberOfRooms: Int) {
//        address = specifiedAddress
//        numberOfRooms = specifiedNumberOfRooms
//    }
//}
//
//var myHouse = House (
//    address: "123 central st.",
//    numberOfRooms: 1
//)
//myHouse.address
//
//
//
//class Dragon {
//    var lengthOfWing: Int
//    var spanOfWings: Int {
//        get {
//            // This computed property is based on wingLength.
//            return lengthOfWing * 2
//        }
//        set(setValue) {
//            // Store the results of a computed property.
//            lengthOfWing = setValue / 2
//        }
//    }
//    init() {
//        lengthOfWing = 0
//    }
//}
//
//var myDragon = Dragon()
//myDragon.lengthOfWing
//myDragon.spanOfWings = 8
//myDragon.spanOfWings

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

////////////////////////////////////////////////////////COUNT OPERATOR
//let redBottleCount = redBottle.characters.count
//let zeroToFive = 0...5
//let zeroToFiveCount = zeroToFive.count
//let listOfTableStuff = ["coffee", "bottle", "mouse"]
//let listOfTableStuffCount = listOfTableStuff.count

////////////////////////////////////////////////////////INDEXING STRINGS
//let coldAccessory = "scarf"
//let coldAccessoryFirstCharacter = coldAccessory.characters.startIndex
//print(coldAccessory[coldAccessoryFirstCharacter])
//let eveningDrink = "water bottle"
//print(eveningDrink[eveningDrink.characters.startIndex])

//indexing last letter in string
//let deskDecoration = "picture"
//deskDecoration[deskDecoration.index(before:deskDecoration.endIndex)]
//let lastOfAlphabet = "xyz"
//lastOfAlphabet[lastOfAlphabet.index(before:lastOfAlphabet.endIndex)]
//let eveningMail = "box"
//eveningMail[eveningMail.index(before:eveningMail.endIndex)]

//indexing different letters of strings
//let studyView = "window"
//studyView[studyView.index(after:studyView.startIndex)]
//
//let surpriseSnack = "ice cream"
//let surpriseSnackEndIndex = surpriseSnack.index(before:surpriseSnack.endIndex)

////////////////////////////////////////////////////////UPPERCASE OPERATOR
//let needToWash = "glass"
//needToWash.uppercased()
//
//let needToWashFirstIndex = needToWash.characters.startIndex
//let needToWashFirstLetter = needToWash.characters[needToWashFirstIndex]
//let uppercaseFirstCharacter = String(needToWashFirstLetter).uppercased()

////////////////////////////////////////////////////////IF STATEMENTS
//print the largest value of 3 variables
//var a = 5
//var b = 10
//var c = 150
//if (a > b && a > c) {
//    print("a is the largest")
//} else if (c > b) {
//    print("c is the largest")
//} else {
//    print("b is the largest")
//}
//if both freddy and jason are smiling == trouble || both are not smiling else everythings ok
//var jasonIsSmiling = true
//var freddyIsSmiling = false
//if (jasonIsSmiling && freddyIsSmiling || !jasonIsSmiling && !freddyIsSmiling) {
//    print("trouble!")
//} else {
//    print("everythings ok... for now")
//}
//var numSidesOfShape = 0
//if(numSidesOfShape == 3){
//    print("Triangle \u{1F53A}")
//} else if(numSidesOfShape == 4){
//    print("Square \u{1F532}")
//} else{
//    print("its probably a circle \u{26AB}")
//}
//let highScore = 100
//var currentScore = 80
//if (currentScore >= highScore) {
//    print("new high score!")
//} else {
//    print("current score: \(currentScore)")
//}
//var hasBread = true
//var hasMeat = true
//var hasLettus = true
//var hasCheese = true
//if (hasBread && hasMeat && hasLettus && hasCheese) {
//    print("Can make a sandwich!")
//}
//var meatTemp = 70
//if (meatTemp >= 65) {
//    print("The meat is done!")
//}
//var numEggs = 1
//var numBeer = 1
//var hasSomeBread = true
//if (numEggs < 3 && numBeer <= 2 && hasSomeBread == false) {
//    print ("we need to buy groceries")
//} else if (numEggs < 3) {
//    print("need to pick up eggs")
//} else if (numBeer <= 1) {
//    print("need to get beer")
//} else if (hasSomeBread == false) {
//    print("need to get bread")
//} else {
//    print("we have food")
//}

////////////////////////////////////////////////////////SWITCH STATEMENTS
//var cupOz = 8
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
//    print("not sure of the cup size")
//}
//var numberOfRooms = 3
//switch numberOfRooms {
//case 1:
//    print("only 1 room, they're looking for 2 more rooms")
//case 2:
//    print("only 2 rooms, they're looking for 1 more room")
//case 3:
//    print("That's what the customer is looking for!")
//default:
//    print("The customer is looking for \(numberOfRooms) rooms")
//}
//var gradeLevel = 83
//switch gradeLevel {
//case (0...69):
//    print("failing")
//case (70...80):
//    print("passing")
//case (81...90):
//    print("good job")
//case (91...100):
//    print("killing it!")
//default:
//    print("your grade is \(gradeLevel)")
//}

////////////////////////////////////////////////////////UIIMAGE
//var image = UIImage(named: "me.png")
//let tacosImage = UIImage(named: "tacos.jpg")
//let cuteDogImage = UIImage(named: "cuteDog.jpg")
//let breakTimeActivity = UIImage(named: "youtube.jpg")
//let secretToSuccess = UIImage(named: "books.jpeg")

////////////////////////////////////////////////////////FUNCTIONS
//func numberIsOdd(_ number: Int) -> Bool {
//    return number % 2 == 1
//}
//numberIsOdd(10)

//func isEven(number: Int) -> String {
//    if number % 2 == 0 {
//        return "\(number) is even"
//    } else {
//        return "\(number) is odd"
//    }
//}

//func isEven(number: Int) -> Bool {
//    return number % 2 == 0 ? true : false
//}
//print(isEven(number: 8))

//func dance() {
//    print("everybody footloose!")
//}
//dance()
//
////call the dance function 3 times
//for _ in 0...2 {
//    dance()
//}

//func totalTravel(min: Int, speed: Int) -> String {
//    let distance = min * speed
//    return "traveled \(distance) miles"
//}
//totalTravel(min: 60, speed: 1)
//
//func makeBeer(flavor1: String, fermentor: String, time: Int) -> String {
//    let formula = "boil water for 60 mins, add \(flavor1) then add \(fermentor) and let bottle for \(time) months"
//    return formula
//}
//makeBeer(flavor1: "pumpkin spices", fermentor: "California Yeast - 5500", time: 3)
//
//func printEmoji(emoji: String) -> String {
//    if (emoji == "😀") {
//        return "Laughing"
//    } else if (emoji == "😎") {
//        return "kool"
//    } else {
//        return "no emoji found"
//    }
//}
//printEmoji(emoji: "😎")
//
//func average(num1: Int, num2: Int, num3: Int) -> String{
//    let average = ((num1 + num2 + num3) / 3)
//    return "the average is \(average)"
//}
//average(num1: 1, num2: 2, num3: 3)
//
//func greet(name: String) -> String{
//    return "Hello \(name)"
//}
//greet(name: "Kevin")
//
//func product(num1: Double, num2: Double, num3: Double, num4: Double) -> Double {
//    return num1 * num2 * num3 * num4
//}
//product(num1: 1, num2: 2, num3: 3, num4: 4)
//
//func isSquare(num1: Int) -> Bool {
//    var flag = false
//    for i in 1..<num1 {
//        if i*i == num1 {
//            flag = true
//            break
//        }
//    }
//    return flag
//}
//isSquare(num1: 16)

////////////////////////////////////////////////////////DICTIONARY - COLLECTION TYPES
//var phoneBook: Dictionary<String, Int> = [
//    "Marlene T." : 1234567,
//    "Micheal P." : 555555,
//    "Boris M" : 7654321
//    ]
//phoneBook.count
//print("There are \(phoneBook.count) numbers in my phone")
//let marleneNumber = phoneBook["Marlene T."]
//phoneBook["Boris M"] = 1111111
////////////////////////looping through
//for (key, value) in phoneBook {
//    print("\(key)'s number is \(value)")
//}

//var coatCheck: Dictionary = [
//    1 : "Blue jacket",
//    2 : "black coat",
//    3 : "Pink Jacket"
//    ]
//coatCheck.count
//print("We have \(coatCheck.count) coats right now")
//let jenniferCoat = coatCheck[3]
/////////////////////add a new coat
//coatCheck[4] = "grey sweater"
/////////////////////update key value
//coatCheck[3] = "brown blazer"
/////////////////////delete key value
//coatCheck.removeValue(forKey: 1)
/////////////////////loop through
//for (key, value) in coatCheck {
//    print("coat #\(key) is a \(value)")
//}

//var movieRatings: Dictionary<String,Int> = [
//    "Titanic" : 5,
//    "Forest Gump" : 10
//    ]
//let titanicRating = movieRatings["Titanic"]
//var forestGumpRating = movieRatings["Forest Gump"]
////////////////////modify a Dictionary
////////////////////updating key values
//movieRatings["Titanic"] = 8
//movieRatings["Forest Gump"] = 100
////////////////////adding key values
//movieRatings["Twilight"] = 0
//movieRatings["Big"] = 10
////////////////////remove key value
//movieRatings.removeValue(forKey: "Titanic")
////////////////////setting value to nil
//movieRatings["Logan"] = nil
////////////////////loop through dictionary collection set
//for (key, value) in movieRatings {
//    print("I give \(key), a \(value) rating")
//}

////////////////////////////////////////////////////////STRINGS
//iterating through strings
//var exampleString = "Marlene"
//for letter in exampleString.characters {
//    print(letter)
//}

//convert string to int
//var oneTwoThree: String = "123"
//print(Int(oneTwoThree)!)

//line breaks
//var exampleOfLineBreaks = "this is one line \n this is another line \n"
//print(exampleOfLineBreaks)

//seperating by " "
//var someLongSentence = "this is a really long sentence"
//var wordsInLongSentence = someLongSentence.components(separatedBy: " ")

//count number of spaces in string
//var stringSpace = "hello there Kevin"
//func spaceCount(phrase: String) -> Int {
//    var counter = 0
//    for space in stringSpace.characters {
//        if space == " " {
//            counter += 1
//        }
//    }
//    return counter
//}
//spaceCount(phrase: stringSpace)

///////////////////////////////////////////////////////////////////////ALGORITHMS

//BUBBLE SORT
//iterates through the list
//compares element with one on right
//if element is larger then swap
//else dont swap
//add one to iterator

//PRIME - print all primes up to n
//iterate each number from 1 to 20
//set each number to true
//check if each number has a multiple
//if number does have multiple set number to false
//print true numbers

//var isPrime = true
//for number in 2...2000 {
//    isPrime = true
//    for multiple in 2..<number {
//        if(number % multiple == 0) {
//            isPrime = false
//        }
//    }
//    if(isPrime == true){
//        print(number)
//    }
//}

//declare a numberCounter to true
//iterate through each number
//set numberCounter to true
//check if number has multiple (remainder)
//if number does have a multiple set numberCounter to false
//if numberCounter is true
//print numberCounter
//
//var primeNum = true
//for number in 2...20 {
//    primeNum = true
//    for multiple in 2..<number {
//        if(number % multiple == 0){
//            primeNum = false
//        }
//    }
//    if(primeNum == true) {
//        print(number)
//    }
//}

//HARMONIC series formula
//var sum = 1.0
//for harmonic in 2...5000 {
//    var math = (Double(1)/Double(harmonic))
//    sum += math
//}
//print(sum)

//Use a loop to multiply two numbers 234 and 3643 using only addition.
//declare a sumValue = 0
//iterate x number of times
//each iteration update and add y value to sumValue
//print sumValue

//var sumValue = 0
//for x in 1...243 {
//    sumValue += 3643
//}
//print(sumValue)

//FIZZBUZZ
//for fbNumbers in 1...100 {
//    if (fbNumbers % 3 == 0 && fbNumbers % 5 == 0) {
//        print("\(fbNumbers) = FizzBuzz!")
//    } else if (fbNumbers % 3 == 0) {
//        print("\(fbNumbers)...Fizz")
//    } else if (fbNumbers % 5 == 0) {
//        print("\(fbNumbers)...Buzz")
//    } else {
//        print(fbNumbers)
//    }
//}

////////////////////////////////CALCULATE FACTORIAL!
//var factorialSum = 1
//var n = 15
//while(n >= 1){
//    factorialSum = factorialSum * n
//    n -= 1
//}
//print(factorialSum)

////////////////////////////////PRINT 10 BY 10 CHECKERED BOARD
//for box in 1...110 {
//    if (box % 11 == 0) {
//        print()
//    } else if(box % 2 != 0){
//        print("\u{2B1B}", terminator:"")
//    } else {
//        print("\u{2B1C}", terminator:"")
//    }
//}

////////////////////////////////AIRPLANE SEATING
//Print an Airplane seating arrangement (1a through 1h) for 26 rows of seats
//iterate through x to 26
//print the seating arrangement for each row, iterpolating in x
//for seat in 1...26 {
//    print("\(seat)a \(seat)b \(seat)c \(seat)d \(seat)e \(seat)f \(seat)g \(seat)h")
//}

