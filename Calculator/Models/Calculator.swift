//
//  Calculator.swift
//  Calculator
//
//  Created by Salikh on 16/2/25.
//

import Foundation

struct Calculator {
    
    private struct ArithmeticExpression: Equatable {
        var number: Decimal
        var operation: ArithmeticOperation
        
        func evaluate(with secondNumber: Decimal) -> Decimal {
            switch operation {
            case .addition:
                return number + secondNumber
            case .subtraction:
                return number - secondNumber
            case .multiplication:
                return number * secondNumber
            case .division:
                return number / secondNumber
            }
        }
    }
    
    
    
    private var newNumber: Decimal?
    private var expression: ArithmeticExpression?
    private var result: Decimal?


    var displayText: String {
        return getNumberString(forNumber: number, withCommas: true)
    }

    private var number: Decimal? {
        newNumber ?? expression?.number ?? result
    }
    

//    var displayText: String {
//        return "0"
//    }
    
    
    mutating func setDigit(_ digit: Digit) {
        guard canAddDigit(digit) else {return}
        
        let numberString = getNumberString(forNumber: newNumber)
        
        newNumber = Decimal(string: numberString.appending("\(digit.rawValue)"))

    }
    
    mutating func setOperation(_ operation: ArithmeticOperation) {
        guard var number = newNumber ?? result else {return}
        
        if let existingExpression = expression {
            number = existingExpression.evaluate(with: number)
        }
        
        expression = ArithmeticExpression(number: number, operation: operation)
        
        newNumber = nil
    }
    
    mutating func toggleSign() {
        
    }
    
    mutating func setPercent() {
        
    }
    
    mutating func setDecimal() {
        
    }
    
    mutating func evaluate() {
        
    }
    
    mutating func allClear() {
        
    }
    
    mutating func clear() {
        
    }
    
    func operationIsHighlighted(_ operation: ArithmeticOperation) -> Bool{
        return expression?.operation == operation && newNumber == nil
    }
    
    
    private func getNumberString(forNumber number: Decimal?, withCommas: Bool = false) -> String {
            return (withCommas ? number?.formatted(.number) : number.map(String.init)) ?? "0"
    }
    
    private func canAddDigit(_ digit: Digit) -> Bool {
        return number != nil || digit != .zero
    }
}
