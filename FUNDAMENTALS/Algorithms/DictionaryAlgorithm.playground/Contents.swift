//: Playground - noun: a place where people can play

import UIKit
import Foundation


func squared(i: Int) -> Int { return i * i }

[1, 2, 3].map(squared)

func triplet(num: Int) -> Int { return num * num * num }
triplet(num: 3)


let setOfNumbers: Set = [1, 2, 3, 4, 5, 6]
print(type(of:setOfNumbers))

let arrayOfNumbers = [1, 2, 3, 4, 5, 6]

var arrayOfSquares = Array<Int>()
for i in arrayOfNumbers {
    arrayOfSquares.append(i * i)
}

let arrayOfSquaredNumbers = [1, 2, 3, 4, 5, 6].map {$0 * $0}

setOfNumbers.map {$0 * $0}

Array(repeating: 1, count: 3)

let primes = [2, 3, 5, 7, 11, 13]
let negatedPrimes = primes.map(-)

let negatedBooleanValues: Array<Bool> = [true, false, true, false, true, true].map(!)

let booleanValues = [true, false, true]
let invertedBooleanValues = booleanValues.map(!)

let arrayOfMappedObjects = [negatedPrimes, arrayOfSquaredNumbers]

//problem 1
let arrayOfNumbers10 = [1, 2, 3, 4, 5, 6]
let arrayOfNumbers12 = [1, 2, 3, 4, 5, 6].map {$0 * $0}
print(arrayOfNumbers12)

//problem 2
let casting = ["Vivien", "Marlon", "Kim", "Karl"]
let casting2 = ["Vivien", "Marlon", "Kim", "Karl"].map {$0.lowercased()}
print(casting2)

let casting3 = ["Vivien", "Marlon", "Kim", "Karl"].count
print(casting3)

let casting4 = ["Vivien", "Marlon", "Kim", "Karl"].map {$0.uppercased()}
print(casting4)

//problem 3
let setOfNumbers123: Set = [1, 2, 3, 4, 5, 6]
let setOfNumbers1234: Set = [1, 2, 3, 4, 5, 6].map {$0 * 2}
print(setOfNumbers1234)





