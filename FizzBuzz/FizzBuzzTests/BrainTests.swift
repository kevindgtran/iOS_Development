//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Kevin Tran on 3/14/17.
//  Copyright © 2017 com.example. All rights reserved.
//

//need to export our main folder (FizzBuzz) to this file, to do our tests
@testable import FizzBuzz

import XCTest

//new BrainTests class inheriting from XCTestCase
class BrainTests: XCTestCase {
    
    override func setUp() {
        super.setUp()

    //create test function
        func testIsDivisibleByThree() {
            //create constant of Brain class instance
            //GIVEN
            let brain = Brain()
            
            //call a function on the brain constant
            //WHEN
            let result = brain.isDivisibleByThree(number: 3)
            
            //check that our test (WHEN) is equal to our (THEN)
            //THEN
            XCTAssertEqual(result, true)
        }
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    
    
    
    
}
