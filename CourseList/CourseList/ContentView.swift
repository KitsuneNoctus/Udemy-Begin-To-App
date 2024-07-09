//
//  ContentView.swift
//  CourseList
//
//  Created by Henry Calderon on 7/9/24.
//

import SwiftUI

// https://zappycode.com/api/courses?format=json

struct ContentView: View {
    
    @State var courses: [Course] = []
    
    var body: some View {
        List(courses) { course in
            Text(course.title)
        }
        .onAppear { getCourses() }
    }
    
    func getCourses() {
        if let apiURL = URL(string: "https://zappycode.com/api/courses?format=json") {
            var request = URLRequest(url: apiURL)
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let courseData = data {
//                    print(String(data: courseData, encoding: .utf8) ?? "")
                    if let coursesFromAPI = try? JSONDecoder().decode([Course].self, from: courseData) {
                        courses = coursesFromAPI
                        print(courses)
                    }
                }
            }
            .resume()
        }
    }
}

#Preview {
    ContentView()
}
