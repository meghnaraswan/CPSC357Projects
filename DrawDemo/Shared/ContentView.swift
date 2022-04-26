//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 4/12/22.
//

import SwiftUI
import CoreGraphics

struct ContentView: View {
    let colors = Gradient(colors: [Color.red, Color.yellow, Color.green, Color.blue, Color.purple])
    let colors2 = Gradient(colors: [Color.pink, Color.purple, Color.blue])
    var body: some View {
//        Rectangle()
        VStack{
            Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Spacer()
            Capsule()
                .stroke(lineWidth: 10)
                .foregroundColor(.blue)
                .frame(width: 200, height: 100)
            Spacer()
            RoundedRectangle(cornerRadius: CGFloat(10))
                .stroke(style: StrokeStyle(lineWidth: 8, dash:[CGFloat(10)]))
                .foregroundColor(.red)
                .frame(width: 200, height: 100)
            Spacer()
            Ellipse()
                .stroke(style: StrokeStyle(lineWidth: 20, dash: [CGFloat(10), CGFloat(5), CGFloat(2)], dashPhase: CGFloat(10)))
                .foregroundColor(.blue)
                .frame(width: 250, height: 150)
            Spacer()
            Ellipse()
                .fill(Color.red)
                .overlay(Ellipse()
                .stroke(Color.blue, lineWidth: 10))
                .frame(width: 250, height: 150)
        }
        
        Path { path in
            path.move(to: CGPoint(x: 10, y: 0))
            path.addLine(to: CGPoint(x: 10, y: 350))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.closeSubpath()
        }
        
        MyShape()
            .fill(RadialGradient (gradient: colors, center:.center, startRadius: CGFloat(0), endRadius: CGFloat(300)))
            .frame(width: 360, height: 350)
        
        MyShape()
            .fill(LinearGradient(gradient: colors, startPoint: .topLeading, endPoint: .bottomTrailing))
            .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 360, height: 350)
        
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
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.7)
                    .frame(width: 250, height: 250)
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
        
        ZStack {
          ForEach(0..<4) { i in
            Rectangle()
              .fill(
                LinearGradient(gradient: .init(colors: [Color.yellow, Color.pink]), startPoint: .bottomLeading, endPoint: .topTrailing)
              )
              .frame(width: 250, height: 250)
              .rotationEffect(.degrees(Double(i) * 30))
            Image(systemName: "bicycle")
                .resizable()
                .rotationEffect(.degrees(0))
                .opacity(0.7)
                .frame(width: 240, height: 160)
            }
        }
        
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
                Image(systemName: "car")
                    .resizable()
                    .opacity(0.7)
                    .frame(width: 240, height: 200)
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct MyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY), control: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

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
