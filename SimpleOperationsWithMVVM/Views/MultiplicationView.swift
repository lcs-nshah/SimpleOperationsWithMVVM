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
        NavigationStack {
            VStack (alignment: .trailing) {
            
                // MARK: INPUT
                // First number
                TextField("Multiplicand", text: $viewModel.providedMultiplicand)
                    .font(.system(size: 58))
                    .multilineTextAlignment(.trailing)
                
                // Operation and second number
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
                
                // MARK: OUTPUT
                // Unwrap the optional to show answer or show appropriate error message
                if let multiply = viewModel.multiplication {
                    VStack {
                        HStack {
                            
                            // Save button
                            Button {
                                viewModel.saveResult()
                            } label: {
                                Text("Save")
                            }
                            .buttonStyle(.borderedProminent)
                            .padding(.vertical)
                            
                            // Clear button
                            Button (role: .destructive) {
                                viewModel.clearResult()
                            } label: {
                                Text("Clear")
                            }
                            .buttonStyle(.borderedProminent)
                            .padding(.vertical)
                            
                            Spacer()
                            
                            // Answer
                            Text("\(multiply.product.formatted())")
                                .font(.system(size: 70))
                                .lineLimit(1)
                                .minimumScaleFactor(0.1)
                        }
                        
                        // History
                        HStack {
                            Text("History")
                                .font(.system(size: 20, weight: .bold))
                            
                            Spacer()
                        }
                        
                        // List results
                        List(viewModel.resultHistory) { priorResult in
                            MultiplicationItemView(multiplication: priorResult)
                        }
                        .listStyle(.plain)
                    }
                    .frame(height: 350)
                } else {
                    // Show a message indicating that we are awaiting reasonable input
                    ContentUnavailableView(
                        "Unable to evaluate product",
                        systemImage: "gear.badge.questionmark",
                        description: Text(viewModel.recoverySuggestion)
                            .font(.system(size: 25))
                    )
                    .frame(height: 350)
                }
                
                Spacer()
            }
            .padding(25)
            .navigationTitle("Multiplication")
        }
    }
}

#Preview {
    MultiplicationView()
}
