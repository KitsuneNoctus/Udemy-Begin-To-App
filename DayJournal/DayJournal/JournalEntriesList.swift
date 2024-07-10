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
    
    @Query(sort: \JournalEntry.date, order: .reverse) private var journalEntries: [JournalEntry]
    
    @State var showCreateView = false
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List(searchResults) { listedJournalEntry in
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
        .searchable(text: $searchText)
    }
    
    var searchResults: [JournalEntry] {
        if searchText.isEmpty {
            return journalEntries
        } else {
            return journalEntries.filter { $0.title.lowercased().contains(searchText.lowercased()) || $0.text.lowercased().contains(searchText.lowercased())}
        }
    }
    
}

#Preview {
    JournalEntriesList()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
