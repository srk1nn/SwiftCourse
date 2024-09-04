//
//  EvenNumberTestCase.swift
//  BranchStatementsTests
//
//  Created by igor.sorokin on 04.09.2024.
//

import XCTest

final class EvenNumber: XCTestCase {

    func testIsEventNumberEven() throws {
        // given
        var isEven = false
        // when
        checkIsEven(stringNumber: "22", isEven: &isEven)
        // then
        XCTAssertTrue(
            isEven,
            "Число 22 четное. isEven должен быть true"
        )
    }

    func testIsEventNumberNotEven() throws {
        // given
        var isEven = true
        // when
        checkIsEven(stringNumber: "123", isEven: &isEven)
        // then
        XCTAssertFalse(
            isEven,
            "Число 123 нечетное. isEven должен быть false"
        )
    }

    func testIsEventNumberNotNumber() throws {
        // given
        var isEven = true
        // when
        checkIsEven(stringNumber: "не число", isEven: &isEven)
        // then
        XCTAssertFalse(
            isEven,
            "stringNumber не число. isEven должен быть false"
        )
    }
}
