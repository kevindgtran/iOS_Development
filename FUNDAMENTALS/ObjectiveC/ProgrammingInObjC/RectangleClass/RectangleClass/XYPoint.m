//
//  XYPoint.m
//  RectangleClass
//
//  Created by Kevin Tran on 9/10/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

//implementation section - class method and property definitions
@implementation XYPoint

@synthesize x, y;

-(void) setX:(int)xVal setY:(int)yVal
{
    x = xVal;
    y = yVal;
}

@end

////program section to test Rectangle and XYPoint classes
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        Rectangle *myRect = [[Rectangle alloc] init];
//        XYPoint *myPoint = [[XYPoint alloc] init];
//        
//        [myPoint setX:100 setY:200];
//        
//        [myRect setWidth:5 setHeight:8];
//        myRect.origin = myPoint;
//        
//        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
//        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
//        NSLog(@"Area = %i, Perimeter = %i", myRect.area, myRect.perimeter);
//
//    }
//    return 0;
//}

