//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 4/20/22.
//

import SwiftUI

struct Todo: Identifiable{
    let id = UUID()
    let name: String
    let category: String
}

struct ContentView: View {
    @State private var todos = [
        Todo(name:"Write SwiftUI book",category: "work"),
        Todo(name:"Read Bible",category: "personal"),
        Todo(name:"Bring kids out to play",category: "family"),
        Todo(name:"Call wife",category: "family"),
        Todo(name:"Call mum",category: "family")
    ]
    @State private var showAddTodoView = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(todos){ (todo) in
                    NavigationLink(destination:
                        VStack{
                            Text(todo.name)
                            Image(todo.category)
                                .resizable()
                                .frame(width: 200, height: 200)
                        }
                    ){
                        HStack{
                            Image(todo.category).resizable().frame(width: 50, height: 50)
                            Text(todo.name)
                        }
                    }
                }
                .onDelete(perform: { indexSet in
                    todos.remove(atOffsets: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                    todos.move(fromOffsets: indices, toOffset: newOffset)
                })
            } .navigationBarTitle("Todo Items")
            .navigationBarItems(
                leading: Button("Add"){
                    self.showAddTodoView.toggle()
                }.sheet(isPresented: $showAddTodoView){
                    AddTodoView(showAddTodoView: self.$showAddTodoView, todos:self.$todos)
                },
                trailing: EditButton()
            )
        }
    }
}

struct AddTodoView: View {
    @Binding var showAddTodoView: Bool
    @State private var name: String = ""
    @State private var selectedCategory = 0
    var categoryTypes = ["family","personal","work"]
    @Binding var todos: [Todo]
    
    var body: some View {
        VStack{
            Text("Add Todo").font(.largeTitle)
            TextField("To Do name",text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.black).padding()
             
            Text("Select Category")
            Picker("",selection: $selectedCategory){
                ForEach(0 ..< categoryTypes.count){
                    Text(self.categoryTypes[$0])
                }
            }.pickerStyle(SegmentedPickerStyle())
        }.padding()
        Button("Done"){
            self.showAddTodoView = false
            todos.append(Todo(name: name,category: categoryTypes[selectedCategory]))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
