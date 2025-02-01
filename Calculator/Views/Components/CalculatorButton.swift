//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Salikh on 11/1/25.
//

import Foundation
import SwiftUI

extension CalculatorView {
    struct CalculatorButton: View {
        
        let buttonType: ButtonType
        
        var body: some View {
            Button(buttonType.description) { }
                .buttonStyle(CalculatorButtonStyle(
                    size: getButtonSize(),
                    backgroundColor: buttonType.backgroundColor,
                    foregroundColor: buttonType.ForegroundColor,
                    isWide: buttonType == .digit(.zero)
                )
            )
        }
        private func getButtonSize() -> CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount = 4.0
            let spacingCount = buttonCount + 1
            return (screenWidth - (spacingCount * Constants.padding)) / buttonCount
        }
    }
}
