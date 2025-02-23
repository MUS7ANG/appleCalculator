//
//  CalculatorView.swift
//  Calculator
//
//  Created by Salikh on 8/1/25.
//

import SwiftUI

struct CalculatorView: View {
    
    @EnvironmentObject private var viewModel: ViewModel
    
    var buttonTypes: [[ButtonType]] {
            [[.allClear, .negative, .percent, .operation(.division)],
             [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.multiplication)],
             [.digit(.four), .digit(.five), .digit(.six), .operation(.subtraction)],
             [.digit(.one), .digit(.two), .digit(.three), .operation(.addition)],
             [.digit(.zero), .decimal, .equals]]
        }
    var body: some View {
        VStack {
            Spacer()
            displayText
            buttonPad

        }
        .padding(Constants.padding)
        .background(Color.black)
    }
}

extension CalculatorView {
    
    private var displayText: some View {
        Text(viewModel.displayText)
            .padding()
            .foregroundColor(.white)
            .font(.system(size: 88, weight: .light))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
    
    private var buttonPad: some View {
        VStack(spacing: Constants.padding) {
            ForEach (viewModel.buttonTypes, id: \.self) {row in
                HStack(spacing: Constants.padding) {
                    ForEach (row, id: \.self) {buttonType in CalculatorButton(buttonType: buttonType)
                    }
                }
            }
        }
    }
}
//
//#Preview {
//    CalculatorView()
//}
