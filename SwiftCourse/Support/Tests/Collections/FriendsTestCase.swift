//
//  FriendsTestCase.swift
//  CollectionsTests
//
//  Created by Sorokin Igor on 26.01.2025.
//

import XCTest

final class Friends: XCTestCase {

    func testFind() throws {
        // given
        var mutualFriends = Set<String>()
        // when
        find(
            friends: ["Игорь", "Алена", "Роберт"],
            otherFriends: ["Игорь", "Роберт", "Боб"],
            mutualFriends: &mutualFriends
        )
        // then
        XCTAssertEqual(mutualFriends.count, 2, "Должно быть 2 общих друга")
        XCTAssertTrue(mutualFriends.contains("Игорь"), "Должен быть общий друг – Игорь")
        XCTAssertTrue(mutualFriends.contains("Роберт"), "Должен быть общий друг – Роберт")
    }

    func testFindSingle() throws {
        // given
        var mutualFriends = Set<String>()
        // when
        find(
            friends: ["Игорь", "Алена", "Роберт"],
            otherFriends: ["Игорь"],
            mutualFriends: &mutualFriends
        )
        // then
        XCTAssertEqual(mutualFriends.count, 1, "Должен быть только 1 общий друг")
        XCTAssertTrue(mutualFriends.contains("Игорь"), "Должен быть только 1 общий друг – Игорь")
    }

    func testFindEmpty() throws {
        // given
        var mutualFriends = Set<String>()
        // when
        find(
            friends: ["Игорь", "Алена", "Роберт"],
            otherFriends: [],
            mutualFriends: &mutualFriends
        )
        // then
        XCTAssertEqual(mutualFriends.count, 0, "Не должно быть общих друзей")
    }
}
