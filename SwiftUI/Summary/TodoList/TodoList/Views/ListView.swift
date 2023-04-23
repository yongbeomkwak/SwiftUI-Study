//
//  ListView.swift
//  TodoList
//
//  Created by yongbeomkwak on 2023/04/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        
        ItemModel(title: "First Title", isCompleted: false),
        ItemModel(title: "Second Title", isCompleted: false),
        ItemModel(title: "Third Title", isCompleted: false)
        
    ]
    
    var body: some View {
        List {
            ForEach(items,id: \.self.id){ item in
                ListRowView(item:item)
                
            }
        }
        .listStyle(PlainListStyle()) // 밑줄 구분자 있는 스타일
        .navigationTitle("Todo List ✏️")
        .toolbar {
            ToolbarItem(placement:.navigationBarLeading) {
                EditButton()
            }
            
            ToolbarItem(placement:.navigationBarTrailing) {
                NavigationLink("Add", destination: {
                    AddView()
                })
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

