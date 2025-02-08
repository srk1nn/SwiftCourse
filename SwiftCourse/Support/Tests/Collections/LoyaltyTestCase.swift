//
//  LoyaltyTestCase.swift
//  CollectionsTests
//
//  Created by Sorokin Igor on 26.01.2025.
//

import XCTest

final class Loyalty: XCTestCase {

    func testLoyalty() throws {
        // given
        var discount = -1
        // when
        getDiscount(
            levelByClients: ["Игорь": "Бронзовый", "Роберт": "Серебряный", "Марк": "Золотой"],
            name: "Игорь",
            discount: &discount
        )
        // then
        XCTAssertEqual(discount, 5, "Для «Бронзовый» скидка должна быть 5")
    }

    func testLoyaltySilver() throws {
        // given
        var discount = -1
        // when
        getDiscount(
            levelByClients: ["Игорь": "Бронзовый", "Роберт": "Серебряный", "Марк": "Золотой"],
            name: "Роберт",
            discount: &discount
        )
        // then
        XCTAssertEqual(discount, 10, "Для «Серебряный» скидка должна быть 10")
    }

    func testLoyaltyGold() throws {
        // given
        var discount = -1
        // when
        getDiscount(
            levelByClients: ["Игорь": "Бронзовый", "Роберт": "Серебряный", "Марк": "Золотой"],
            name: "Марк",
            discount: &discount
        )
        // then
        XCTAssertEqual(discount, 20, "Для «Золотой» скидка должна быть 20")
    }

    func testLoyaltyEmpty() throws {
        // given
        var discount = -1
        // when
        getDiscount(
            levelByClients: ["Игорь": "Бронзовый", "Роберт": "Серебряный", "Марк": "Золотой"],
            name: "Алла",
            discount: &discount
        )
        // then
        XCTAssertEqual(discount, 0, "Такого клиента нет в словаре, скидка должна быть 0")
    }
}
