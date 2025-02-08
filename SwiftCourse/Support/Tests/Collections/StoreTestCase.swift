//
//  StoreTestCase.swift
//  CollectionsTests
//
//  Created by Sorokin Igor on 26.01.2025.
//

import XCTest

final class Store: XCTestCase {

    func testProductCount() throws {
        // given
        var total = 0
        // when
        productCount(
            products: ["iPhone", "iPad", "iPhone", "iMac"],
            name: "iPhone",
            total: &total
        )
        // then
        XCTAssertEqual(
            total,
            2,
            "Товара должно быть 2"
        )
    }

    func testProductSignle() throws {
        // given
        var total = 0
        // when
        productCount(
            products: ["iPad"],
            name: "iPad",
            total: &total
        )
        // then
        XCTAssertEqual(
            total,
            1,
            "Товар должен быть 1"
        )
    }

    func testProductCountMissing() throws {
        // given
        var total = 0
        // when
        productCount(
            products: ["iPhone", "iPad", "iPhone", "iMac"],
            name: "Apple TV",
            total: &total
        )
        // then
        XCTAssertEqual(
            total,
            0,
            "Товаров должно быть 0. Apple TV на складе нет"
        )
    }

    func testProductCountEmpty() throws {
        // given
        var total = 0
        // when
        productCount(
            products: [],
            name: "Apple TV",
            total: &total
        )
        // then
        XCTAssertEqual(
            total,
            0,
            "Товаров должно быть 0. Склад пуст"
        )
    }
}
