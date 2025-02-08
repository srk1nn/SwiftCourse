//
//  UniquesTestCase.swift
//  CollectionsTests
//
//  Created by Sorokin Igor on 26.01.2025.
//

import XCTest

final class Uniques: XCTestCase {

    func testMakeUniques() throws {
        // given
        var uniques = [Int]()
        // when
        makeUniques(
            values: [1, 1, 1, 2, 2, 3, 4, 4],
            uniques: &uniques
        )
        // then
        XCTAssertEqual(uniques.count, 4)
        XCTAssertTrue(uniques.contains(1))
        XCTAssertTrue(uniques.contains(2))
        XCTAssertTrue(uniques.contains(3))
        XCTAssertTrue(uniques.contains(4))
    }

    func testMakeUniquesRandom() throws {
        // given
        var uniques = [Int]()
        // when
        makeUniques(
            values: [2, 3, 1, 1, 0, 4],
            uniques: &uniques
        )
        // then
        XCTAssertEqual(uniques.count, 5)
        XCTAssertTrue(uniques.contains(0))
        XCTAssertTrue(uniques.contains(1))
        XCTAssertTrue(uniques.contains(2))
        XCTAssertTrue(uniques.contains(3))
        XCTAssertTrue(uniques.contains(4))
    }

    func testMakeUniquesSingle() throws {
        // given
        var uniques = [Int]()
        // when
        makeUniques(
            values: [2],
            uniques: &uniques
        )
        // then
        XCTAssertEqual(uniques.count, 1)
        XCTAssertTrue(uniques.contains(2))
    }

    func testMakeUniquesEmpty() throws {
        // given
        var uniques = [Int]()
        // when
        makeUniques(
            values: [],
            uniques: &uniques
        )
        // then
        XCTAssertTrue(uniques.isEmpty)
    }

}
