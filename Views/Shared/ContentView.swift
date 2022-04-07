//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 3/28/22.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
////        Text("Hello, world!")
////            .padding()
////        Text("Goodbye, world!")
//        VStack{   //Vertical Stack
//            Text("Hello, world!")
//                .padding()
//            Text("Goodbye, world!")
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            VStack {
//                Text("Text 1")
//                Text("Text 2")
//                HStack {
//                    Text("Text 3")
//                    Text("Text 4")
//                }
//            }
//            Text("Text 5")
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        Text("Hello, ") + Text("how ") + Text("are you?")
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        var myString = "Welcome to SwiftUI"  //Statement 1
//        return VStack {   // Statement 2
//            Text("Hello, world!")
//            .padding()
//            Text("Goodbye, world!")
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            VStack {
//                Text("Text 1")
//                Text("Text 2")
//                MyHStackView ()
//            }
//        Text("Text 5")
//        }
//    }
//}
//struct MyHStackView: View {
//    var body: some View {
//        HStack {
//            Text("Text 3")
//            Text("Text 4")
//        }
//    }
//}

//struct ContentView: View {
//    let carStack = HStack {
//        Text("Car Image")
//        Image(systemName: "car.fill")
//    }
//    var body: some View {
//        VStack {
//            Text("Main Title")
//            .font(.largeTitle)
//            carStack
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        Text("Sample Text")
//            .border(Color.black)
//            .padding()
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        Text("Sample Text")
//            .padding()
//            .border(Color.black)
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        Text("Text 1")
//            .font(.largeTitle)
//            .background(Color.white)
//            .border(Color.gray, width: 0.2)
//            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
//        Text("Text 2")
//            .font(.largeTitle)
//            .background(Color.white)
//            .border(Color.gray, width: 0.2)
//            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        Text("Text 1")
//            .modifier(StandardTitle())
//        Text("Text 2")
//            .modifier(StandardTitle())
//    }
//}
//struct StandardTitle: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .background(Color.white)
//            .border(Color.gray, width: 0.2)
//            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        Button(action: buttonPressed) {
//            Text("Click Me")
//        }
//    }
//    func buttonPressed() {
//    // Code to perform action here
//    }
//}

//struct ContentView: View { //closure
//    var body: some View {
//        Button(action:{
//            //Code to perform action here
//        }) {
//    Text ("Click me")
//}

//struct ContentView: View {
//    var body: some View {
//        Label("Welcome to SwiftUI", systemImage: "person.circle.fill")
//            .font(.largeTitle)
//    }
//}

struct ContentView: View {
    var body: some View {
        Label(
            title: {
                Text("Welcome to SwiftUI")
                    .font(.largeTitle)
            },
            icon: { Circle()
                .fill(Color.blue)
                .frame(width: 25, height: 25)
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
    }
}
