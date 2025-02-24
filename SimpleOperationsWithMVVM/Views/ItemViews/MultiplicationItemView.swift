//
//  MultiplicationItemView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-24.
//

import SwiftUI

struct MultiplicationItemView: View {
    
    // MARK: Stored properties
    let multiplication: Multiplication
    
    // MARK: Computed properties
    var body: some View {
        
        HStack {
            
            Text("\(multiplication.multiplicand.formatted())")
                .font(.largeTitle)
            
            Text("\(Image(systemName: "multiply"))")
            
            Text("\(multiplication.multiplier.formatted())")
                .font(.largeTitle)
            
            Text("=")
                .font(.largeTitle)
            
            Text("\(multiplication.product.formatted())")
                .font(.largeTitle)
        }
        .lineLimit(1)
        .minimumScaleFactor(0.5)
    }
}

#Preview {
    MultiplicationItemView(multiplication: Multiplication(multiplicand: 3, multiplier: 2))
        .padding()
}
