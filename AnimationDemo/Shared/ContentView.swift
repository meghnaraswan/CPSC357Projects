//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 4/14/22.
//

import SwiftUI

//struct ContentView: View {
//    @State private var rotation: Double = 0
//    @State private var scale: CGFloat = 1
//    var body: some View {
//        Button(action: {
////            self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
//            withAnimation(.linear (duration: 2)) {
//                self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
//            }
//            self.scale = (self.scale < 2.8 ? self.scale + 0.3 : 1)
//
//        })
//        {
//        Text("Click to Animate")
////            .scaleEffect(scale)
//            .rotationEffect(.degrees(rotation))
////            .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0))
////            .animation(Animation.linear(duration: 1).repeatCount(3))
//
////            .animation(Animation.linear(duration: 1)
////            .repeatCount(3, autoreverses: false))
//
////            .animation(Animation.linear(duration: 1)
////            .repeatForever(autoreverses: true))
//
//            .scaleEffect(scale)
////            .animation(.linear(duration: 1))
////            .animation(.easeOut)
////            .animation(.easeIn)
////            .animation(.easeInOut)
//
//        }
//    }
//}

//struct ContentView: View {
//    @State private var visibility = false
//    var body: some View {
//        VStack {
//            Toggle(isOn: $visibility.animation(.linear(duration: 5))) {
//                Text("Toggle Text Views")
//            }
//            .padding()
//
//            if visibility {
//                Text("Hello World")
//                    .font(.largeTitle)
//            }
//            if !visibility {
//                Text("Goodbye World")
//                    .font(.largeTitle)
//            }
//        }
//    }
//}

//struct ContentView: View {
//    @State private var isSpinning: Bool = true
//    var body: some View {
//        ZStack {
//            Circle()
//                .stroke(lineWidth: 2)
//                .foregroundColor(Color.blue)
//                .frame(width: 360, height: 360)
//            Image(systemName: "forward.fill")
//                .font(.largeTitle)
//                .offset(y: -180)
//                .rotationEffect(.degrees(isSpinning ? 0 : 360))
//                .animation(Animation.linear(duration: 5)
//                            .repeatForever(autoreverses: false))
//        } .onAppear() {
//            self.isSpinning.toggle()
//        }
//    }
//}

//struct ContentView : View {
//    @State private var isButtonVisible: Bool = true
//    var body: some View {
//        VStack {
//            Toggle(isOn:$isButtonVisible.animation( .linear(duration: 2))) {
//                Text("Show/Hide Button")
//            }.padding()
//            if isButtonVisible {
//                Button(action: {}) {
//                    Text("Example Button")
//                } .font(.largeTitle)
////                .transition(.slide)
////                .transition(.move(edge: .top))
////                .transition(.scale)
////                .transition(.opacity)
//                .transition(AnyTransition.opacity.combined(with: .move(edge: .top)))
//
//            } // end if
//        } // end vstack
//    } // end var body
//}

struct ContentView : View {
    @State private var rotation: Double = 0
    @State private var scale: CGFloat = 1
    @State private var isSpinning: Bool = true
    @State private var isButtonVisible: Bool = true
    @State private var visibility = false
    var body: some View {
        
        ZStack{
            Button(action: {
    //            self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
                withAnimation(.linear (duration: 2)) {
                    self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
                }
                self.scale = (self.scale < 2.8 ? self.scale + 0.3 : 1)
            })
            {
            Text("Click to Animate")
    //            .scaleEffect(scale)
                .rotationEffect(.degrees(rotation))
    //            .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0))
    //            .animation(Animation.linear(duration: 1).repeatCount(3))

    //            .animation(Animation.linear(duration: 1)
    //            .repeatCount(3, autoreverses: false))

    //            .animation(Animation.linear(duration: 1)
    //            .repeatForever(autoreverses: true))

                .scaleEffect(scale)
    //            .animation(.linear(duration: 1))
//                .animation(.easeOut)
//                .animation(.easeIn)
                .animation(.easeInOut)

            }
        }
        
        VStack {
            Toggle(isOn: $visibility) {
                Text("Toggle Text Views")
            }
            .padding()

            if visibility {
                Text("Hello World")
                    .font(.largeTitle)
            }
            if !visibility {
                Text("Goodbye World")
                    .font(.largeTitle)
            }
        }
        
        VStack {
            Toggle(isOn: $visibility.animation(.linear(duration: 1))) {
                Text("Toggle Text Views")
            }
            .padding()

            if visibility {
                Text("Hello World")
                    .font(.largeTitle)
            }
            if !visibility {
                Text("Goodbye World")
                    .font(.largeTitle)
            }
        }
        
        ZStack {
            Circle()
                .stroke(lineWidth: 2)
                .foregroundColor(Color.blue)
                .frame(width: 360, height: 360)
            Image(systemName: "forward.fill")
                .font(.largeTitle)
                .offset(y: -180)
                .rotationEffect(.degrees(isSpinning ? 0 : 360))
                .animation(Animation.linear(duration: 5)
                            .repeatForever(autoreverses: false))
        } .onAppear() {
            self.isSpinning.toggle()
        }
        
        VStack {
            Toggle(isOn:$isButtonVisible.animation( .linear(duration: 2))) {
                Text("Show/Hide Button")
            }.padding()
            if isButtonVisible {
                Button(action: {}) {
                    Text("Example Button")
                } .font(.largeTitle)
                .transition(.slide)
//                .transition(.move(edge: .top))
//                .transition(.scale)
//                .transition(.opacity)
//                .transition(AnyTransition.opacity.combined(with: .move(edge: .top)))
            } // end if
        } // end vstack
    } // end var body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
