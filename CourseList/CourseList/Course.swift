//
//  Course.swift
//  CourseList
//
//  Created by Henry Calderon on 7/9/24.
//

import Foundation

struct Course: Identifiable, Codable {
    var id: Int
    var image: String
    var title: String
    var subtitle: String
}
