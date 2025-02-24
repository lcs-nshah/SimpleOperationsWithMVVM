//
//  DivisionViewModel.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-21.
//

import Foundation

@Observable
class DivisionViewModel {
    
    // MARK: Stored Properties
    var resultHistory: [Division] = []
    var providedDividend: String
    var providedDivisor: String
    var recoverySuggestion: String = ""
    
    // MARK: Computed Properties
    var division: Division? {
        
        // Check that the string in providedDividend can be converted into Int
        guard let dividend = Int(providedDividend) else {
            recoverySuggestion = "Please enter an integer for the dividend"
            
            return nil
        }
        
        // Check that the string in providedDivisor can be converted into Int
        guard let divisor = Int(providedDivisor) else {
            recoverySuggestion = "Please enter a non-zero integer for the divisor"
            
            return nil
        }
        
        // Check that the divisor ≠ 0
        guard divisor != 0 else {
            recoverySuggestion = "Please enter a non-zero integer for the divisor"
            
            return nil
        }
        
        // Return an instance of the model
        recoverySuggestion = ""
        
        return Division(dividend: dividend, divisor: divisor)
    }
    
    // MARK: Initializer
    init(
        providedDividend: String = "",
        providedDivisor: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedDividend = providedDividend
        self.providedDivisor = providedDivisor
        self.recoverySuggestion = recoverySuggestion
    }
    
    // MARK: Function(s)
    func saveResult() {
        if let division = self.division {
            
            self.resultHistory.insert(division, at: 0)
        }
    }
    
    func clearResult() {
        self.resultHistory.removeAll()
    }
}
