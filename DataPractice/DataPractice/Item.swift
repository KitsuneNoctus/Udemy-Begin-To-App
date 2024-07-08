//
//  Item.swift
//  DataPractice
//
//  Created by Henry Calderon on 7/8/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

@Model
final class ToDo {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
