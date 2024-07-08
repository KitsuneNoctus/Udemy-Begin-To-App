//
//  EditJournalEntryView.swift
//  DayJournal
//
//  Created by Henry Calderon on 7/8/24.
//

import SwiftUI

struct EditJournalEntryView: View {
    
    @State var editingJournalEntry: JournalEntry
    @State var editMode: Bool = false
    
    var body: some View {
        if editMode {
            Form {
                TextField("Title", text: $editingJournalEntry.title)
                DatePicker("Date", selection: $editingJournalEntry.date, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(editingJournalEntry.rating)))
                Slider(value: $editingJournalEntry.rating, in: 1.0...5.0,step: 1)
                TextEditor(text: $editingJournalEntry.text)
            }
            .navigationTitle("Edit Mode")
                .toolbar {
                    Button("Done") {
                        editMode = false
                    }
                }
        }
        else {
            JournalEntryDetailView(detailJournalEntry: editingJournalEntry)
                .toolbar {
                    Button("Edit") {
                        editMode = true
                    }
                }
        }
        
    }
}

#Preview {
    NavigationStack {
        EditJournalEntryView(editingJournalEntry: JournalEntry(title: "Headache", text: "Not feeling very well", rating: 2, date: Date.now.addingTimeInterval(-24 * 60 * 60)))
    }
}
