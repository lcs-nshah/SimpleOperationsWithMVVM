//
//  MultiplicationView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-21.
//

import SwiftUI

struct MultiplicationView: View {
    
    // MARK: Stored Properties
    @State var viewModel = MultiplicationViewModel()
    
    // MARK: Computed Properties
    var body: some View {
        VStack (alignment: .trailing) {
            
            Text("Multiplication")
                .font(.system(.largeTitle , design: .default, weight: .semibold))
            
            Spacer()
            
            // First number
            TextField("Multiplicand", text: $viewModel.providedMultiplicand)
                .font(.system(size: 58))
                .multilineTextAlignment(.trailing)
            
            // Second number
            HStack {
               
                Text("\(Image(systemName: "multiply"))")
                    .font(.system(size: 50))
               
                Spacer()
                
                TextField("Multiplier", text: $viewModel.providedMultiplier)
                    .font(.system(size: 58))
                    .multilineTextAlignment(.trailing)
            }
            
            Rectangle()
                .frame(height: 5)
            
            // Unwrap the optional to show answer
            // or show appropriate error message
            if let multiply = viewModel.multiplication {
                Text("\(multiply.product.formatted())")
                    .font(.system(size: 70))
                
                Spacer()
                
                Spacer()
            } else {
                // Show a message indicating that we are awaiting reasonable input
                ContentUnavailableView(
                    "Unable to evaluate product",
                    systemImage: "gear.badge.questionmark",
                    description: Text(viewModel.recoverySuggestion)
                        .font(.system(size: 25))
                )
                .frame(height: 274)
            }
            
            Spacer()
        }
        .padding(19)
    }
}

#Preview {
    MultiplicationView()
}
