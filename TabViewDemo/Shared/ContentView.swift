//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 4/12/22.
//

import SwiftUI
import CoreGraphics

// any transistion extension
    // used to add transistion on airplane image to slide up rather than sideways
extension AnyTransition {
    static var slipeUp: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .move(edge: .bottom),
            removal: .move(edge: .top)
        )
    }
}

struct ContentView: View {
    
    @State private var selection = 1
    let colors = Gradient(colors: [Color.red, Color.yellow, Color.green, Color.blue, Color.purple])
    let colors2 = Gradient(colors: [Color.purple, Color.blue])
    
    @State private var rotation: Double = 0
    @State private var scale: CGFloat = 1
    
    @State private var isSpinning: Bool = true
    @State private var canView: Bool = true
    @State private var canScale: Bool = true
    
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    
    @State private var currentOpacity = 0.0
    @State private var finalOpacity = 0.7
    
    var body: some View {
        TabView(selection: $selection) {
            
            //Car Tab View
            GeometryReader { geometry in
                ZStack{
                    Path { path in
                        var width: CGFloat = min(geometry.size.width, geometry.size.height)
                        let height = width
                        let xScale: CGFloat = 0.832
                        let xOffset = (width * (1.0 - xScale)) / 2.0
                        width *= xScale
                        path.move(
                            to: CGPoint(
                                x: width * 0.95 + xOffset,
                                y: height * (0.20 + HexagonParameters.adjustment)
                            )
                        )
                        HexagonParameters.segments.forEach { segment in
                            path.addLine(
                                to: CGPoint(
                                    x: width * segment.line.x + xOffset,
                                    y: height * segment.line.y
                                )
                            )
                            path.addQuadCurve(
                                to: CGPoint(
                                    x: width * segment.curve.x + xOffset,
                                    y: height * segment.curve.y
                                ),
                                control: CGPoint(
                                    x: width * segment.control.x + xOffset,
                                    y: height * segment.control.y
                                )
                            )
                        }
                    }
                    .fill(
                      LinearGradient(gradient: .init(colors: [Color.green, Color.blue]), startPoint: UnitPoint(x: 0.5, y: 0), endPoint: UnitPoint(x: 0.5, y: 1))
                    )
                    .rotationEffect(.degrees(rotation))
                    
                    //car image spins 360 degrees on the tap gesture
                    Image(systemName: "car")
                        .resizable()
                        .opacity(0.7)
                        .frame(width: 240, height: 200)
                        .rotationEffect(.degrees(isSpinning ? 0 : 360))
                        .animation(Animation.easeInOut(duration: 5))
                }
                .onTapGesture {
                    self.isSpinning.toggle()
                }
            }
            .aspectRatio(1, contentMode: .fit)
            .tabItem {
                Image(systemName: "car")
                Text("Car")
            } .tag(1)
            
            //Bicycle Tab View
            ZStack {
                ForEach(0..<4) { i in
                    Rectangle()
                        .fill(
                            LinearGradient(gradient: .init(colors: [Color.yellow, Color.pink]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        )
                        .frame(width: 250, height: 250)
                        .rotationEffect(.degrees(Double(i) * 30))

                    //bicycle image increases and decreases opacity as the maginifcation gesture is used
                    if canView {
                        Image(systemName: "bicycle")
                            .resizable()
                            .rotationEffect(.degrees(0))
                            .opacity(0.7)
                            .opacity(finalAmount + currentAmount)
                            .frame(width: 240, height: 160)
                            .scaleEffect(CGFloat(finalAmount + currentAmount))
                            .gesture(
                                MagnificationGesture()
                                    .onChanged { amount in
                                        currentAmount = Double(amount - 1)
                                        currentOpacity = Double(amount - 1)
                                    }
                                    .onEnded { amount in
                                        finalAmount += currentAmount
                                        currentAmount = 0
                                        finalOpacity += currentOpacity
                                        currentOpacity = 0
                                    }
                            )
                    }
                }
            }
            .tabItem {
                Image(systemName: "bicycle")
                Text("Bicycle")
            } .tag(2)
            
            //Airplane Tab View
            GeometryReader { geometry in
                ZStack {
                    Path { path in
                        let size = min(geometry.size.width, geometry.size.height)
                        let nearLine = size * 0.1
                        let farLine = size * 0.9
                        let mid = size / 2
                        
                        path.move(to: .init(x: mid, y: nearLine))
                        path.addQuadCurve(
                          to: .init(x: farLine, y: mid),
                          control: .init(x: size, y: 0))
                        path.addQuadCurve(
                          to: .init(x: mid, y: farLine),
                          control: .init(x: size, y: size))
                        path.addQuadCurve(
                          to: .init(x: nearLine, y: mid),
                          control: .init(x: 0, y: size))
                        path.addQuadCurve(
                          to: .init(x: mid, y: nearLine),
                          control: .init(x: 0, y: 0))
                    }
                    .fill(RadialGradient (gradient: colors2, center:.center, startRadius: geometry.size.width * 0.05, endRadius: geometry.size.width * 0.6))
                    
                    //airplane slides up on the tap gesture
                    if canScale {
                        Image(systemName: "airplane")
                            .resizable()
                            .rotationEffect(.degrees(-90))
                            .opacity(0.7)
                            .frame(width: 250, height: 250)
                            .transition(.slipeUp)
                            .animation(.default)
                            .zIndex(1)
                    }
                }
                .onTapGesture {
                    self.canScale.toggle()
                }
            }
            .aspectRatio(1, contentMode: .fit)
            .background(RadialGradient(
                    gradient: .init(colors: [Color.purple, Color.pink]),
                    center: .center,
                    startRadius: 0,
                    endRadius: 300)
                )
            .frame(width: 360, height: 360)
            .tabItem {
                Image(systemName: "airplane")
                Text("Airplane")
            } .tag(3)
        }
    }
}

// hexagon parameters for all 6 sides
struct HexagonParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }

    static let adjustment: CGFloat = 0.085

    static let segments = [
        Segment(
            line:    CGPoint(x: 0.60, y: 0.05),
            curve:   CGPoint(x: 0.40, y: 0.05),
            control: CGPoint(x: 0.50, y: 0.00)
        ),
        Segment(
            line:    CGPoint(x: 0.05, y: 0.20 + adjustment),
            curve:   CGPoint(x: 0.00, y: 0.30 + adjustment),
            control: CGPoint(x: 0.00, y: 0.25 + adjustment)
        ),
        Segment(
            line:    CGPoint(x: 0.00, y: 0.70 - adjustment),
            curve:   CGPoint(x: 0.05, y: 0.80 - adjustment),
            control: CGPoint(x: 0.00, y: 0.75 - adjustment)
        ),
        Segment(
            line:    CGPoint(x: 0.40, y: 0.95),
            curve:   CGPoint(x: 0.60, y: 0.95),
            control: CGPoint(x: 0.50, y: 1.00)
        ),
        Segment(
            line:    CGPoint(x: 0.95, y: 0.80 - adjustment),
            curve:   CGPoint(x: 1.00, y: 0.70 - adjustment),
            control: CGPoint(x: 1.00, y: 0.75 - adjustment)
        ),
        Segment(
            line:    CGPoint(x: 1.00, y: 0.30 + adjustment),
            curve:   CGPoint(x: 0.95, y: 0.20 + adjustment),
            control: CGPoint(x: 1.00, y: 0.25 + adjustment)
        )
    ]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
