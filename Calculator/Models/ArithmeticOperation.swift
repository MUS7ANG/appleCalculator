//
//  ArifmeticOperations.swift
//  Calculator
//
//  Created by Salikh on 8/1/25.
//

import Foundation

enum ArithmeticOperation: CaseIterable, CustomStringConvertible {
    case addition, subtraction, multiplication, division
    
    var description: String {
        switch self {
        case .addition:
            return "+"
            
        case .subtraction:
            return "-"
            
        case .multiplication:
            return "×"
            
        case .division:
            return "÷"
        }
    }
}
