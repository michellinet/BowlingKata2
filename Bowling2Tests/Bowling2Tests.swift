//
//  Bowling2Tests.swift
//  Bowling2Tests
//
//  Created by Michelline Tran on 6/13/17.
//  Copyright © 2017 Michelline Tran. All rights reserved.
//

import XCTest
@testable import Bowling2

class Bowling2Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    let score = Score()
    
    func test1() {
        let scorecard = Array(repeating: 1, count: 10)
        let calculatedTotal = score.calculate(scorecard)
        XCTAssertEqual(calculatedTotal, 10)
    }
    
}
