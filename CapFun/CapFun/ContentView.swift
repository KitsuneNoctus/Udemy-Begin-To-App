//
//  ContentView.swift
//  CapFun
//
//  Created by Henry Calderon on 7/1/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = "Hello There"
    
    var body: some View {
        VStack {
            Text(userText)
                .font(.largeTitle)
            TextField("Enter Text Here: ", text: $userText)
                .padding()
            HStack {
                Button {
                    print("ALL CAPS")
                } label: {
                    CustomButtonView(title: "ALL CAPS", color: .blue)
                }
                Button {
                    print("First Letter")
                }
                label: {
                    CustomButtonView(title: "Fist Letter", color: .green)
                }
                Button {
                    print("lowercase")
                }
                label: {
                    CustomButtonView(title: "lowercase", color: .red)
                }

               
                
                
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
