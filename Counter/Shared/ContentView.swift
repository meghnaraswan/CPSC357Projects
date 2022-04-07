//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 3/15/22.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    var body: some View {
        HStack{
            ZStack{
                Circle().fill(Color.yellow)
                Button("Increment"){
                    self.count += 1
                }
            }
            .frame(width: 100.0, height:100.0)
            VStack(alignment: .leading, spacing:4){
                Text("Count: \(count)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                Text("Meghna Raswan, 2022")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
