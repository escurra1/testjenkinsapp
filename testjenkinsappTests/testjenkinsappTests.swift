//
//  testjenkinsappTests.swift
//  testjenkinsappTests
//
//  Created by mescurra on 6/8/18.
//  Copyright © 2018 mescurra. All rights reserved.
//

import XCTest
@testable import testjenkinsapp

class testjenkinsappTests: XCTestCase {
    
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
        let timeTable = TimeTable()
        
        for i in 0 ..< 10 {
            for j in 0 ..< 10 {
                let c = timeTable.multiply(i, b: j)
                XCTAssert(c == i * j)
            }
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        let timeTAble = TimeTable()
        self.measure {
            // Put the code you want to measure the time of here.
            _ = timeTAble.multiply(20000, b: 20000)
        }
    }
    
}
