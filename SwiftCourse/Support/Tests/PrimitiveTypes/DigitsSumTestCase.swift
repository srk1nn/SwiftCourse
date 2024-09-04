//
//  DigitsSumTestCase.swift
//  PrimitiveTypesTests
//
//  Created by igor.sorokin on 27.08.2024.
//

import XCTest

final class DigitsSum: XCTestCase {

    func testDigitsSum() throws {
        // given
        var sum = 0
        // when
        calculateDigitsSum(number: 13, sum: &sum)
        // then
        XCTAssertEqual(
            sum,
            4,
            "Для числа 13 сумма цифра равна 4. А сейчас \(sum)"
        )
    }

    func testDigitsSum2() throws {
        // given
        var sum = 0
        // when
        calculateDigitsSum(number: 67, sum: &sum)
        // then
        XCTAssertEqual(
            sum,
            13,
            "Для числа 67 сумма цифра равна 13. А сейчас \(sum)"
        )
    }

    func testDigitsSum3() throws {
        // given
        var sum = 0
        // when
        calculateDigitsSum(number: 10, sum: &sum)
        // then
        XCTAssertEqual(
            sum,
            1,
            "Для числа 10 сумма цифра равна 1. А сейчас \(sum)"
        )
    }

}
