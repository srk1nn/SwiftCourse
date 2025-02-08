//
//  OrderTestCase.swift
//  CollectionsTests
//
//  Created by Sorokin Igor on 26.01.2025.
//

import XCTest

final class Order: XCTestCase {

    func testFindShell() throws {
        // given
        var index = 100
        // when
        findShell(
            products: ["iPad", "iPhone", "iMac", "iPhone"],
            name: "iPhone",
            productIndex: &index
        )
        // then
        XCTAssertEqual(
            index,
            1,
            "Индекс должен быть 1"
        )
    }

    func testFindShellSingle() throws {
        // given
        var index = 100
        // when
        findShell(
            products: ["iPhone", "iPhone"],
            name: "iPhone",
            productIndex: &index
        )
        // then
        XCTAssertEqual(
            index,
            0,
            "Индекс должен быть 0"
        )
    }

    func testFindShellEmpty() throws {
        // given
        var index = 100
        // when
        findShell(
            products: [],
            name: "iPhone",
            productIndex: &index
        )
        // then
        XCTAssertEqual(
            index,
            -1,
            "Индекс должен быть -1"
        )
    }

    func testFindShellMissing() throws {
        // given
        var index = 100
        // when
        findShell(
            products: ["iMac", "iPad"],
            name: "iPhone",
            productIndex: &index
        )
        // then
        XCTAssertEqual(
            index,
            -1,
            "Индекс должен быть -1"
        )
    }

}
