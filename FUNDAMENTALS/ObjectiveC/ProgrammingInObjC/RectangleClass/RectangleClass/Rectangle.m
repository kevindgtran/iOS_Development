//
//  Rectangle.m
//  RectangleClass
//
//  Created by Kevin Tran on 9/9/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(void) setOrigin:(XYPoint *) pt
{
    origin = pt;
}

-(XYPoint *) origin
{
    return origin;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

-(void) setWidth:(int)w setHeight:(int)h
{
    width = w;
    height = h;
}

@end

