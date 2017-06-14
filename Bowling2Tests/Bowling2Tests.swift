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
        let scorecard = Array(repeating: 1, count: 20)
        let calculatedScore = score.calculate(with: scorecard)
        XCTAssertEqual(calculatedScore, 20)
    }
    
    func test2() {
        let scorecard = Array(repeating: 2, count: 20)
        let calculatedScore = score.calculate(with: scorecard)
        XCTAssertEqual(calculatedScore, 40)
    }
    
    func test3() {
        let scorecard = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
        let calculatedScore =  score.calculate(with: scorecard)
        XCTAssertEqual(calculatedScore, 30)
    }
    
    func test4() {
        let scorecard = [10, 1, 2, 0, 0, 0, 0, 0, 0, 0]
        let calculatedScore = score.calculate(with: scorecard)
        
        XCTAssertEqual(calculatedScore, 16)
    }
    
}

