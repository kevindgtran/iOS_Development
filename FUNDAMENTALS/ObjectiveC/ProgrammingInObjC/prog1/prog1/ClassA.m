//
//  ClassA.m
//  prog1
//
//  Created by Kevin Tran on 9/7/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

//ClassA declaration and definition
@interface ClassA : NSObject
{
    int x; //public variable & method declarations - will be inherited by all subclasses
}
-(void) initVar;

@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}
@end

//ClassB declaration and definition
@interface ClassB : ClassA
-(void) printVar;

@end

@implementation ClassB
-(void) printVar
{
    NSLog(@"x = %i", x);
}

@end

int main (int argc, char * argv[])
{
    @autoreleasepool {
        
        ClassB *myClass = [[ClassB alloc] init];
        
        [myClass initVar];
        [myClass printVar];
        
        
    }
    return 0;
}





