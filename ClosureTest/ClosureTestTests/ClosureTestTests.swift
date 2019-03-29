//
//  ClosureTestTests.swift
//  ClosureTestTests
//
//  Created by Chris Comeau on 2018-07-26.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import XCTest
@testable import ClosureTest

class ClosureTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
	func testExample1() {
		// This is an example of a functional test case.
		// Use XCTAssert and related functions to verify your tests produce the correct results.
		
		print("testExample1")
	}
	
	func testExample2() {
		// This is an example of a functional test case.
		// Use XCTAssert and related functions to verify your tests produce the correct results.
		
		print("testExample2")
		XCTAssert(ViewController.testValue() == 12) //good
		XCTAssert(ViewController.testValue() == 12, "Message") //good
		//XCTAssert(ViewController.TestValue() == 13) //bad
	}
	
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
