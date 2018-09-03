//
//  Test4Tests.swift
//  Test4Tests
//
//  Created by Шишов Дмитрий (Shishov_DR) on 03.09.2018.
//  Copyright © 2018 Шишов Дмитрий (Shishov_DR). All rights reserved.
//

import XCTest
@testable import Test4

class Test4Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLoginShouldBeMore3Characters()
    {
        let givenString = "po"
        
        let result = isValidLogin(login: givenString)
        
        XCTAssertFalse(result, "login should be more 2 characters")
    }
    
    func testLoginShoudBeLess32Characters()
    {
        let givenString = "po12356789po12356789po12356789po1"
        
        let result = isValidLogin(login: givenString)
        
        XCTAssertFalse(result, "login should be less 33 characters")
    }
    
    func testLoginShouldntStartWithNumber()
    {
        let givenString = "1login"
        
        let result = isValidLogin(login: givenString)
        
        XCTAssertFalse(result, "login should not start with number")
    }
    
    func testLoginShouldntStartWithMinus()
    {
        let givenString = "-login"
        
        let result = isValidLogin(login: givenString)
        
        XCTAssertFalse(result, "login should not start with minus")
    }
    
    func testLoginShouldntStartWithDot()
    {
        let givenString = ".login"
        
        let result = isValidLogin(login: givenString)
        
        XCTAssertFalse(result, "login should not start with dot")
    }
    
    func testLogin()
    {
        let givenString = "logi2.-n"
        
        let result = isValidLogin(login: givenString)
        
        XCTAssertTrue(result)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
