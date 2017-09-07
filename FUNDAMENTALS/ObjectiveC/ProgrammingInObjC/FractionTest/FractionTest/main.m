//
//  main.m
//  FractionTest
//
//  Created by Kevin Tran on 9/6/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Fraction *myFraction = [[Fraction alloc] init];
        
        //set fraction to 1/3
        myFraction.numerator = 1;
        myFraction.denominator = 3;
        
        //display the fraction
        NSLog(@"The value of myFraction is: %i/%i", myFraction.numerator, myFraction.denominator);
        

    }
    return 0;
}
