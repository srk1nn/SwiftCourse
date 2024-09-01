//
//  LoginTestCase.swift
//  PrimitiveTypesTests
//
//  Created by igor.sorokin on 27.08.2024.
//

import XCTest

final class LoginTestCase: XCTestCase {
    
    func testLogin() throws {
        // given
        var isLoginSuccess = false
        // when
        login(username: "admin", password: "123", attemptCount: 1, isLoginSuccess: &isLoginSuccess)
        // then
        XCTAssertTrue(isLoginSuccess)
    }

    func testLoginAttemptCountLimit() throws {
        // given
        var isLoginSuccess = false
        // when
        login(username: "admin", password: "123", attemptCount: 3, isLoginSuccess: &isLoginSuccess)
        // then
        XCTAssertTrue(isLoginSuccess)
    }

    func testLoginWrongUsername() throws {
        // given
        var isLoginSuccess = true
        // when
        login(username: "user123", password: "123", attemptCount: 3, isLoginSuccess: &isLoginSuccess)
        // then
        XCTAssertFalse(isLoginSuccess)
    }

    func testLoginWrongPassword() throws {
        // given
        var isLoginSuccess = true
        // when
        login(username: "admin", password: "000", attemptCount: 3, isLoginSuccess: &isLoginSuccess)
        // then
        XCTAssertFalse(isLoginSuccess)
    }

    func testLoginWrongAttemptCount() throws {
        // given
        var isLoginSuccess = true
        // when
        login(username: "admin", password: "123", attemptCount: 4, isLoginSuccess: &isLoginSuccess)
        // then
        XCTAssertFalse(isLoginSuccess)
    }

}
