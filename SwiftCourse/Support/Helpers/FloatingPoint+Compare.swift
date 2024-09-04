//
//  FloatingPoint+Compare.swift
//  SwiftCourse
//
//  Created by igor.sorokin on 04.09.2024.
//

import Foundation

enum CompareResult {
    case less
    case greater
    case equal
}

extension FloatingPoint {

    func compare(with value: Self) -> CompareResult {
        let diff = self - value
        if diff > .ulpOfOne {
            return .greater
        }
        if diff < -.ulpOfOne {
            return .less
        }
        return .equal
    }

}
