//
//  Exericise07Tests.swift
//  Exericise07Tests
//
//  Created by 白石裕幸 on 2021/09/10.
//

import XCTest
@testable import Exericise_07

class Exericise07Tests: XCTestCase {
    func testAddition() throws {
        let resulet = Addition().calculate(val1: 10, val2: 10)
        XCTAssertEqual(resulet, 20)
    }

    func testSubtraction() throws {
        let result = Subtraction().calculate(val1: 100, val2: 90)
        XCTAssertEqual(result, 10)
    }
}
