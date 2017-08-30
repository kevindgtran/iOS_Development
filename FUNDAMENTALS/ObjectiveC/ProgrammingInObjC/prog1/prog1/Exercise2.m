//
//  Exercise2.m
//  prog1
//
//  Created by Kevin Tran on 8/30/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

//declare a class called XYPoint (interface section)
@interface XYPoint : NSObject

-(void) setXValue;
-(void) setYValue;
-(int) xValue;
-(int) yValue;
-(void) print;

@end

//define the class functions (implementation section)
@implementation XYPoint
{
    int xValue;
    int yValue;
    
}

-(void) setXValue: (int) x
{
    xValue = x;
}

-(void) setYValue: (int) y
{
    yValue = y;
}

-(int) xValue
{
    return xValue;
}

-(int) yValue
{
    return yValue;
}

-(void) print
{
    NSLog(@"Coordinates: (%i, %i)", xValue, yValue);
}

@end


//create main method, set and retrieve the values (program section)

int main (int argc, char * argv[])
{
    @autoreleasepool {
        
        XYPoint *thePoints = [[XYPoint alloc] init];
        
        [thePoints setYValue: 3];
        [thePoints setXValue: 5];
        
        [thePoints print];
        NSLog(@"My coordinates are (%i, %i)", [thePoints xValue], [thePoints yValue]);
        
    }

    return 0;
}

