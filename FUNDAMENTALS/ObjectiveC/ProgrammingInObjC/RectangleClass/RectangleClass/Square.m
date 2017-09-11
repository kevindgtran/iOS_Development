//
//  Square.m
//  RectangleClass
//
//  Created by Kevin Tran on 9/9/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

//interface - class, properties and method declarations
@interface Square : Rectangle

-(void) setside: (int) s;
-(int) side;

@end


//implementation - class properties and methods definitions
//In seperate files normally #import "Rectangle.h"
@implementation Square

-(void) setside:(int) s
{
    [self setWidth: s setHeight: s]; //calling parent class method - must use "self" keyword
}

-(int) side
{
    return self.width; //calling parent class property - must use "self" keyword
}

@end


////program section
////In seperate files normally #import "Rectangle.h"
//int main (int argc, char * argv[])
//{
//    @autoreleasepool {
//        
//        Square *mySquare = [[Square alloc] init];
//        
//        [mySquare setside: 4];
//        
//        NSLog(@"The sides of my square are: %i by %i", mySquare.width, mySquare.height);
//        
//    }
//    return 0;
//}
