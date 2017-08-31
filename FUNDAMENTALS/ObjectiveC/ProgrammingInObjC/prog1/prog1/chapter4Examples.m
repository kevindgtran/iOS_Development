//
//  chapter4Examples.m
//  prog1
//
//  Created by Kevin Tran on 8/30/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
    @autoreleasepool {
//        //creating variables of different types
//        int integerVar = 10;
//        float decimalVar = 3.15;
//        double doubleVar = 1.000000003;
//        char charVar = 'e';
//        
//        NSLog(@"Newly created variables are %i, %f, %f, %c", integerVar, decimalVar, doubleVar, charVar);
        
//        //declare a new variable for each of the different Obj-C tyes and use them in an NSLog sentence
//        
//        int number;
//        number = 12;
//        
//        float smallDec;
//        smallDec = 3.1415;
//        
//        double bigDec;
//        bigDec = 25.123456;
//        
//        char oneLetter;
//        oneLetter = 'k';
//        
//        NSLog(@"number is: %i", number);
//        NSLog(@"smallDec is: %f", smallDec);
//        NSLog(@"bigDec is: %f", bigDec);
//        NSLog(@"oneLetter is: %c", oneLetter);
        
//        //create different values and do some arithmatic
//        int four = 4;
//        int three = 3;
//        int five = 5;
//        int seven = 7;
//        int eight = 8;
//        int sum;
//        
//        sum = four + three;
//        NSLog(@"%i + %i = %i", four, three, sum);
//        
//        sum = seven - three;
//        NSLog(@"%i - %i = %i", seven, three, sum);
//        
//        sum = four * five;
//        NSLog(@"%i * %i = %i", four, five, sum);
//        
//        sum = eight / four;
//        NSLog(@"%i / %i = %i", eight, four, sum);
//        
//        sum = eight % seven;
//        NSLog(@"%i %% %i = %i", eight, seven, sum);
        
        //examples of type casting
        int num1 = 1;
        int num2 = 2;
        float num3 = 3.5;
        float num4 = 4.7;
        int intSum;
        float floatSum;
        
        //convert values to int sum
        intSum = (int) num3 + (int) num4 + (int) 3.78;
        NSLog(@"%f + %f + 3 = %i", num3, num4, intSum);
        
        //convert values to float sum
        floatSum = (float) num1 + (float) num2;
        NSLog(@"%i + %i = %f", num1, num2, floatSum);
        
        //create variables, update their values with the assignment operators, test on console
        int number1 = 3;
        int number2 = 7;
        
        number1 += 9;
        number2 += 17;
        
        NSLog(@"%i + %i = %i", number1, number2, number1 + number2);
        
        
        
        
    }
    return 0;
}
