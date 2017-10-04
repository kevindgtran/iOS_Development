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



