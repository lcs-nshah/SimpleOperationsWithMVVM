//
//  AdditionView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-21.
//

import SwiftUI

struct AdditionView: View {
    
    // MARK: Stored Properties
    @State var viewModel = AdditionViewModel()
    
    // MARK: Computed Properties
    var body: some View {
        VStack (alignment: .trailing) {
            
            Text("Addition")
                .font(.system(.largeTitle , design: .default, weight: .semibold))
            
            Spacer()
            
            // First number
            TextField("Addend", text: $viewModel.providedFirstAddend)
                .font(.system(size: 58))
                .multilineTextAlignment(.trailing)
            
            // Second number
            HStack {
                
                Text("\(Image(systemName: "plus"))")
                    .font(.system(size: 50))
                
                Spacer()
                
                TextField("Addend", text: $viewModel.providedSecondAddend)
                    .font(.system(size: 58))
                    .multilineTextAlignment(.trailing)
            }
            
            Rectangle()
                .frame(height: 5)
            
            // Unwrap the optional to show answer
            // or show appropriate error message
            if let add = viewModel.addition {
                Text("\(add.sum.formatted())")
                    .font(.system(size: 70))
                
                Spacer()
                
                Spacer()
            } else {
                // Show a message indicating that we are awaiting reasonable input
                ContentUnavailableView(
                    "Unable to evaluate sum",
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
    AdditionView()
}
