//
//  ContentView.swift
//  Design-Fun2
//
//  Created by Henry Calderon on 7/1/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    
    var body: some View {
        VStack {
            Text("People: \(count)")
                .font(.largeTitle)
                .padding()
            Button("Tap Add") {
                count += 1
            }
            .padding()
            Button("Tap Remove") {
                count -= 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
