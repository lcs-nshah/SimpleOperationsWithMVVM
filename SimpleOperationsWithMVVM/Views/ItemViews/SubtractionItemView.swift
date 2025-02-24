//
//  SubtractionItemView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-23.
//

import SwiftUI

struct SubtractionItemView: View {
    
    // MARK: Stored properties
    let subtraction: Subtraction
    
    // MARK: Computed properties
    var body: some View {
        
        HStack {
            
            Text("\(subtraction.minuend.formatted())")
                .font(.largeTitle)
            
            Text("\(Image(systemName: "minus"))")
            
            Text("\(subtraction.subtrahend.formatted())")
                .font(.largeTitle)
            
            Text("=")
                .font(.largeTitle)
            
            Text("\(subtraction.difference.formatted())")
                .font(.largeTitle)
        }
        .lineLimit(1)
        .minimumScaleFactor(0.5)
    }
}

#Preview {
    SubtractionItemView(subtraction: Subtraction(minuend: 3, subtrahend: 2))
        .padding()
}


