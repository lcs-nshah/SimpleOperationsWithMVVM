//
//  Multiplication.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-22.
//

import Foundation

struct Multiplication {
    
    // MARK: Stored Properties
    var multiplicand: Int
    var multiplier: Int
    
    // MARK: Computed Properties
    var product: Int {
        return multiplicand * multiplier
    }
}
