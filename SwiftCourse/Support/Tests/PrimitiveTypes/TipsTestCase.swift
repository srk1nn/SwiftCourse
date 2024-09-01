//
//  TipsTestCase.swift
//  PrimitiveTypesTests
//
//  Created by igor.sorokin on 26.08.2024.
//

import XCTest

final class Tips: XCTestCase {

    func testTips() throws {
        // given
        var tips: Double = 0
        // when
        calculateTips(bill: 1000, tipsPercent: 10, tips: &tips)
        // then
        XCTAssertEqual(tips, 100)
    }

    func testTips2() throws {
        // given
        var tips: Double = 0
        // when
        calculateTips(bill: 500, tipsPercent: 10, tips: &tips)
        // then
        XCTAssertEqual(tips, 50)
    }

}
