//
//  StudentInfoTestCase.swift
//  PrimitiveTypesTests
//
//  Created by igor.sorokin on 27.08.2024.
//

import XCTest

final class StudentInfo: XCTestCase {

    func testStudentInfo() throws {
        // given
        var studentInfo = ""
        // when
        studentInformation(name: "Игорь", birthYear: 2005, studentInfo: &studentInfo)
        // then
        XCTAssertEqual(
            studentInfo,
            "ученик Игорь возраст 19",
            "Строка должна быть «ученик Игорь возраст 19», а сейчас «\(studentInfo)»"
        )
    }

    func testStudentInfo2() throws {
        // given
        var studentInfo = ""
        // when
        studentInformation(name: "Петр", birthYear: 1999, studentInfo: &studentInfo)
        // then
        XCTAssertEqual(
            studentInfo,
            "ученик Петр возраст 25",
            "Строка должна быть «ученик Петр возраст 25», а сейчас «\(studentInfo)»"
        )
    }

}
