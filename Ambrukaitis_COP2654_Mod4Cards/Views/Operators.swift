//
//  Operators.swift
//  Ambrukaitis_COP2654_Mod4Cards
//
//  Created by Matas Ambrukaitis on 2/9/25.
//

import Foundation

func + (left: CGSize, right: CGSize) -> CGSize {
    CGSize(
        width: left.width + right.width,
        height: left.height + right.height)
}

func * (left: CGSize, right: CGFloat) -> CGSize {
    CGSize(
        width: left.width * right,
        height: left.height * right)
}

func *= (left: inout CGSize, right: Double) {
    left = CGSize(
        width: left.width * right,
        height: left.height * right)
}

func / (left: CGSize, right: CGFloat) -> CGSize {
    CGSize(
        width: left.width / right,
        height: left.height / right)
}
