//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//find the greatest value (difference), but can't "sell before you buy"

let stock_prices_yesterday: [Float] = [10,7,5,8,11,9]
func get_max_profit(_ prices:[Float]) -> Float{
    
    //this would break the code if stock_prices_yesterday was empty
    var minValue = stock_prices_yesterday[0]
    var maxProfit:Float = 0.0
    
    for price in 1..<stock_prices_yesterday.count{
        
        let currentProfit = stock_prices_yesterday[price] - minValue
        if currentProfit > maxProfit{
            maxProfit = currentProfit
        }
        if stock_prices_yesterday[price] < minValue{
            minValue = stock_prices_yesterday[price]
        }
    }
    
    return maxProfit
}
get_max_profit(stock_prices_yesterday)

//////////////////////////////////////////////////////////////////////////////


//determine if word is a palindrome

//First - remove white space
//Second - remove special characters
//Third - lower case word
//Fourth - create reversed word from original
//Fifth - check if word is equal the reversed word, if yes return true, if not return false

func isPalindrome(_ name:String) -> Bool {
    
    var goober = name.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    goober = String(goober.characters.filter { !" ?.!@#$%^()'".characters.contains($0) })
    
    goober = goober.lowercased()
    
    let goobreverse = String(goober.characters.reversed())
    
    if goober == goobreverse {
        return true
    }
    return false
}

isPalindrome("eye")
isPalindrome("racecar")
isPalindrome("kevin")
isPalindrome("madam I'm adam")
isPalindrome("Was it Eliots toilet I saw?")
isPalindrome("Never Odd or even")
isPalindrome("Murder for a jar of red rum")

////////////////////////////////////////////////////////////////////////////////

//http://adriann.github.io/programming_problems.html

//no# 19

var testArrayOne: [String] = ["Hello", "World", "in", "a", "frame"]

func printListInRectangle(_ list: [String]) {
    //find the length of the longest word
    var maxLength = 0
    for word in list {
        if word.characters.count >= maxLength {
            maxLength = word.characters.count
        }
    }
    //print the astericks in words
    let asteriskRowLength = maxLength + 4
    let asteriskRow = (1...asteriskRowLength).map{ _ in "*" }.joined()
    
    print(asteriskRow)
    for word in list {
        print("* ", terminator: "")
        print(word, terminator: "")
        
        let difference = maxLength - word.characters.count
        let spaces = (0..<difference).map{ _ in " " }.joined()
        print(spaces, terminator: "")
        
        print(" *")
    }
    print(asteriskRow)
}


printListInRectangle(testArrayOne)
