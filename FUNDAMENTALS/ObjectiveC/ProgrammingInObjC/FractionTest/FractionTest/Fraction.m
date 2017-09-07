//
//  Fraction.m
//  FractionTest
//
//  Created by Kevin Tran on 9/6/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

//implementation section - defining the class methods/ variables
@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/ %i", numerator, denominator);
}

-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}




@end

