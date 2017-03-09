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

////////////////////////////////////////////////////////////////////////////////

//find the number of sequences in DNA

//func repeatDNASequence(s: String) ->String{
//    //length of the subsquence
//    let k = 10
//    
//    //create dictionary to hold substring
//    var substringCount = [String: Int]()
//    
//    //count every subsequence
//    for i in 0...s.characters.count - k {
//        //figure out the subsequence
//        let startIndex = s.index(s.startIndex, offsetBy: i)
//        let endIndex = s.index(s.startIndex, offsetBy: i+10)
//        let substring = s[startIndex..<endIndex]
//        
//        if let value = substringCount[substring] {
//            substringCount[substring] = value + 1
//        } else {
//            substringCount[substring] = 1
//        }
//    }
//    
//    //filter out the substrings that we only saw once
//    let repeatedSubString = substringCount.filter { (key, value) -> Bool in
//        return value > 1
//       //dump the count of the remaining substrings
//        }.map { (key, value) -> String in
//            return key
//        }
//    
//    let sortedRepeatedSubstrings = repeatedSubString.sorted()
//    
//    return sortedRepeatedSubstrings
//    
//}

////////////////////////////////////////////////////////////////////////////////

//isAnagram
//var word1 = "name"
//var word2 = "Mean"
//
//word1.lowercased().characters.sorted() == word2.lowercased().characters.sorted() ? "yup, is an anagram" : "nope, not an anagram"

////////////////////////////////////////////////////////////////////////////////

//sort an array
//var array = [5, 10, 1, 3, 8, 7, 16]
//
//func sortInPlace(_ array: inout [Int]) {
//    if array.count < 2 { return }
//    for i in 1..<array.count {
//        for j in 0..<i {
//            if array[i] < array[j] {
//                swap(&array[i], &array[j])
//            }
//        }
//    }
//}
//
//sortInPlace(&array)

////////////////////////////////////////////////////////////////////////////////

//reverse string

//func reverseWord (_ word: String) -> String {
//    var reversedWord = ""
//    for letter in word.characters {
//        reversedWord = "\(letter)" + reversedWord
//    }
//    return reversedWord
//}
//
//reverseWord("Kevin")
//reverseWord("hello world")

////////////////////////////////////////////////////////////////////////////////

//reverse vowels algorithm
//func reverseVowels(_ word: String) -> String {
//    var lowerCasedWord = word.lowercased()
//    var reversedWord = ""
//    var wordVowels = ""
//
//    for character in lowerCasedWord.characters {
//        if character == "a" ||
//           character == "e" ||
//           character == "i" ||
//           character == "o" ||
//           character == "u" {
//            wordVowels.append(character)
//        }
//    }
//    var reversedVowels = String(wordVowels.characters.reversed())
//
//    for letter in lowerCasedWord.characters {
//        if letter == "a" ||
//            letter == "e" ||
//            letter == "i" ||
//            letter == "o" ||
//            letter == "u" {
//            reversedWord.append(reversedVowels[reversedVowels.startIndex])
//            reversedVowels.remove(at: reversedVowels.startIndex)
//        } else {
//            reversedWord.append(letter)
//        }
//    }
//    return reversedWord
//}
//
//reverseVowels("I need more coffee!")
//reverseVowels("Kevin")
//reverseVowels("Scotty Blades of fire!")

