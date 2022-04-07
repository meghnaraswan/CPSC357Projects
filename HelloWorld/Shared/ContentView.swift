//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 3/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Button("Hello World Button") {
                    Text("Button")
                        .foregroundColor(Color.yellow)
                }
                .padding(8)
                HStack {
                    VStack {
                        Text("Hello, world!")
                            .font(.largeTitle)
                            .foregroundColor(Color.pink)
                            .bold()
                            .padding()
                        Text("Meghna Raswan\n raswan@chapman.edu\n Computer Science Major\n Game Development & VFX Minor\n 2019-2023\n Chapman University\n Fowler School of Engineering")
                            .font(.subheadline)
                            .foregroundColor(Color.purple)
                            .multilineTextAlignment(.center)
                    }
                }
            }
            Image("bear")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 110, alignment: .center)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone SE (2nd generation)")
            .previewDisplayName("iPhone SE")
            .environment(\.colorScheme, .dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
            .previewDisplayName("iPhone 11")
    }
}

//import SwiftUI
//
//struct ContentView: View {
//    @State var count: Int = 0
//    var body: some View {
//        HStack{
//            ZStack{
//                Circle().fill(Color.yellow)
//                Button("Increment"){
//                    self.count += 1
//                }
//            }
//            .frame(width: 100.0, height:100.0)
//            VStack(alignment: .leading, spacing:4){
//                Text("Count: \(count)")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.gray)
//                Text("Meghna Raswan, 2022")
//            }
//        }
//    }
//}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
