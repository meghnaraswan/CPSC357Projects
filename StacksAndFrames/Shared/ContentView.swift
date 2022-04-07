//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 3/15/22.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
////        HStack{
////            Image(systemName: "goforward.10")
////            Image(systemName: "goforward.15")
////            Image(systemName: "goforward.30")
////        }
//        VStack (alignment:.center, spacing:15) {
//            Text("Financial Results").font(.title)
//            HStack (alignment:.top) {
//                Text("Q1 Sales").font(.headline)
//                Spacer ()
//                VStack (alignment:.leading) {
//                    Group {
//                        Text("January")
//                        Text("February")
//                        Text("March")
//                        Text("April")
//                        Text("May")
//                        Text("June")
//                        Text("July")
//                        Text("August")
//                        Text("September")
//                    }
//                    Group {
//                        Text("October")
//                        Text("November")
//                        Text("December")
//                    }
//
//                }
//                Spacer ()
//                VStack (alignment:.trailing) {
//                    Text("$1000")
//                    Text("$200")
//                    Text("$3000")
//                }
//                .padding(5)
//            }
//            .padding(5)
//        }
//        .padding(5)
//    }
//}

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "airplane")
            Text("Flight times:").border(Color.blue).frame(width:100,height:100,alignment:.center)
            Text("London").layoutPriority(1)
        }
        .font(.largeTitle)
        .lineLimit(1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
