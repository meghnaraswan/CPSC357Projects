//
//  ContentView.swift
//  Shared
//
//  Created by Andriana  Agrusa on 3/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Text 1") + Text("Text 1.1") + Text("Text 1.2)")
                Text("Text 2")
                HStack {
                    Text("Text 3")
                    Text("Text 4")
                }
            }
            Text("Text 5")
            
            Label (
                title: {
                    Text("Welcome")
                        .font(.largeTitle)
                },
                icon: { Circle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                }
            )
        }
    }
}


//struct ContentView: View {
//    let carStack = HStack {
//        Text("Car Image")
//            .font(.headline)
//            .foregroundColor(.red)
//        Image(systemName: "car.fill")
//    }
//
//    var body: some View {
//        VStack {
//            Button(action: {
//            print("Button clicked")
//            }) {
//            Image(systemName: "square.and.arrow.down")
//            }
//            Text("Main Title")
//                .font(.largeTitle)
//                .padding()
//                .border(Color.red)
//            carStack
//            carStack
//            carStack
//        }
//    }
//}
//
//func buttonPress() {
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
