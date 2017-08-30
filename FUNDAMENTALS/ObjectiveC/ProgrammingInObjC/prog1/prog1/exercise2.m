//
//  exercise2.m
//  prog1
//
//  Created by Kevin Tran on 8/29/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

//interface section
@interface XYPoint : NSObject

- (void) setX: (int) x;
- (void) setY: (int) y;
- (int) xValue;
- (int) yValue;

@end

//implementation section
@implementation XYPoint
{
    int xValue;
    int yValue;
}

-(void) setX: (int) x
{
    xValue = x;
}

-(void) setY: (int) y
{
    yValue = y;
}

- (int) xValue
{
    return xValue;
}

-(int) yValue
{
    return yValue;
}

//program section
int main (int argc, char * argv[])
{
    @autoreleasepool {
        
        XYPoint *TheXYPoint = [[XYPoint alloc] init];
        
        [TheXYPoint setX: 27];
        [TheXYPoint setY: 15];
        
        NSLog(@"The point is (%i, %i)", [TheXYPoint xValue], [TheXYPoint yValue]);
    }
    return 0;
}

@end
