//
//  SimpleCalculatorTestCase.swift
//  BranchStatementsTests
//
//  Created by igor.sorokin on 04.09.2024.
//

import XCTest

final class SimpleCalculator: XCTestCase {

    func testSimpleCalculatorAddition() throws {
        // given
        var result: Double = 0
        // when
        calculate(left: 100, action: "+", right: 20, result: &result)
        // then
        XCTAssertTrue(
            result.compare(with: 120) == .equal,
            "При сложении 100 и 20 должно быть 120. А сейчас \(result)"
        )
    }

    func testSimpleCalculatorSubstraction() throws {
        // given
        var result: Double = 0
        // when
        calculate(left: 20, action: "-", right: 50, result: &result)
        // then
        XCTAssertTrue(
            result.compare(with: -30) == .equal,
            "При вычитании 20 из 50 должно быть -30. А сейчас \(result)"
        )
    }

    func testSimpleCalculatorMultiplication() throws {
        // given
        var result: Double = 0
        // when
        calculate(left: 25.55, action: "*", right: -5, result: &result)
        // then
        XCTAssertTrue(
            result.compare(with: -127.75) == .equal,
            "При умножении 25.55 на -5 должно быть -127.75. А сейчас \(result)"
        )
    }

    func testSimpleCalculatorDivision() throws {
        // given
        var result: Double = 0
        // when
        calculate(left: 50.5, action: "/", right: 5, result: &result)
        // then
        XCTAssertTrue(
            result.compare(with: 10.1) == .equal,
            "При делении 50.5 на 5 должно быть 10.1. А сейчас \(result)"
        )
    }
}
