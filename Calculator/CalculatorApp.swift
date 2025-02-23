//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Salikh on 8/1/25.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorView.ViewModel())
        }
    }
}


