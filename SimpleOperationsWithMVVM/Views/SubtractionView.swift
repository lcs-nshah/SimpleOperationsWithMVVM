//
//  SubtractionView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-21.
//

import SwiftUI

struct SubtractionView: View {
    
    // MARK: Stored Properties
    @State var minuend: Int = 1
    @State var subtrahend: Int = 1
    
    // MARK: Computed Properties
    var difference: Int {
        return minuend - subtrahend
    }
    
    var body: some View {
        VStack(alignment: .trailing) {
            Spacer()
            
            // First number
            HStack {
                Spacer()
                Text("\(minuend)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $minuend, label: {
                Text("Minuend")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })
            
            // Second number
            HStack {
                Text("\(Image(systemName: "minus"))")
                    .font(.system(size: 50))
                Spacer()
                Text("\(subtrahend)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $subtrahend, label: {
                Text("Subtrahend")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })
            
            // Answer
            Rectangle()
                .frame(height: 5)
            
            Text("\(difference)")
                .font(.system(size: 75))
            
            Spacer()
        }
        .padding(25)
    }
}

#Preview {
    SubtractionView()
}
