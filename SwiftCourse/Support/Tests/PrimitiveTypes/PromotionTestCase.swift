//
//  PromotionTestCase.swift
//  PrimitiveTypesTests
//
//  Created by igor.sorokin on 27.08.2024.
//

import XCTest

// swiftlint:disable line_length

final class PromotionTestCase: XCTestCase {

    func testPromotion() throws {
        // given
        let name = "Игорь"
        let age = 18
        let isCardAdded = true
        let productPrice: Double = 1200
        let productDiscountPercent: Double = 5
        var isUserSatisfy = false

        // when
        satisfyPromotion(
            name: name,
            age: age,
            isCardAdded: isCardAdded,
            productPrice: productPrice,
            productDiscountPercent: productDiscountPercent,
            isUserSatisfy: &isUserSatisfy
        )

        // then
        XCTAssertTrue(
            isUserSatisfy, 
            "Все условия соблюдены. Имя \(name), возраст \(age), карта добавлена \(isCardAdded), стоимость последней покупки c учетом скидки \(productPrice - productPrice * productDiscountPercent / 100). isUserSatisfy должен быть true"
        )
    }

    func testPromotionWrongName() throws {
        // given
        let name = "Петр"
        let age = 18
        let isCardAdded = true
        let productPrice: Double = 1200
        let productDiscountPercent: Double = 5
        var isUserSatisfy = true

        // when
        satisfyPromotion(
            name: name,
            age: age,
            isCardAdded: isCardAdded,
            productPrice: productPrice,
            productDiscountPercent: productDiscountPercent,
            isUserSatisfy: &isUserSatisfy
        )

        // then
        XCTAssertFalse(
            isUserSatisfy,
            "Условия не соблюдены. Имя \(name). isUserSatisfy должен быть false"
        )
    }

    func testPromotionWrongAge() throws {
        // given
        let name = "Игорь"
        let age = 17
        let isCardAdded = true
        let productPrice: Double = 1200
        let productDiscountPercent: Double = 5
        var isUserSatisfy = true

        // when
        satisfyPromotion(
            name: name,
            age: age,
            isCardAdded: isCardAdded,
            productPrice: productPrice,
            productDiscountPercent: productDiscountPercent,
            isUserSatisfy: &isUserSatisfy
        )

        // then
        XCTAssertFalse(
            isUserSatisfy,
            "Условия не соблюдены. Возраст \(age). isUserSatisfy должен быть false"
        )
    }

    func testPromotionNotAddCard() throws {
        // given
        let name = "Игорь"
        let age = 18
        let isCardAdded = false
        let productPrice: Double = 1200
        let productDiscountPercent: Double = 5
        var isUserSatisfy = true

        // when
        satisfyPromotion(
            name: name,
            age: age,
            isCardAdded: isCardAdded,
            productPrice: productPrice,
            productDiscountPercent: productDiscountPercent,
            isUserSatisfy: &isUserSatisfy
        )

        // then
        XCTAssertFalse(
            isUserSatisfy,
            "Условия не соблюдены. Карта не добавлена. isUserSatisfy должен быть false"
        )
    }

    func testPromotionWrongPrice() throws {
        // given
        let name = "Игорь"
        let age = 18
        let isCardAdded = true
        let productPrice: Double = 1200
        let productDiscountPercent: Double = 17
        var isUserSatisfy = true

        // when
        satisfyPromotion(
            name: name,
            age: age,
            isCardAdded: isCardAdded,
            productPrice: productPrice,
            productDiscountPercent: productDiscountPercent,
            isUserSatisfy: &isUserSatisfy
        )

        // then
        XCTAssertFalse(
            isUserSatisfy,
            "Условия не соблюдены. Стоимость последней покупки c учетом скидки \(productPrice - productPrice * productDiscountPercent / 100). isUserSatisfy должен быть false"
        )
    }
}
