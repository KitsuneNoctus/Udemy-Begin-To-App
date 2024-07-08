//
//  ContentView.swift
//  DayJournal
//
//  Created by Henry Calderon on 7/8/24.
//

import SwiftUI
import SwiftData

struct JournalEntriesList: View {
    
    @Environment(\.modelContext) private var modelContext

    @Query private var journalEntries: [JournalEntry]
    
    @State var showCreateView = false
    
    var body: some View {
        NavigationStack {
            List(journalEntries) { listedJournalEntry in
                NavigationLink(destination: EditJournalEntryView(editingJournalEntry: listedJournalEntry)) {
                    JournalEntryRowView(rowJournalEntry: listedJournalEntry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal Entries")
            .toolbar {
                Button {
                    showCreateView = true
                } label: {
                    Label("Add Item", systemImage: "plus")
                }
            }
            .sheet(isPresented: $showCreateView) {
                CreateJournalEntryView()
            }
        }
        
    }
    
}

#Preview {
    JournalEntriesList()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
