//
//  UltimateQuestionTestCase.swift
//  Tutorial
//
//  Created by igor.sorokin on 25.08.2024.
//

import XCTest

final class UltimateQuestion: XCTestCase {

    func testUltimateQuestionOfLifeAndEverything() throws {
        // given
        var answer = 0
        // when
        ultimateQuestionOfLifeAndEverything(&answer)
        // then
        XCTAssertEqual(answer, 42)
    }

}
