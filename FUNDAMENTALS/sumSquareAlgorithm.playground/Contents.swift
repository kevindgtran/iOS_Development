//: Playground - noun: a place where people can play

import UIKit

//create variable to hold all elements in the matrix, helpful to use an array within an array
//convert the rows given from hackerrank into variable
//subscript and add up all the first diagnol
//subscript and add up all the second diagnol
//subtract the difference



var subArray: [[Int]] = []
var firstDiagnol: Int = 0
var secondDiagnol: Int = 0
var counter: Int = 2

var row1 = 3
var row2 = [11, 2, 4]
var row3 = [4, 5, 6]
var row4 = [10, 8, -12]

subArray.append(row2)
subArray.append(row3)
subArray.append(row4)

//print(subArray)
//print(subArray[0][0])

for i in 0..<subArray.count {
    //print(subArray[i])
    for j in 0..<subArray[i].count {
        
        //set counter to 2, if counter is greater than 0 then do below and decrement counter
        if counter > 0 {
            var number = subArray[i][counter]
            firstDiagnol += number
        } else {
            break
        }
        counter -= 1
    }
}

print(firstDiagnol)
