//
//  ContactsTestCase.swift
//  CollectionsTests
//
//  Created by Sorokin Igor on 26.01.2025.
//

import XCTest

final class Contacts: XCTestCase {

    func testUpdateHandbook() throws {
        // given
        var handbook = ["Игорь": "8 918 111 11 11", "Алла": "8 918 333 33 33"]
        var checkedPhone = ""
        // when
        update(
            handbook: &handbook,
            nameToAdd: "Роберт",
            phoneToAdd: "8 918 222 22 22",
            nameToRemove: "Игорь",
            nameToCheck: "Алла",
            checkedPhone: &checkedPhone
        )
        // then
        XCTAssertEqual(handbook.count, 2)
        XCTAssertEqual(handbook["Роберт"], "8 918 222 22 22")
        XCTAssertNil(handbook["Игорь"])
        XCTAssertEqual(checkedPhone, "8 918 333 33 33")
    }

    func testUpdateHandbookEmpty() throws {
        // given
        var handbook = [String: String]()
        var checkedPhone = ""
        // when
        update(
            handbook: &handbook,
            nameToAdd: "Алла",
            phoneToAdd: "8 918 333 33 33",
            nameToRemove: "Игорь",
            nameToCheck: "Игорь",
            checkedPhone: &checkedPhone
        )
        // then
        XCTAssertEqual(handbook.count, 1)
        XCTAssertEqual(handbook["Алла"], "8 918 333 33 33")
        XCTAssertEqual(checkedPhone, "Нет")
    }
}
