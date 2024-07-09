//
//  ContentView.swift
//  CourseList
//
//  Created by Henry Calderon on 7/9/24.
//

import SwiftUI

struct CourseListView: View {
    
    @State var courses: [Course] = []
    
    var body: some View {
        if courses.count == 0 {
            VStack{
                ProgressView()
                    .padding()
                Text("Loading Info")
                    .foregroundStyle(.purple)
            }
            .onAppear { getCourses() }
        }
        else {
            ScrollView{
                VStack {
                    ForEach(courses) { course in
                        AsyncImage(url: URL(string: course.image)) { response in
                            switch response {
                            case .success(let image):
                                image
                                    .resizable()
                                    .scaledToFill()
                            case .failure(let error):
                                Text("Error")
                            default:
                                Text("It didn't work")
                            }
                        }
                    }
                }
            }
        }
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
    CourseListView()
}
