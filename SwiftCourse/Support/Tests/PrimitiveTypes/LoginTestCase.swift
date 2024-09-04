//
//  LoginTestCase.swift
//  PrimitiveTypesTests
//
//  Created by igor.sorokin on 27.08.2024.
//

import XCTest

// swiftlint:disable line_length

final class LoginTestCase: XCTestCase {
    
    func testLogin() throws {
        // given
        let username = "admin"
        let password = "123"
        let attemptCount = 1
        var isLoginSuccess = false

        // when
        login(
            username: username,
            password: password,
            attemptCount: attemptCount,
            isLoginSuccess: &isLoginSuccess
        )

        // then
        XCTAssertTrue(
            isLoginSuccess,
            "При username = \(username), password = \(password) и количестве попыток равном \(attemptCount) пользователя нужно залогинить"
        )
    }

    func testLoginAttemptCountLimit() throws {
        // given
        let username = "admin"
        let password = "123"
        let attemptCount = 3
        var isLoginSuccess = false
        
        // when
        login(
            username: username,
            password: password,
            attemptCount: attemptCount,
            isLoginSuccess: &isLoginSuccess
        )

        // then
        XCTAssertTrue(
            isLoginSuccess,
            "При username = \(username), password = \(password) и количестве попыток равном \(attemptCount) пользователя нужно залогинить"
        )
    }

    func testLoginWrongUsername() throws {
        // given
        let username = "user123"
        let password = "123"
        let attemptCount = 3
        var isLoginSuccess = true

        // when
        login(
            username: username,
            password: password,
            attemptCount: attemptCount,
            isLoginSuccess: &isLoginSuccess
        )

        // then
        XCTAssertFalse(
            isLoginSuccess,
            "При username = \(username) пользователя НЕ нужно логинить"
        )
    }

    func testLoginWrongPassword() throws {
        // given
        let username = "admin"
        let password = "000"
        let attemptCount = 3
        var isLoginSuccess = true

        // when
        login(
            username: username,
            password: password,
            attemptCount: attemptCount,
            isLoginSuccess: &isLoginSuccess
        )

        // then
        XCTAssertFalse(
            isLoginSuccess,
            "При password = \(password) пользователя НЕ нужно логинить"
        )
    }

    func testLoginWrongAttemptCount() throws {
        // given
        let username = "admin"
        let password = "123"
        let attemptCount = 4
        var isLoginSuccess = true

        // when
        login(
            username: username,
            password: password,
            attemptCount: attemptCount,
            isLoginSuccess: &isLoginSuccess
        )

        // then
        XCTAssertFalse(
            isLoginSuccess,
            "При количестве попыток равном \(attemptCount) пользователя НЕ нужно логинить"
        )
    }

}
