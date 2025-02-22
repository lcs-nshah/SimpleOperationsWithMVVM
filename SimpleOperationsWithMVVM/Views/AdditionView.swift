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
                Text("\(add.sum)")
                    .font(.system(size: 75))
               
                Spacer()
                Spacer()
                
            } else {
                
                // Show a message indicating that we are awaiting reasonable input
                ContentUnavailableView(
                    "Unable to evaluate power",
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
    AdditionView()
}
