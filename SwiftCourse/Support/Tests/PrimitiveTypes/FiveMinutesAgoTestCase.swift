//
//  FiveMinutesAgoTestCase.swift
//  PrimitiveTypesTests
//
//  Created by igor.sorokin on 27.08.2024.
//

import XCTest

final class FiveMinutesAgo: XCTestCase {

    func testFiveMinutesAgo() throws {
        // given
        var elapsedTime = 0
        // when
        calculateElapsedTime(nowTime: 220, leaveTime: 100, elapsedTime: &elapsedTime)
        // then
        XCTAssertEqual(elapsedTime, 2)
    }

    func testFiveMinutesAgo2() throws {
        // given
        var elapsedTime = 0
        // when
        calculateElapsedTime(nowTime: 780, leaveTime: 60, elapsedTime: &elapsedTime)
        // then
        XCTAssertEqual(elapsedTime, 12)
    }

}
