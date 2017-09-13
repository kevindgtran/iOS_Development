//
//  FractionClass.m
//  prog1
//
//  Created by Kevin Tran on 9/6/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end

@implementation Fraction
{
    int numerator;
    int denominator;
    double convertToNum;
}

-(void) print
{
    if (denominator == 1) {
        NSLog(@"%i", numerator);
    } else if (numerator == 0) {
        NSLog(@"zero");
    } else {
        NSLog(@"%i/%i", numerator, denominator);
    }
}

-(void) setNumerator:(int) n
{
    numerator = n;
}

-(void) setDenominator:(int) d
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

-(double) convertToNum
{
    if (denominator != 0){
        return (double) numerator/denominator;
    } else {
        return NAN;
    }
}

@end


//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//    
//        Fraction *MyFraction = [[Fraction alloc] init];
//        
//        [MyFraction setNumerator: 3];
//        [MyFraction setDenominator:1];
//        [MyFraction print];
//        //NSLog(@"%f", [MyFraction convertToNum]);
//     
//    }
//    return 0;
//}


