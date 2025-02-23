//
//  DivisionModel.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-21.
//

import Foundation

struct Division: Identifiable {
    
    // MARK: Stored Properties
    let id = UUID()
    var dividend: Int
    var divisor: Int
    
    // MARK: Computed Properties
    var quotient: Int {
        return dividend / divisor
    }
    
    var remainder: Int {
        return dividend % divisor
    }
}
