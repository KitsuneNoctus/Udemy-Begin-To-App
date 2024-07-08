//
//  CreateJournalEntryView.swift
//  DayJournal
//
//  Created by Henry Calderon on 7/8/24.
//

import SwiftUI

struct CreateJournalEntryView: View {
    
    @State var title: String = ""
    @State var text: String = "Today was..."
    @State var rating: Double = 3.0
    @State var date: Date = Date()
    
    var body: some View {
        Form {
            TextField("Title", text: $title)
            DatePicker("Date", selection: $date, displayedComponents: .date)
            Text(String(repeating: "⭐️", count: Int(rating)))
            Slider(value: $rating, in: 1.0...5.0,step: 1)
            TextEditor(text: $text)
        }
    }
}

#Preview {
    CreateJournalEntryView()
}
