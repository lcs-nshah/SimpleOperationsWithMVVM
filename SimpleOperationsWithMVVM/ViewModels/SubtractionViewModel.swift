//
//  SubtractionViewModel.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-22.
//

import Foundation

@Observable
class SubtractionViewModel {
    
    // MARK: Stored Properties
    var providedMinuend: String
    var providedSubtrahend: String
    var recoverySuggestion: String = ""
    
    // MARK: Computed Properties
    var subtraction: Subtraction? {
        
        // Check that the string in providedMinuend can be converted into Int
        guard let minuend = Int(providedMinuend) else {
            recoverySuggestion = "Please enter an integer for the minuend"
            
            return nil
        }
        
        // Check that the string in providedSubtrahend can be converted into Int
        guard let subtrahend = Int(providedSubtrahend) else {
            recoverySuggestion = "Please enter an integer for the subtrahend"
            
            return nil
        }
        
        // Return an instance of the model
        recoverySuggestion = ""
       
        return Subtraction(minuend: minuend, subtrahend: subtrahend)
    }
    
    // MARK: Initializer
    init(
        providedMinuend: String = "",
        providedSubtrahend: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedMinuend = providedMinuend
        self.providedSubtrahend = providedSubtrahend
        self.recoverySuggestion = recoverySuggestion
    }
}
