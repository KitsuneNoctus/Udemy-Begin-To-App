//
//  ContentView.swift
//  CapFun
//
//  Created by Henry Calderon on 7/1/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = "Hello There"
    @State var capMode = 1
    
    var body: some View {
        VStack {
            Spacer()
            if capMode == 1 {
                Text(userText.uppercased())
                    .font(.largeTitle)
            }
            if capMode == 2 {
                Text(userText.capitalized)
                    .font(.largeTitle)
            }
            if capMode == 3 {
                Text(userText.lowercased())
                    .font(.largeTitle)
            }
            Spacer()
            
            
            
            
            TextField("Enter Text Here: ", text: $userText)
                .padding()
            
            Button {
                let pasteboard = UIPasteboard.general
                
                if capMode == 1 {
                    pasteboard.string = userText.uppercased()
                }
                if capMode == 2 {
                    pasteboard.string = userText.capitalized
                }
                if capMode == 3 {
                    pasteboard.string = userText.lowercased()
                }
            }label: {
                CustomButtonView(title: "Copy", color: .orange)
            }
            
            HStack {
                Button {
                    print("ALL CAPS")
                    capMode = 1
                } label: {
                    CustomButtonView(title: "ALL CAPS", color: .blue)
                }
                Button {
                    print("First Letter")
                    capMode = 2
                }
                label: {
                    CustomButtonView(title: "Fist Letter", color: .green)
                }
                Button {
                    print("lowercase")
                    capMode = 3
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
