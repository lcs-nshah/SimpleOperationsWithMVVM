//
//  DivisionItemView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-24.
//

import SwiftUI

struct DivisionItemView: View {
    
    // MARK: Stored properties
    let division: Division
    
    // MARK: Computed properties
    var body: some View {
        
        HStack {
            
            Text("\(division.dividend)")
                .font(.largeTitle)
            
            Text("\(Image(systemName: "divide"))")
            
            Text("\(division.divisor)")
                .font(.largeTitle)
            
            Text("=")
                .font(.largeTitle)
            
            Text("\(division.quotient)")
                .font(.largeTitle)
            
            Text("R \(division.remainder)")
                .font(.largeTitle)
        }
        .lineLimit(1)
        .minimumScaleFactor(0.5)
    }
}

#Preview {
    DivisionItemView(division: Division(dividend: 3, divisor: 2))
        .padding()
}
