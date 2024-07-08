//
//  ContentView.swift
//  DayJournal
//
//  Created by Henry Calderon on 7/8/24.
//

import SwiftUI

struct JournalEntriesList: View {
    
    var body: some View {
        NavigationStack {
            List(journalEntries) { listedJournalEntry in
                NavigationLink(destination: JournalEntryDetailView(detailJournalEntry: listedJournalEntry)) {
                    JournalEntryRowView(rowJournalEntry: listedJournalEntry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal Entries")
        }
        
    }
}

#Preview {
    JournalEntriesList()
}
