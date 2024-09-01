//
//  PromotionTestCase.swift
//  PrimitiveTypesTests
//
//  Created by igor.sorokin on 27.08.2024.
//

import XCTest

final class PromotionTestCase: XCTestCase {

    func testPromotion() throws {
        // given
        var isUserSatisfy = false
        // when
        satisfyPromotion(
            name: "Игорь", 
            age: 18,
            isCardAdded: true,
            productPrice: 1200,
            productDiscountPercent: 5,
            isUserSatisfy: &isUserSatisfy
        )
        // then
        XCTAssertTrue(isUserSatisfy)
    }

    func testPromotionWrongName() throws {
        // given
        var isUserSatisfy = true
        // when
        satisfyPromotion(
            name: "Петр",
            age: 18,
            isCardAdded: true,
            productPrice: 1200,
            productDiscountPercent: 5,
            isUserSatisfy: &isUserSatisfy
        )
        // then
        XCTAssertFalse(isUserSatisfy)
    }

    func testPromotionWrongAge() throws {
        // given
        var isUserSatisfy = true
        // when
        satisfyPromotion(
            name: "Игорь",
            age: 17,
            isCardAdded: true,
            productPrice: 1200,
            productDiscountPercent: 5,
            isUserSatisfy: &isUserSatisfy
        )
        // then
        XCTAssertFalse(isUserSatisfy)
    }

    func testPromotionNotAddCard() throws {
        // given
        var isUserSatisfy = true
        // when
        satisfyPromotion(
            name: "Игорь",
            age: 18,
            isCardAdded: false,
            productPrice: 1200,
            productDiscountPercent: 5,
            isUserSatisfy: &isUserSatisfy
        )
        // then
        XCTAssertFalse(isUserSatisfy)
    }

    func testPromotionWrongPrice() throws {
        // given
        var isUserSatisfy = true
        // when
        satisfyPromotion(
            name: "Игорь",
            age: 18,
            isCardAdded: true,
            productPrice: 1200,
            productDiscountPercent: 17,
            isUserSatisfy: &isUserSatisfy
        )
        // then
        XCTAssertFalse(isUserSatisfy)
    }
}
