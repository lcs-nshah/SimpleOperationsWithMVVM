//
//  MultiplicationViewModel.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-22.
//

import Foundation

@Observable
class MultiplicationViewModel {
    
    // MARK: Stored Properties
    var resultHistory: [Multiplication] = []
    var providedMultiplicand: String
    var providedMultiplier: String
    var recoverySuggestion: String = ""
    
    // MARK: Computed Properties
    var multiplication: Multiplication? {
        
        // Check that the string in providedMultiplicand can be converted into Double
        guard let multiplicand = Double(providedMultiplicand) else {
            recoverySuggestion = "Please enter a numerical value for the multiplicand"
            
            return nil
        }
        
        // Check that the string in providedMultiplier can be converted into Double
        guard let multiplier = Double(providedMultiplier) else {
            recoverySuggestion = "Please enter a numerical value for the multiplier"
            
            return nil
        }
        
        // Return an instance of the model
        recoverySuggestion = ""
        
        return Multiplication(multiplicand: multiplicand, multiplier: multiplier)
    }
    
    // MARK: Initializer
    init(
        providedMultiplicand: String = "",
        providedMultiplier: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedMultiplicand = providedMultiplicand
        self.providedMultiplier = providedMultiplier
        self.recoverySuggestion = recoverySuggestion
    }
    
    // MARK: Function(s)
    func saveResult() {
        if let multiplication = self.multiplication {
            
            self.resultHistory.insert(multiplication, at: 0)
        }
    }
    
    func clearResult() {
        self.resultHistory.removeAll()
    }
}
