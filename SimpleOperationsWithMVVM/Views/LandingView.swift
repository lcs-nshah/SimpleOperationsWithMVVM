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
            
            SubtractionView()
                .tabItem {
                    Image(systemName: "minus")
                    Text("Subtraction")
                }
                .tag(2)
            
            MultiplicationView()
                .tabItem {
                    Image(systemName: "multiply")
                    Text("Multiplication")
                }
                .tag(3)
            
            DivisionView()
                .tabItem {
                    Image(systemName: "divide")
                    Text("Division")
                }
                .tag(4)
        }
        .tint(.orange)
    }
}

#Preview {
    LandingView()
}
