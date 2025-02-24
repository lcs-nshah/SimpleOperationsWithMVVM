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
        NavigationStack {
            VStack (alignment: .trailing) {
                
                // MARK: INPUT
                // First number
                TextField("Dividend", text: $viewModel.providedDividend)
                    .font(.system(size: 58))
                    .multilineTextAlignment(.trailing)
                
                // Operation and second number
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
                
                // MARK: OUTPUT
                // Unwrap the optional to show answer or show appropriate error message
                if let divide = viewModel.division {
                    VStack (alignment: .trailing, spacing: 0) {
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
                            Text("\(divide.quotient)")
                                .font(.system(size: 70))
                                .lineLimit(1)
                                .minimumScaleFactor(0.1)
                        }
                        
                        // History and remainder
                        HStack {
                            
                            Text("History")
                                .font(.system(size: 20, weight: .bold))
                            
                            Spacer()
                            
                            Text("R \(divide.remainder)")
                                .font(.system(size: 70))
                                .lineLimit(1)
                                .minimumScaleFactor(0.1)
                        }
                        
                        // List results
                        List(viewModel.resultHistory) { priorResult in
                            DivisionItemView(division: priorResult)
                        }
                        .listStyle(.plain)
                    }
                    .frame(height: 350)
                } else {
                    // Show a message indicating that we are awaiting reasonable input
                    ContentUnavailableView(
                        "Unable to evaluate quotient",
                        systemImage: "gear.badge.questionmark",
                        description: Text(viewModel.recoverySuggestion)
                            .font(.system(size: 25))
                    )
                    .frame(height: 350)
                }
            }
            .padding(25)
            .navigationTitle("Division")
        }
    }
}

#Preview {
    DivisionView()
}
