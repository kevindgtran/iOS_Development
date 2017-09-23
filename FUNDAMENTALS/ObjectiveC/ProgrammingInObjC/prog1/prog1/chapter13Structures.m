//
//  chapter13Structures.m
//  prog1
//
//  Created by Kevin Tran on 9/22/17.
//  Copyright © 2017 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
    @autoreleasepool {
        
        //Declare a new struct type named Date with 3 variables of integer type
        struct Date
        {
            int month;
            int day, year;
        };
        
        //Declare new variables of our Date type
        struct Date myBirthday;
        struct Date today;
    
        //Set the dates for the 2 new variables
        myBirthday.day = 2;
        myBirthday.month = 10;
        myBirthday.year = 1987;
        NSLog(@"My Birthday is on %i/%i/%i", myBirthday.month, myBirthday.day, myBirthday.year);
        
        today.day = 22;
        today.month = 9;
        today.year = 2017;
        NSLog(@"Today's date is %i/%i/%i", today.month, today.day, today.year);
        
        //declare a struct type named Humidity with 4 properties: Current, Low, High and currentTemp, set values and print the humidity readings to the console
        struct Humidity
        {
            int currentHumidity, low, high, currentTemp;
        };
        
        struct Humidity aptHumidity;
        aptHumidity.currentHumidity = 43;
        aptHumidity.low = 40;
        aptHumidity.high = 55;
        aptHumidity.currentTemp = 70;
        
        NSLog(@"The humidity readings are current humidity: %i%%, low: %i%%, high: %i%%, current temperature: %i%%", aptHumidity.currentHumidity, aptHumidity.low, aptHumidity.high, aptHumidity.currentTemp);
    }
    return 0;
}
