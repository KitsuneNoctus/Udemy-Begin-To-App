//
//  JournalEntry.swift
//  DayJournal
//
//  Created by Henry Calderon on 7/8/24.
//

import Foundation

class JournalEntry: Identifiable {
    var title: String = ""
    var text: String = ""
    var rating: Int = 1
    var date: Date = Date()
    
    init(title: String, text: String, rating: Int, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}

let journalEntries: [JournalEntry] = [
    JournalEntry(title: "A Great Gold Day", text: "I found some gold in the stream", rating: 5, date: Date()),
    JournalEntry(title: "Headache", text: "Not feeling very well", rating: 2, date: Date()),
    JournalEntry(title: "Made an App", text: "Made a journaling App", rating: 4, date: Date())
]
