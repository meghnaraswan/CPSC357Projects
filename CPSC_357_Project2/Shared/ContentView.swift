//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 3/28/22.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
//}

struct ContentView: View {
    var body: some View {
        VStack{
            Image("WonderGirls")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 400, alignment: .center)
            VStack(alignment: .leading) {
                Text("Rewind")
                    .font(.title)
                    .multilineTextAlignment(.center)
                HStack {
                    Text("Wonder Girls")
                        .font(.subheadline)
                    Spacer()
                    Text("REBOOT")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("Lyrics")
                    .font(.title2)
                Text("\n 미처 몰랐던 니 모습\n 그렇게 날 두고 떠나\n 마주잡은 두 손이 차갑게\n 식을 때쯤 우린 얼어버려\n \n 우 우 우\n 우 우 우 예\n 눈 감아 나 지금\n 널 감아 나 다시\n 우 우 우\n 우 우 우 예\n 그렇게 넌 사라져가")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
