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

    @State var number1: Int = 0
    @State var number2: Int = 0
    @State var answer: Int = 0
    
    var body: some View {
        NavigationSplitView {
            VStack{
                Text("数値1を入力")
                TextField("数値1",value: $number1, format:.number)
                Text("数値2を入力")
                TextField("数値2",value: $number2, format:.number)
                Button(action: {
                    let nultiModel = MultiplyModel()
                    answer = nultiModel.multiply(num1: number1, num2: number2)
                }, label: {
                    Text("掛け算")
                })
                Text("結果：\(answer)")
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
