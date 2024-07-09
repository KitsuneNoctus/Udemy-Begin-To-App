//
//  ContentView.swift
//  CourseList
//
//  Created by Henry Calderon on 7/9/24.
//

import SwiftUI

// https://zappycode.com/api/courses?format=json

struct ContentView: View {
    
//    var courses: [Course] = []
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .onAppear { getCourses() }
    }
    
    func getCourses() {
        if let apiURL = URL(string: "https://zappycode.com/api/courses?format=json") {
            var request = URLRequest(url: apiURL)
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let courseData = data {
                    print(String(data: courseData, encoding: .utf8) ?? "")
                }
            }
            .resume()
        }
    }
}

#Preview {
    ContentView()
}
