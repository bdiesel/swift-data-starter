//
//  ContentView.swift
//  SwiftDataStarter
//
//  Created by Brian Diesel on 1/10/25.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var books: [Book]
    
    @State private var showingAddScreen =  false

    var body: some View {
        NavigationStack {
            Text("Count: \(books.count)")
            List(books) { book in
                Text(book.title)
            }
            
        }
        .navigationTitle("Bookworm")
        .toolbar {
            Button("Add Book", systemImage: "plus"){
                showingAddScreen.toggle()
            }
        }
        .sheet(isPresented: $showingAddScreen) {
               AddBookView()
           }
    }

}

#Preview {
    ContentView()
}
