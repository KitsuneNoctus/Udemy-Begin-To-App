//
//  ContentView.swift
//  DataPractice
//
//  Created by Henry Calderon on 7/8/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]
    @Query private var toDos: [ToDo]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(toDos) { toDo in
                    NavigationLink {
                        Text("General Kenobi")
                    } label: {
                        Text(toDo.title)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            // Create new Object
//            let newItem = Item(timestamp: Date())
            let newToDo = ToDo(title: "Hello There")
            // Saving into Swift Data
//            modelContext.insert(newItem)
            modelContext.insert(newToDo)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(toDos[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ToDo.self, inMemory: true)
}
