//
//  Digits.swift
//  Calculator
//
//  Created by Salikh on 8/1/25.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String{
        "\(rawValue)"
    }
}
