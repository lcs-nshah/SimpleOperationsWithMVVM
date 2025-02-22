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
            Spacer()
            
            // INPUT
            // First number
                TextField("Dividend", text: $viewModel.providedDividend)
                    .font(.system(size: 75))
                    .multilineTextAlignment(.trailing)
            
            Stepper(value: $dividend, label: {
                Text("Dividend")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })
            
            // Second number
            HStack {
                Text("\(Image(systemName: "divide"))")
                    .font(.system(size: 50))
                Spacer()
                Text("\(divisor)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $divisor, label: {
                Text("Divisor")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })
            
            Rectangle()
                .frame(height: 5)
            
            // Unwrap the optional to show answer
            // or show appropriate error message
            if let unwrappedQuotient = quotient {
                Text("\(unwrappedQuotient)")
                    .font(.system(size: 75))
            } else {
                Text("Cannot Divide by Zero")
                    .font(.system(size: 40))
            }
            
            Spacer()
        }
        .padding(25)
    }
}

#Preview {
    DivisionView()
}
