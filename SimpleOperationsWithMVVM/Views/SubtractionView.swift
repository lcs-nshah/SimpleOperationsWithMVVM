//
//  SubtractionView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-21.
//

import SwiftUI

struct SubtractionView: View {
    
    // MARK: Stored Properties
    @State var viewModel = SubtractionViewModel()
    
    // MARK: Computed Properties
    var body: some View {
        NavigationStack {
            VStack (alignment: .trailing) {
                
                Spacer()
                
                // First number
                TextField("Minuend", text: $viewModel.providedMinuend)
                    .font(.system(size: 58))
                    .multilineTextAlignment(.trailing)
                
                // Second number
                HStack {
                    
                    Text("\(Image(systemName: "minus"))")
                        .font(.system(size: 50))
                    
                    Spacer()
                    
                    TextField("Subtrahend", text: $viewModel.providedSubtrahend)
                        .font(.system(size: 58))
                        .multilineTextAlignment(.trailing)
                }
                
                Rectangle()
                    .frame(height: 5)
                
                // Unwrap the optional to show answer
                // or show appropriate error message
                if let subtract = viewModel.subtraction {
                    Text("\(subtract.difference.formatted())")
                        .font(.system(size: 70))
                    
                    Spacer()
                    
                    Spacer()
                } else {
                    // Show a message indicating that we are awaiting reasonable input
                    ContentUnavailableView(
                        "Unable to evaluate difference",
                        systemImage: "gear.badge.questionmark",
                        description: Text(viewModel.recoverySuggestion)
                            .font(.system(size: 25))
                    )
                    .frame(height: 274)
                }
                
                Spacer()
            }
            .padding(19)
            .navigationTitle("Subtraction")
        }
    }
}

#Preview {
    SubtractionView()
}
