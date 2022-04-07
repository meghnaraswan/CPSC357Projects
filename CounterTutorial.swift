//
//  CounterTutorial.swift
//  
//
//  Created by iMan on 3/15/22.
//

import SwiftUI

struct CounterTutorial: View {
    @state var count: Int = 0
    var body: some View {
        HStack{
            ZStack{
                Circle().fill(Color.yellow)
                Button("Increment"){
                    self.count += 1
                }
            }
            .frame(width: 100.0, height:100.0)
            VStack(alignment: .leading, spacing:4){
                Text("Count: \(count)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                Text("Meghna Raswan, 2022")
            }
        }
    }
}

struct CounterTutorial_Previews: PreviewProvider {
    static var previews: some View {
        CounterTutorial()
    }
}
