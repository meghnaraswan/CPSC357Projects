//
//  SecondView.swift
//  ObservableDemo
//
//  Created by iMan on 3/29/22.
//

//import SwiftUI
//
//struct SecondView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

//import SwiftUI
//struct SecondView: View {
//    @StateObject var timerData: TimerData
//    var body: some View {
//        VStack {
//            Text("Second View")
//                .font(.largeTitle)
//            Text("Timer Count = \(timerData.timeCount)")
//                .font(.headline)
//        }
//        .padding()
//    }
//}
//
//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView(timerData: TimerData())
//    }
//}

import SwiftUI
struct SecondView: View {
    @EnvironmentObject var timerData: TimerData
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
    .padding()
    }
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView().environmentObject(TimerData())
    }
}

//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView()
//    }
//}
