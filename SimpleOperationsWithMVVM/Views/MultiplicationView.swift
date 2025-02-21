//
//  MultiplicationView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-21.
//

import SwiftUI

struct MultiplicationView: View {
    
    // MARK: Stored Properties
    @State var multiplicand: Int = 1
    @State var multiplier: Int = 1
    
    // MARK: Computed Properties
    var product: Int {
        return multiplicand * multiplier
    }
    
    var body: some View {
        VStack(alignment: .trailing) {
            Spacer()
            
            // First number
            HStack {
                Spacer()
                Text("\(multiplicand)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $multiplicand, label: {
                Text("Multiplicand")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })
            
            // Second number
            HStack {
                Text("\(Image(systemName: "multiply"))")
                    .font(.system(size: 50))
                Spacer()
                Text("\(multiplier)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $multiplier, label: {
                Text("Multiplier")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })
            
            // Answer
            Rectangle()
                .frame(height: 5)
            
            Text("\(product)")
                .font(.system(size: 75))
            
            Spacer()
        }
        .padding(25)
    }
}

#Preview {
    MultiplicationView()
}
