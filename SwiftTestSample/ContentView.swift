//
//  ContentView.swift
//  SwiftTestSample
//
//  Created by 竹田隆太郎 on 2024/06/07.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    @State var number1 = 0
    @State var number2 = 0
    
    var body: some View {
        NavigationSplitView {
            VStack{
            }
            .toolbar {
                ToolbarItem {
                }
            }
        } detail: {
            Text("Select an item")
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
