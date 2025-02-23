//
//  DivisionView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-21.
//

import SwiftUI

struct DivisionView: View {
    
    // MARK: Stored Properties
    @State var viewModel = DivisionViewModel()
    
    // MARK: Computed Properties
    var body: some View {
        VStack(alignment: .trailing) {
            
            Text("Division")
                .font(.system(.largeTitle , design: .default, weight: .semibold))
            
            Spacer()
            
            // First number
            TextField("Dividend", text: $viewModel.providedDividend)
                .font(.system(size: 58))
                .multilineTextAlignment(.trailing)
            
            // Second number
            HStack {
                Text("\(Image(systemName: "divide"))")
                    .font(.system(size: 50))
                Spacer()
                TextField("Divisor", text: $viewModel.providedDivisor)
                    .font(.system(size: 58))
                    .multilineTextAlignment(.trailing)
            }
            
            Rectangle()
                .frame(height: 5)
            
            // Unwrap the optional to show answer
            // or show appropriate error message
            if let divide = viewModel.division {
                Text("\(divide.quotient)")
                    .font(.system(size: 70))
                Text("R \(divide.remainder)")
                    .font(.system(size: 58))
                
                Spacer()
                
            } else {
                
                // Show a message indicating that we are awaiting reasonable input
                ContentUnavailableView(
                    "Unable to evaluate quotient",
                    systemImage: "gear.badge.questionmark",
                    description: Text(viewModel.recoverySuggestion)
                        .font(.system(size: 25))
                )
                .frame(height: 250)
            }
            
            Spacer()
        }
        .padding(25)
    }
}

#Preview {
    DivisionView()
}
