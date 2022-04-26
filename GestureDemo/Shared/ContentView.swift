//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 4/21/22.
//

import SwiftUI

//struct ContentView: View {
//    @State private var magnification: CGFloat = 1.0
//    @GestureState private var offset: CGSize = .zero
//    @State private var dragEnabled: Bool = false
//    var body: some View {
//        let magnificationGesture =
//        MagnificationGesture(minimumScaleDelta: 0)
//            .onChanged({ value in
//                        self.magnification = value })
//            .onEnded { _ in
//                print("Gesture Ended")
//            } //onEnded
//        return Image(systemName: "hand.point.right.fill")
//            .resizable()
//            .font(.largeTitle)
//            .scaleEffect(magnification)
//            .gesture(magnificationGesture)
//            .frame(width: 100, height: 90)
//    }
//}

struct ContentView: View {
    @GestureState private var offset: CGSize = .zero
    @State private var dragEnabled: Bool = false
    var body: some View {
        let longPressBeforeDrag = LongPressGesture(minimumDuration: 2.0)
            .onEnded( { _ in
                self.dragEnabled = true
            })
            .sequenced(before: DragGesture())
            .updating($offset) { value, state, transaction in switch value {
                    case .first(true):
                    print("Long press in progress")
                    case .second(true, let drag):
                    state = drag?.translation ?? .zero
                    default: break
                }
            }
            .onEnded { value in
                self.dragEnabled = false
            }
        return Image(systemName: "hand.point.right.fill")
            .foregroundColor(dragEnabled ? Color.red : Color.blue)
            .font(.largeTitle)
            .offset(offset)
            .gesture(longPressBeforeDrag)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
