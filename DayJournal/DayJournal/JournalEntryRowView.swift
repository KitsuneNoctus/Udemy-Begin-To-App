//
//  JournalEntryRowView.swift
//  DayJournal
//
//  Created by Henry Calderon on 7/8/24.
//

import SwiftUI

struct JournalEntryRowView: View {
    
    let rowJournalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(rowJournalEntry.title)
                    .bold()
                Text("-")
                Text(rowJournalEntry.text)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 1)
            HStack {
                Text(rowJournalEntry.date, style: .date)
                    .foregroundStyle(.secondary)
                Text(String(repeating: "⭐️", count: Int(rowJournalEntry.rating)))
            }
            .font(.caption)        }
    }
}

#Preview {
    List {
        JournalEntryRowView(rowJournalEntry:
                                JournalEntry(title: "Headache",
                                             text: "Not feeling very well",
                                             rating: 2, date: Date())
        )
    }
    
}
