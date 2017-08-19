//
//  achievements.playground
//  iOS Networking
//
//  Created by Jarrod Parkes on 09/30/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation

/* Path for JSON files bundled with the Playground */
var pathForAchievementsJSON = Bundle.main.path(forResource: "achievements", ofType: "json")

/* Raw JSON data (...simliar to the format you might receive from the network) */
var rawAchievementsJSON = try? Data(contentsOf: URL(fileURLWithPath: pathForAchievementsJSON!))

/* Error object */
var parsingAchivementsError: NSError? = nil

/* Parse the data into usable form */
var parsedAchievementsJSON = try! JSONSerialization.jsonObject(with: rawAchievementsJSON!, options: .allowFragments) as! NSDictionary

func parseJSONAsDictionary(_ dictionary: NSDictionary) {

    var pointsGreaterThan10 = Int()
    var totalAchievementPoints = Float()
    var numberOfAchievements = Float()
    var categoryDictionary = [String: Double]()
    
    
    //loop through categories, subscript "title" cast as String: AnyObject, if title == "Matchmaking", subscript "children" cast as [[String: AnyObject]], loop through and append each object to the categoryDictionary variable
    
    //loop through all achievements, subscript key "categoryId" cast as Double, check if value
    
    
    
    
    
    
//    guard let parsedData = dictionary["achievements"] as? [[String: AnyObject]] else {
//        print("error with parsedData")
//        return
//    }
//    
//    for parsedAchievementObject in parsedData {
    
        //Cool Running Title
//        guard let achievementTitle = parsedAchievementObject["title"] as? String else {
//            print("error with achievementTitle")
//            return
//        }
//        if achievementTitle == "Cool Running" {
//            guard let achievementDescription = parsedAchievementObject["description"] as? String else {
//                print("error with achievementDescription")
//                return
//            }
//            print("Mission: \(achievementDescription) To achieve the \"\(achievementTitle)\" title")
//        }
        
        
        //average Achievement points
//        guard let achievementPoints = parsedAchievementObject["points"] as? Float else {
//            print("error with achievementPoints")
//            return
//        }
//        
//        totalAchievementPoints += achievementPoints
//        numberOfAchievements += 1
        
        //Achievement points greater than 10
//        guard let parsedDataPoints = parsedAchievementObject["points"] as? Int else {
//            print("error with parsedDataPoints")
//            return
//        }
//        if parsedDataPoints > 10 {
//            pointsGreaterThan10 += 1
//        }
        
    //}//end of parsedAchievementObject loop

    //print(round(totalAchievementPoints/numberOfAchievements * 100.0) / 100.0)
    //print(pointsGreaterThan10)
}//end of parseJSONAsDictionary function

parseJSONAsDictionary(parsedAchievementsJSON)
