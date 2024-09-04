//
//  BodyMassIndexTestCase.swift
//  BranchStatementsTests
//
//  Created by igor.sorokin on 04.09.2024.
//

import XCTest

final class BodyMassIndex: XCTestCase {

    func testCalculateBMI1() throws {
        // given
        var bmi: Double = 0
        // when
        calculateBMI(weight: "72", height: "1.60", bmi: &bmi)
        // then
        XCTAssertTrue(
            bmi.compare(with: 28.125) == .equal,
            "При весе 72 и росте 1.60 bmi должен быть 28.125. А сейчас \(bmi)"
        )
    }

    func testCalculateBMI2() throws {
        // given
        var bmi: Double = 0
        // when
        calculateBMI(weight: "81", height: "1.80", bmi: &bmi)
        // then
        XCTAssertTrue(
            bmi.compare(with: 25) == .equal,
            "При весе 81 и росте 1.80 bmi должен быть 25. А сейчас \(bmi)"
        )
    }

    func testCalculateBMIError1() throws {
        // given
        var bmi: Double = -1
        // when
        calculateBMI(weight: "не число", height: "1.80", bmi: &bmi)
        // then
        XCTAssertTrue(
            bmi.compare(with: -1) == .equal,
            "Переменная weight содержит не число, поэтому переменная bmi не должна была измениться"
        )
    }

    func testCalculateBMIError2() throws {
        // given
        var bmi: Double = -1
        // when
        calculateBMI(weight: "70", height: "не число", bmi: &bmi)
        // then
        XCTAssertTrue(
            bmi.compare(with: -1) == .equal,
            "Переменная height содержит не число, поэтому переменная bmi не должна была измениться"
        )
    }

    func testCalculateBMIError3() throws {
        // given
        var bmi: Double = -1
        // when
        calculateBMI(weight: "не число", height: "не число", bmi: &bmi)
        // then
        XCTAssertTrue(
            bmi.compare(with: -1) == .equal,
            "Переменные weight и height не содержат числа, поэтому переменная bmi не должна была измениться"
        )
    }
}
