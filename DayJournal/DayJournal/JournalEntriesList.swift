//
//  ContentView.swift
//  DayJournal
//
//  Created by Henry Calderon on 7/8/24.
//

import SwiftUI

struct JournalEntriesList: View {
    
    var dogs = ["Fido","Sara","Billy","Jane"]
    let someNums = [13,3,56,7,21]
    
    var body: some View {
//        List(dogs, id: \.self) { listedDogs in
//            Text(listedDogs)
//        }
        List(someNums, id: \.self) { listNumbers in
            Text("\(listNumbers)")
        }
    }
}

#Preview {
    JournalEntriesList()
}
