//
//  AdditionView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-21.
//

import SwiftUI

struct AdditionView: View {
    
    // MARK: Stored Properties
    @State var firstAddend: Int = 1
    @State var secondAddend: Int = 1
    
    // MARK: Computed Properties
    var sum: Int {
        return firstAddend + secondAddend
    }
    
    var body: some View {
        VStack (alignment: .trailing) {
            Spacer()
            
            // First number
            HStack {
                Spacer()
                Text("\(firstAddend)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $firstAddend, label: {
                Text("First Addend")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })
            
            // Second number
            HStack {
                Text("\(Image(systemName: "plus"))")
                    .font(.system(size: 50))
                Spacer()
                Text("\(secondAddend)")
                    .font(.system(size: 75))
            }
            
            Stepper(value: $secondAddend, label: {
                Text("Second Addend")
                    .font(.system(size: 22.0, weight: .light, design: .default))
            })
            
            // Answer
            Rectangle()
                .frame(height: 5)
            
            Text("\(sum)")
                .font(.system(size: 75))
            
            Spacer()
        }
        .padding(25)
    }
}

#Preview {
    AdditionView()
}
