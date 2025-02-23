//
//  AdditionViewModel.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-22.
//

import Foundation

@Observable
class AdditionViewModel {
    
    // MARK: Stored Properties
    var providedFirstAddend: String
    var providedSecondAddend: String
    var recoverySuggestion: String = ""
    
    // MARK: Computed Properties
    var addition: Addition? {
        
        // Check that the string in providedFirstAddend can be converted into Double
        guard let firstAddend = Double(providedFirstAddend) else {
            recoverySuggestion = "Please enter a numerical value for the first addend"
            
            return nil
        }
        
        // Check that the string in providedSecondAddend can be converted into Double
        guard let secondAddend = Double(providedSecondAddend) else {
            recoverySuggestion = "Please enter a numerical value for the second addend"
            
            return nil
        }
        
        // Return an instance of the model
        recoverySuggestion = ""
        
        return Addition(firstAddend: firstAddend, secondAddend: secondAddend)
    }
    
    // MARK: Initializer
    init(
        providedFirstAddend: String = "",
        providedSecondAddend: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedFirstAddend = providedFirstAddend
        self.providedSecondAddend = providedSecondAddend
        self.recoverySuggestion = recoverySuggestion
    }
}
