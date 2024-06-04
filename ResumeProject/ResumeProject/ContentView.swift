//
//  ContentView.swift
//  ResumeProject
//
//  Created by Henry Calderon on 6/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image("guy1")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 50, maxWidth: .infinity)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 0) {
                    Text("John Doe")
                        .font(.title)
                    Text("iOS Developer")
                        .font(.subheadline)
                    Text("work.email@gmail.com")
                    Text("+1 123-456-7890")
                }
            }
            
            Spacer()
            
            Text("Work Experience")
                .font(.title2)
            Divider()
                .background(.black)
                .padding(.bottom)
            VStack(alignment: .leading) {
                HStack {
                    Text("Disney Entertainment Media")
                        .bold()
                    Spacer()
                    Text("2021-2023")
                }
                Text("Associate Software Engineer")
            }
            .padding(.bottom)
            VStack(alignment: .leading) {
                HStack {
                    Text("theCoderSchool")
                        .bold()
                    Spacer()
                    Text("2020-2022")
                }
                Text("Coach")
            }
            .padding(.bottom)
            Spacer()
            
            Text("Education")
                .font(.title2)
            Divider()
                .background(.black)
                .padding(.bottom)
            VStack(alignment: .leading) {
                HStack {
                    Text("Dominican University of California")
                        .bold()
                    Spacer()
                    Text("2019-2021")
                }
                HStack {
                    Text("Bachelors Degree")
                    Spacer()
                    Text("Computer Science")
                }
            }
            .padding(.bottom)
            Spacer()
            
            Text("Skills")
                .font(.title2)
            Divider()
                .background(.black)
                .padding(.bottom)
            VStack(alignment: .leading) {
                HStack {
                    Text("Swift Development")
                    Text("Repository Managment")
                }
                HStack {
                    Text("Python Development")
                }
            }
            .padding(.bottom)
            Spacer()
            
            
            
            Text("Interests")
                .font(.title2)
            Divider()
                .background(.black)
                .padding(.bottom)
            HStack {
                VStack {
                    Text("🏹")
                        .font(.system(size: 50))
                    Text("Archery")
                        .bold()
                }
                Spacer()
                VStack {
                    Text("📚")
                        .font(.system(size: 50))
                    Text("Reading")
                        .bold()
                }
                Spacer()
                VStack {
                    Text("🦊")
                        .font(.system(size: 50))
                    Text("Foxes")
                        .bold()
                }
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
