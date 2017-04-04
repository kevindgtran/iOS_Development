import UIKit

//DEFINITION: Collection types hold multiple values together in a single variable. There are different collection types


//ARRAY: Arrays hold multiple values of the same type (type specific), they are ordered starting at index 0, arrays have lots of methods/ properties
//var exampleArray = ["zero", "one", "two", "three"]
//exampleArray[0]
//exampleArray.append("four")
//print(exampleArray)
//exampleArray.remove(at: 0)
//print(exampleArray)


//DICTIONARY: Dictionaries hold a collection of information in key values (keys OR values have to be the same). Dictionaries are not ordered but are subscripted by key to access their values
//var person1 = ["name" : "bob", "height" : "6ft", "isCool" : "yes"]
//person1.popFirst()
//person1.updateValue("9", forKey: "shoeSize")
//print(person1)


//SET: Sets hold information of the same type (type specific), no defined ordering
//var exampleSet: Set = ["example", "of", "set", "collection"]
//print(exampleSet)


//TUPLE: Tuple is a collection of random types, because of random types and swift being a type safe language, tuples have limited properties
//var exampleTuple = ("name", true, 123)
//exampleTuple.0
//exampleTuple.1
//exampleTuple.2



//30 DICTIONARY EXAMPLES, declaration, .count, subscripting, read all, looping, converting keys/values to array
//var coatCheck = [Int:String]()
//coatCheck = [1: "Black Northface", 2: "Blue Old Navy Sweater", 3: "Brown Blazer"]
//coatCheck.count
//var myJacket = coatCheck[1]; print("My jacket is the \(myJacket!)")
//print(coatCheck)
//for (ticketNumber,coatDescription) in coatCheck {
//    print("Coatcheck Number: \(ticketNumber) is the \(coatDescription)")
//}
//var coatCheckKeysToArray = [Int]()
//for coatCheckKeys in coatCheck.keys {
//    coatCheckKeysToArray.append(coatCheckKeys)
//}
//print(coatCheckKeysToArray)
//
//var coatCheckValuesToArray = [String]()
//for coatCheckValues in coatCheck.values {
//    coatCheckValuesToArray.append(coatCheckValues)
//}
//print(coatCheckValuesToArray)

//var cityPopulation = [String:Int]()
//cityPopulation = [
//    "Tokyo, Japan": 37_833_000,
//    "Dehli, India": 24_953_000,
//    "Shanghai, China": 22_991_000
//]
//cityPopulation.count
//var largestPopulation = cityPopulation["Tokyo, Japan"]; print("Tokyo, Japan has the largest population with \(cityPopulation["Tokyo, Japan"]!)")
//print(cityPopulation)
//for (cityName, totalPopulation) in cityPopulation {
//    print("\(cityName) has a population of \(totalPopulation)")
//}
//var cityPopulationKeysToArray = [String]()
//for destinationCity in cityPopulation.keys {
//    cityPopulationKeysToArray.append(destinationCity)
//}
//print(cityPopulationKeysToArray)
//
//var cityPopulationValuesToArray = [Int]()
//for populationSize in cityPopulation.values {
//    cityPopulationValuesToArray.append(populationSize)
//}
//print(cityPopulationValuesToArray)
//
//var planetSizes = [String: String]()
//planetSizes = ["Jupitor": "142,800 km", "Saturn": "120,660 km", "Uranus": "51,118 km"]
//planetSizes.count
//var smallestPlanet = planetSizes["Uranus"]; print("Uranus is only \(planetSizes["Uranus"]!) in diameter")
//print(planetSizes)
//var planetSizesKeysToArray = [String]()
//var planetSizesValuesToArray = [String]()
//for (planetName, diameterOfPlanet) in planetSizes {
//    print("\(planetName) has a diameter of \(diameterOfPlanet)")
//    planetSizesKeysToArray.append(planetName)
//    planetSizesValuesToArray.append(diameterOfPlanet)
//}
//print(planetSizesKeysToArray)
//print(planetSizesValuesToArray)