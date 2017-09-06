////
////  CalculatorClass.m
////  prog1
////
////  Created by Kevin Tran on 9/5/17.
////  Copyright © 2017 com.example. All rights reserved.
////
//
//#import <Foundation/Foundation.h>
//
//@interface Calculator : NSObject
//
////accumulator methods
//-(void) setAccumulator: (double) value;
//-(void) clear;
//-(double) accumulator;
//
////arithmatic methods
//-(void) add: (double) value;
//-(void) subtract: (double) value;
//-(void) multiply: (double) value;
//-(void) divide: (double) value;
//
//@end
//
//
//@implementation Calculator
//{
//    double accumulator;
//}
//
//-(double) accumulator
//{
//    return accumulator;
//}
//
//-(void) setAccumulator:(double) value
//{
//    accumulator = value;
//}
//
//-(void) clear
//{
//    accumulator = 0;
//}
//
//-(void) add: (double) value
//{
//    accumulator += value;
//}
//
//-(void) subtract: (double) value
//{
//    accumulator -= value;
//}
//
//-(void) divide:(double) value
//{
//    accumulator /= value;
//}
//
//-(void) multiply:(double) value
//{
//    accumulator *= value;
//}
//
//@end
//
////program section
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        Calculator *MyCalculator;
//        MyCalculator = [[Calculator alloc] init];
//        
//        [MyCalculator setAccumulator:5];
//        NSLog(@"%f", [MyCalculator accumulator]);
//        
//        [MyCalculator add: 10];
//        NSLog(@"%f", [MyCalculator accumulator]);
//        
//        [MyCalculator multiply: 2];
//        NSLog(@"%f", [MyCalculator accumulator]);
//        
//        [MyCalculator divide: 3];
//        NSLog(@"%f", [MyCalculator accumulator]);
//        
//        [MyCalculator clear];
//        NSLog(@"%f", [MyCalculator accumulator]);
//        
//    }
//    return 0;
//}
//
//
//
//
//
