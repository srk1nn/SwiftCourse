//
//  CreditRatingTestCase.swift
//  BranchStatementsTests
//
//  Created by igor.sorokin on 04.09.2024.
//

import XCTest

final class CreditRating: XCTestCase {

    func testCalculateRatingAge1() throws {
        // given
        var creditRating = 0
        // when
        calculateRating(
            age: 39,
            income: 0,
            creditsCount: 0,
            overduePaymentsCount: 0,
            creditRating: &creditRating
        )
        // then
        XCTAssertEqual(
            creditRating, 
            10,
            "В возрасте до 40 к рейтингу должно прибавляться 10 баллов"
        )
    }

    func testCalculateRatingAge2() throws {
        // given
        var creditRating = 0
        // when
        calculateRating(
            age: 40,
            income: 0,
            creditsCount: 0,
            overduePaymentsCount: 0,
            creditRating: &creditRating
        )
        // then
        XCTAssertEqual(
            creditRating,
            0,
            "В возрасте 40 и выше к рейтингу НЕ должно прибавляться 10 баллов"
        )
    }

    func testCalculateRatingIncome1() throws {
        // given
        var creditRating = 0
        // when
        calculateRating(
            age: 40,
            income: 50_000,
            creditsCount: 0,
            overduePaymentsCount: 0,
            creditRating: &creditRating
        )
        // then
        XCTAssertEqual(
            creditRating,
            0,
            "При доходе в 50.000 к рейтингу НЕ должно прибавляться 20 баллов"
        )
    }

    func testCalculateRatingIncome2() throws {
        // given
        var creditRating = 0
        // when
        calculateRating(
            age: 40,
            income: 100_000,
            creditsCount: 0,
            overduePaymentsCount: 0,
            creditRating: &creditRating
        )
        // then
        XCTAssertEqual(
            creditRating,
            20,
            "При доходе выше 50.000 и не больше 100.000 к рейтингу должно прибавляться 20 баллов"
        )
    }

    func testCalculateRatingIncome3() throws {
        // given
        var creditRating = 0
        // when
        calculateRating(
            age: 40,
            income: 100_001,
            creditsCount: 0,
            overduePaymentsCount: 0,
            creditRating: &creditRating
        )
        // then
        XCTAssertEqual(
            creditRating,
            40,
            "При доходе выше 100.000 к рейтингу должно прибавляться 40 баллов"
        )
    }

    func testCalculateRatingCreditsCount() throws {
        // given
        var creditRating = 0
        // when
        calculateRating(
            age: 40,
            income: 0,
            creditsCount: 2,
            overduePaymentsCount: 0,
            creditRating: &creditRating
        )
        // then
        XCTAssertEqual(
            creditRating,
            -20,
            "При наличии двух кредитов из рейтинга должно вычитаться 20 баллов (по 10 за каждый)"
        )
    }

    func testCalculateRatingOverduePaymentsCount() throws {
        // given
        var creditRating = 0
        // when
        calculateRating(
            age: 40,
            income: 0,
            creditsCount: 0,
            overduePaymentsCount: 2,
            creditRating: &creditRating
        )
        // then
        XCTAssertEqual(
            creditRating,
            -40,
            "При наличии двух просрочек из рейтинга должно вычитаться 40 баллов (по 20 за каждую)"
        )
    }
}
