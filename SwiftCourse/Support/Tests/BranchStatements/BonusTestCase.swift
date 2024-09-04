//
//  BonusTestCase.swift
//  BranchStatementsTests
//
//  Created by igor.sorokin on 04.09.2024.
//

import XCTest

final class Bonus: XCTestCase {

    func testCalculateBonusLessYear() throws {
        // given
        var bonus: Double = -1
        // when
        calculateBonus(salary: 10_000, workLength: 0, bonus: &bonus)
        // then
        XCTAssertEqual(
            bonus,
            0,
            "При зарплате 10.000 и кол-ве лет 0 премия должна быть 0. А сейчас \(bonus)"
        )
    }

    func testCalculateBonusOneYear() throws {
        // given
        var bonus: Double = 0
        // when
        calculateBonus(salary: 10_000, workLength: 1, bonus: &bonus)
        // then
        XCTAssertTrue(
            bonus.compare(with: 1_000) == .equal,
            "При зарплате 10.000 и кол-ве лет 1 премия должна быть 1.000. А сейчас \(bonus)"
        )
    }

    func testCalculateBonusFourYears() throws {
        // given
        var bonus: Double = 0
        // when
        calculateBonus(salary: 10_000, workLength: 4, bonus: &bonus)
        // then
        XCTAssertTrue(
            bonus.compare(with: 1_000) == .equal,
            "При зарплате 10.000 и кол-ве лет 4 премия должна быть 1.000. А сейчас \(bonus)"
        )
    }

    func testCalculateBonusFiveYears() throws {
        // given
        var bonus: Double = 0
        // when
        calculateBonus(salary: 10_000, workLength: 5, bonus: &bonus)
        // then
        XCTAssertTrue(
            bonus.compare(with: 2_000) == .equal,
            "При зарплате 10.000 и кол-ве лет 5 премия должна быть 2.000. А сейчас \(bonus)"
        )
    }

    func testCalculateBonusNineYears() throws {
        // given
        var bonus: Double = 0
        // when
        calculateBonus(salary: 10_000, workLength: 9, bonus: &bonus)
        // then
        XCTAssertTrue(
            bonus.compare(with: 2_000) == .equal,
            "При зарплате 10.000 и кол-ве лет 9 премия должна быть 2.000. А сейчас \(bonus)"
        )
    }

    func testCalculateBonusTenYears() throws {
        // given
        var bonus: Double = 0
        // when
        calculateBonus(salary: 10_000, workLength: 10, bonus: &bonus)
        // then
        XCTAssertTrue(
            bonus.compare(with: 3_000) == .equal,
            "При зарплате 10.000 и кол-ве лет 10 премия должна быть 3.000. А сейчас \(bonus)"
        )
    }

    func testCalculateBonusManyYears() throws {
        // given
        var bonus: Double = 0
        // when
        calculateBonus(salary: 10_000, workLength: 55, bonus: &bonus)
        // then
        XCTAssertTrue(
            bonus.compare(with: 3_000) == .equal,
            "При зарплате 10.000 и кол-ве лет 55 премия должна быть 3.000. А сейчас \(bonus)"
        )
    }
}
