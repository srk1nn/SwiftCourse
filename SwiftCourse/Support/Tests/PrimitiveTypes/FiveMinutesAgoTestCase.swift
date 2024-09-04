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
        XCTAssertEqual(
            elapsedTime,
            2,
            "При текущем времени 220 сек и времени выхода 100 сек ответ должен быть 2 мин. А сейчас \(elapsedTime)"
        )
    }

    func testFiveMinutesAgo2() throws {
        // given
        var elapsedTime = 0
        // when
        calculateElapsedTime(nowTime: 770, leaveTime: 60, elapsedTime: &elapsedTime)
        // then
        XCTAssertEqual(
            elapsedTime,
            11,
            "При текущем времени 770 cек и времени выхода 60 сек ответ должен быть 11 мин. А сейчас \(elapsedTime)"
        )
    }

}
