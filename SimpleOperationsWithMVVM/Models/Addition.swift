//
//  Addition.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-22.
//

import Foundation

struct Addition {
    
    // MARK: Stored Properties
    var firstAddend: Int
    var secondAddend: Int
    
    // MARK: Computed Properties
    var sum: Int {
        return firstAddend + secondAddend
    }
}
