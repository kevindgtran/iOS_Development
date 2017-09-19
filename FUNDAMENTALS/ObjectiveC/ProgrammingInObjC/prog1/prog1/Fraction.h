////
////  Fraction.h
////  prog1
////
////  Created by Kevin Tran on 9/13/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//@interface Fraction : NSObject
//
//-(void) print;
//-(void) setNumerator: (int) n;
//-(void) setDenominator: (int) d;
//-(void) setTo: (int) n over: (int) d;
//-(int) numerator;
//-(int) denominator;
//-(double) convertToNum;
//-(instancetype) initWith: (int) n over: (int) d;
//
//@end
//
//@implementation Fraction
//{
//    int numerator;
//    int denominator;
//    double convertToNum;
//}
//
//-(void) setTo:(int)n over:(int)d
//{
//    numerator = n;
//    denominator = d;
//}
//
////initialization method
//-(instancetype) initWith: (int) n over: (int) d
//{
//    self = [super init];
//    
//    if (self) {
//        [self setTo: n over: d];
//    }
//    
//    return self;
//}
//
//
//-(void) print
//{
//    if (denominator == 1) {
//        NSLog(@"%i", numerator);
//    } else if (numerator == 0) {
//        NSLog(@"zero");
//    } else {
//        NSLog(@"%i/%i", numerator, denominator);
//    }
//}
//
//-(void) setNumerator:(int) n
//{
//    numerator = n;
//}
//
//-(void) setDenominator:(int) d
//{
//    denominator = d;
//}
//
//-(int) numerator
//{
//    return numerator;
//}
//
//-(int) denominator
//{
//    return denominator;
//}
//
//-(double) convertToNum
//{
//    if (denominator != 0){
//        return (double) numerator/denominator;
//    } else {
//        return NAN;
//    }
//}
//
//@end
