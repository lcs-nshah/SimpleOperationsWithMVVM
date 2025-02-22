//
//  Subtraction.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-22.
//

import Foundation

struct Subtraction {
    
    // MARK: Stored Properties
    var minuend: Int
    var subtrahend: Int
    
    // MARK: Computed Properties
    var difference: Int {
        return minuend - subtrahend
    }
}
