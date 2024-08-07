//
//  JournalEntry.swift
//  DayJournal
//
//  Created by Henry Calderon on 7/8/24.
//

import Foundation
import SwiftData

@Model
final class JournalEntry {
    var title: String = ""
    var text: String = ""
    var rating: Double = 1
    var date: Date = Date()
    
    init(title: String, text: String, rating: Double, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}

//let journalEntries: [JournalEntry] = [
//    JournalEntry(title: "A Great Gold Day", text: "I found some gold in the stream", rating: 5, date: Date()),
//    JournalEntry(title: "Headache", text: "Not feeling very well", rating: 2, date: Date.now.addingTimeInterval(-24 * 60 * 60)),
//    JournalEntry(title: "Made an App", text: "Made a journaling App", rating: 4, date: Date.now.addingTimeInterval(-7 * 24 * 60 * 60))
//]
