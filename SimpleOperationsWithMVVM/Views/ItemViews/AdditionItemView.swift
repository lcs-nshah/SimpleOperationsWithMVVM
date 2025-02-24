//
//  AdditionItemView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-23.
//

import SwiftUI

struct AdditionItemView: View {
    
    // MARK: Stored properties
    let addition: Addition
    
    // MARK: Computed properties
    var body: some View {
        
        HStack {
                
                Text("\(addition.firstAddend.formatted())")
                    .font(.largeTitle)
                
                Text("\(Image(systemName: "plus"))")
                
                Text("\(addition.secondAddend.formatted())")
                    .font(.largeTitle)
                
                Text("=")
                    .font(.largeTitle)
                
                Text("\(addition.sum.formatted())")
                    .font(.largeTitle)
        }
        .lineLimit(1)
        .minimumScaleFactor(0.5)
    }
}

#Preview {
    AdditionItemView(addition: Addition(firstAddend: 3, secondAddend: 2))
        .padding()
}


