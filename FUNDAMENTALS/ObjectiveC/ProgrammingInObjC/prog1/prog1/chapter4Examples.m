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
        
        //create different values and do some arithmatic
        int four = 4;
        int three = 3;
        int five = 5;
        int seven = 7;
        int eight = 8;
        int sum;
        
        sum = four + three;
        NSLog(@"%i + %i = %i", four, three, sum);
        
        sum = seven - three;
        NSLog(@"%i - %i = %i", seven, three, sum);
        
        sum = four * five;
        NSLog(@"%i * %i = %i", four, five, sum);
        
        sum = eight / four;
        NSLog(@"%i / %i = %i", eight, four, sum);
        
        sum = eight % seven;
        NSLog(@"%i %% %i = %i", eight, seven, sum);
        
        
        
        
    }
    return 0;
}
