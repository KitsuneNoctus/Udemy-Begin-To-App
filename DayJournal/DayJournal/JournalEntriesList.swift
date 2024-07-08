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
                NavigationLink(destination: JournalEntryDetailView(detailJournalEntry: listedJournalEntry)) {
                    JournalEntryRowView(rowJournalEntry: listedJournalEntry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal Entries")
            .toolbar {
//                Button(action: addItem) {
//                    Label("Add Item", systemImage: "plus")
//                }
//                Button {
//                    let newJournalEntry = JournalEntry(title: "Made a Journal Entry", text: "Used SwiftData to make and save a Journal Entry", rating: 4, date: Date())
//                    modelContext.insert(newJournalEntry)
//                } label: {
//                    Label("Add Item", systemImage: "plus")
//                }
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
    
    private func addItem() {
        withAnimation {
            // Create new Object
            let newJournalEntry = JournalEntry(title: "Made a Journal Entry", text: "Used SwiftData to make and save a Journal Entry", rating: 4, date: Date())
            // Saving into Swift Data
            modelContext.insert(newJournalEntry)
        }
    }
    
}

#Preview {
    JournalEntriesList()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
