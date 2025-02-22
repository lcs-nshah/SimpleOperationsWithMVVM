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
    var providedMultiplicand: String
    var providedMultiplier: String
    var recoverySuggestion: String = ""
    
    // MARK: Computed Properties
    var multiplication: Multiplication? {
        
        // Check that the string in providedMultiplicand can be converted into Int
        guard let multiplicand = Int(providedMultiplicand) else {
    
            recoverySuggestion = "Please enter an integer for the multiplicand."
            
            return nil
        }
        
        // Check that the string in providedDivisor can be converted into Int
        guard let multiplier = Int(providedMultiplier) else {
            recoverySuggestion = "Please enter an integer for the multiplier."
            
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
}
