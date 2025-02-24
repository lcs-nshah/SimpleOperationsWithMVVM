//
//  LandingView.swift
//  SimpleOperationsWithMVVM
//
//  Created by Neil Shah on 2025-02-21.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView {
            
            AdditionView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Addition")
                }
                .tag(1)
                .tint(.none)
            
            SubtractionView()
                .tabItem {
                    Image(systemName: "minus")
                    Text("Subtraction")
                }
                .tag(2)
                .tint(.none)
            
            MultiplicationView()
                .tabItem {
                    Image(systemName: "multiply")
                    Text("Multiplication")
                }
                .tag(3)
                .tint(.none)
            
            DivisionView()
                .tabItem {
                    Image(systemName: "divide")
                    Text("Division")
                }
                .tag(4)
                .tint(.none)
        }
        .tint(.orange)
    }
}

#Preview {
    LandingView()
}
