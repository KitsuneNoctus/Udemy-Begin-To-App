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
                NavigationLink(destination: Text(String(listedJournalEntry.text))) {
                    Text(listedJournalEntry.title)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal Entries")
        }
        
    }
}

#Preview {
    JournalEntriesList()
}
