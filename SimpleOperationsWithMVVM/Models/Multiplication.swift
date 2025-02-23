//
//  Multiplication.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-22.
//

import Foundation

struct Multiplication {
    
    // MARK: Stored Properties
    var multiplicand: Double
    var multiplier: Double
    
    // MARK: Computed Properties
    var product: Double {
        return multiplicand * multiplier
    }
}
