//
//  Addition.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-22.
//

import Foundation

struct Addition {
    
    // MARK: Stored Properties
    var firstAddend: Double
    var secondAddend: Double
    
    // MARK: Computed Properties
    var sum: Double {
        return firstAddend + secondAddend
    }
}
