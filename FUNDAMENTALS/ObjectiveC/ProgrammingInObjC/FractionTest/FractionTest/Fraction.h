//
//  Fraction.h
//  FractionTest
//
//  Created by Kevin Tran on 9/6/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

//the Fraction class declaration
@interface Fraction : NSObject

@property int numerator, denominator;
-(void) print;
-(double) convertToNum;

@end
