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
        NavigationStack {
            VStack (alignment: .trailing) {
                
                Spacer()
                
                // MARK: INPUT
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
                
                // MARK: OUTPUT
                // Unwrap the optional to show answer or show appropriate error message
                if let add = viewModel.addition {
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
                            Button {
                                viewModel.clearResult()
                            } label: {
                                Text("clear")
                            }
                            .buttonStyle(.borderedProminent)
                            .padding(.vertical)
                            
                            // Answer
                            Text("\(add.sum.formatted())")
                                .font(.system(size: 70))
                                .lineLimit(1)
                                .minimumScaleFactor(0.1)
                        }
                        
                        // History
                        HStack {
                            Text("History")
                                .bold()
                            Spacer()
                        }
                        
                        // Iterate over the history of results
                        List(viewModel.resultHistory) { priorResult in
                            AdditionItemView(addition: priorResult)
                        }
                        .listStyle(.plain)
                        
                    }
                    .frame(height: 350)
                } else {
                    // Show a message indicating that we are awaiting reasonable input
                    ContentUnavailableView(
                        "Unable to evaluate sum",
                        systemImage: "gear.badge.questionmark",
                        description: Text(viewModel.recoverySuggestion)
                            .font(.system(size: 25))
                    )
                    .frame(height: 350)
                }
            }
            .padding(19)
            .navigationTitle("Addition")
        }
    }
}

#Preview {
    AdditionView()
}
