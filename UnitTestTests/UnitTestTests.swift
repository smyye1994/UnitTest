//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by Sümeyye Kılıçoğlu on 18.10.2022.
//

import XCTest
@testable import UnitTest

class UnitTestTests: XCTestCase {

let math = MathematicFunc()
    
    func testAddIntegerFunc() {
        let result  = math.addInteger(x: 10, y: 5)
        
        XCTAssertEqual(result, 15)
    }
    
    func testDivide() {
        let result  = math.divide(x: 10, y: 5)
        
        XCTAssertEqual(result, 2)
    }
    
    func testMultiply() {
        let result = math.multiply(x: 10, y: 5)
        
        XCTAssertEqual(result, 50)
    }
    
    func testMinus() {
        let result = math.minus(x: 10, y: 5)
        
        XCTAssertEqual(result, 5)
    }
}
