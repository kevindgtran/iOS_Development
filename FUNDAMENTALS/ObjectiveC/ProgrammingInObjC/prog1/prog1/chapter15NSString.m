//
//  chapter15NSString.m
//  prog1
//
//  Created by Kevin Tran on 9/26/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
    @autoreleasepool {
        
        //Initialize a new NSString
        NSString *stringOne = @"We're programming up a storm!"; //the constant character string, using the expression notation is assigned to the stringOne object which is a pointer to the NSString class
        NSLog(@"%@", stringOne); //printing the value (constant character string) in stringOne, using the format character "%@" for strings and other objects.
        
        //Initialize a new NSNumber and print it using the format character "%@"
        NSNumber *anotherNumber = @17;
        NSLog(@"%@", anotherNumber);
        
        //NSString (immutable string) operations
        NSString *string1 = @"This is string one";  //declare 3 immutable string objects - pointing to the NSString class
        NSString *string2 = @"This is string two";
        NSString *res;
        //NSComparisonResult compareResult;
        
        //count the characters in a string
        NSLog(@"string1's count is: %lu", [string1 length]); //Use length method to find string length - which returns an unsigned integer value (UInteger), format character used is long unsigned
        
        //copy one string to another
        res = [NSString stringWithString:string1]; //use the NSString class method to copy the contents of another string and assign it to a variable of NSString class
        NSLog(@"res is now == %@", res);
        
        //copy one string to the end of another
        string2 = [string1 stringByAppendingString:string2]; //use the NSString instance method stringByAppendingString to append a string to another string
        NSLog(@"The new string2 is: %@", string2); //print the newly appended string with the format character "%@"
        
        //test if 2 strings are equal using the isEqualString method
        if ([res isEqualToString:string1] == YES) {
            NSLog(@"res and string1 are equal");
        } else  {
            NSLog(@"res and string1 are NOT equal");
        }
        
        //test if one string is <, >, == to another string
        switch ([string1 compare:string2]) {
            case NSOrderedAscending:
                NSLog(@"string1 is less than string2");
                break;
            case NSOrderedSame:
                NSLog(@"string1 is the same as string2");
                break;
            case NSOrderedDescending:
                NSLog(@"string1 is greater than string2");
                break;
            default:
                NSLog(@"Unable to compare string1 and string2");
                break;
        }
        
        //lets convert a string to uppercase
        res = [string1 uppercaseString]; //uppercase a string using the upercaseString method
        NSLog(@"string1 uppercased is: %@", res); //print the string using the format character
        
        //now lets convert that string back to lower case
        res = [string1 lowercaseString];
        NSLog(@"string1 lowercased is: %@", res);
        
        //print the original cased string
        NSLog(@"string1 originally is: %@", string1); //assigned previous upper/lowercased strings to res, so we can still print the original string
        
        //More string operations
        NSString *anotherString1 = @"This is string A";
        NSString *newRes;
        
        //extract the first three letters of a string
        newRes = [anotherString1 substringToIndex:3]; //use the substringToIndex to return a substring of an NSString object - doesn't return the character at the index value
        NSLog(@"The substring is: %@", newRes); //print the substring in an NSLog routine using the format character "%@"
        //more string subscripting on page 324
        
        //immutable strings
        
        NSString *someString1 = @"This is string A";
        NSString *someSearch, *someReplace;
        NSMutableString *mutableString;
        NSRange someSubString;
        
        //create mutable string from nonmutable
        mutableString = [NSMutableString stringWithString:someString1];
        NSLog(@"%@", mutableString);
        
        
        
        
        
        
        
        
    }
    return 0;
}
