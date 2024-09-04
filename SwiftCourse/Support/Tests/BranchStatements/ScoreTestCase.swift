//
//  ScoreTestCase.swift
//  BranchStatementsTests
//
//  Created by igor.sorokin on 04.09.2024.
//

import XCTest

final class Score: XCTestCase {

    func testConvertScoreToGradeNice1() throws {
        // given
        var grade = ""
        // when
        convert(score: 90, to: &grade)
        // then
        XCTAssertEqual(
            grade,
            "Отлично",
            "При 90 баллах оценка должна быть «Отлично»"
        )
    }

    func testConvertScoreToGradeNice2() throws {
        // given
        var grade = ""
        // when
        convert(score: 100, to: &grade)
        // then
        XCTAssertEqual(
            grade,
            "Отлично",
            "При 100 баллах оценка должна быть «Отлично»"
        )
    }

    func testConvertScoreToGradeGood1() throws {
        // given
        var grade = ""
        // when
        convert(score: 70, to: &grade)
        // then
        XCTAssertEqual(
            grade,
            "Хорошо",
            "При 70 баллах оценка должна быть «Хорошо»"
        )
    }

    func testConvertScoreToGradeGood2() throws {
        // given
        var grade = ""
        // when
        convert(score: 89, to: &grade)
        // then
        XCTAssertEqual(
            grade,
            "Хорошо",
            "При 89 баллах оценка должна быть «Хорошо»"
        )
    }

    func testConvertScoreToGradeNormal1() throws {
        // given
        var grade = ""
        // when
        convert(score: 50, to: &grade)
        // then
        XCTAssertEqual(
            grade,
            "Удовлетворительно",
            "При 50 баллах оценка должна быть «Удовлетворительно»"
        )
    }

    func testConvertScoreToGradeNormal2() throws {
        // given
        var grade = ""
        // when
        convert(score: 69, to: &grade)
        // then
        XCTAssertEqual(
            grade,
            "Удовлетворительно",
            "При 69 баллах оценка должна быть «Удовлетворительно»"
        )
    }

    func testConvertScoreToGradeBad1() throws {
        // given
        var grade = ""
        // when
        convert(score: 0, to: &grade)
        // then
        XCTAssertEqual(
            grade,
            "Неудовлетворительно",
            "При 0 баллах оценка должна быть «Неудовлетворительно»"
        )
    }

    func testConvertScoreToGradeBad2() throws {
        // given
        var grade = ""
        // when
        convert(score: 49, to: &grade)
        // then
        XCTAssertEqual(
            grade,
            "Неудовлетворительно",
            "При 49 баллах оценка должна быть «Неудовлетворительно»"
        )
    }

    func testConvertScoreToGradeError1() throws {
        // given
        var grade = ""
        // when
        convert(score: -1, to: &grade)
        // then
        XCTAssertEqual(
            grade,
            "Ошибка",
            "При -1 баллах переменная grade должна содержать «Ошибка»"
        )
    }

    func testConvertScoreToGradeError2() throws {
        // given
        var grade = ""
        // when
        convert(score: 101, to: &grade)
        // then
        XCTAssertEqual(
            grade,
            "Ошибка",
            "При 101 баллах переменная grade должна содержать «Ошибка»"
        )
    }
}
