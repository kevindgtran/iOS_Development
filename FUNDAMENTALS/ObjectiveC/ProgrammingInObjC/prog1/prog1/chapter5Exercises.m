//
//  chapter5Exercises.m
//  prog1
//
//  Created by Kevin Tran on 9/1/17.
//  Copyright © 2017 com.example. All rights reserved.
//

//#import <Foundation/Foundation.h>
//
//int main (int argc, char * argv [])
//{
//    @autoreleasepool {

//        //Write a program that displays a table of n and n*2, of n ranging from 1 to 10
//        NSLog(@" n      n * 2  ");
//        NSLog(@"---  -----------");
//        int n;
//        for (n = 1; n <= 10; ++n) {
//            NSLog(@"%2i       %2i", n, n * 2);
//        }
        
//        //create a program that calculates the triangular number of every 5th value from 5 to 50
//        int n, triangularNum;
//        for (n = 5; n <= 50; n += 5) {
//            triangularNum = n * (n + 1) / 2;
//            NSLog(@"%4i", triangularNum);
//        }
        
//        //Build an algorithm that takes returns 10 factorial aka 10!
//        //Factorial = the product of all values consecutively descending from n, ie 3! = 3 * 2 * 1
//        //loop through descending order from 10, each value of our iteration is multiplied and add to our factorialTotal variable, return factorialTotal
//        int n = 10;
//        int factorialTotal = 1;
//        
//        while (n >= 1) {
//            factorialTotal *= n;
//            --n;
//        }
//        NSLog(@"%i", factorialTotal);

//        int n;
//        int userResponse;
//        
//        NSLog(@"Please enter the number for the triangular");
//        scanf("%i", &userResponse);
//        
//        for (n = 1; n <= userResponse; ++n) {
//            //within each loop, ask user for a number and provide its values sums,
//            //create for loop, enter in usersNumber and update userTotalSum
//            int m;
//            int userNumber;
//            int userTotalSum = 0;
//
//            NSLog(@"please enter a number");
//            scanf("%i", &userNumber);
//
//            for (m = 1; m <= userNumber; ++m) {
//                userTotalSum += m;
//            }
//            
//            NSLog(@"Sum is: %i", userTotalSum);
//        }
        
//        //review the modulus sign
//        int ten = 3;
//        int five = 5;
//        int sum = ten % five;
//        
//        NSLog(@"%i", sum);

//        float f1 = 123.125, f2;
//        int i1, i2 = -150;
//        
//        i1 = f1;
//        NSLog(@"%f assigned to an int produces %i", f1, i1);
//        
//        f1 = i2;
//        NSLog(@"%i assigned to a float produces %f", i2, f1);
//        
//          
//    }//end of autorepleasepool
//    return 0;
//}
