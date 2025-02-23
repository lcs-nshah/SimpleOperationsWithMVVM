//
//  Subtraction.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-22.
//

import Foundation

struct Subtraction {
    
    // MARK: Stored Properties
    var minuend: Double
    var subtrahend: Double
    
    // MARK: Computed Properties
    var difference: Double {
        return minuend - subtrahend
    }
}
