//
//  Subtraction.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-22.
//

import Foundation

struct Subtraction: Identifiable {
    
    // MARK: Stored Properties
    let id = UUID()
    var minuend: Double
    var subtrahend: Double
    
    // MARK: Computed Properties
    var difference: Double {
        return minuend - subtrahend
    }
}
