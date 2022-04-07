//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 3/15/22.
//

import SwiftUI

struct ContentView: View {
    @ State var pokemonName = "Charmander"
    var body: some View {
        VStack {
            Text(pokemonName).frame(width:UIScreen.main.bounds.width,height:50).background(Color.blue).foregroundColor(Color.white).padding(10)
            Button(
                action: {self.swtichPokemon()},
                label: {Text("Switch")}
            )
        }
    }
    func swtichPokemon(){
        let list = ["Squirtle", "Bulbasaur", "Charmander", "Pikachu"]
        self.pokemonName = list.randomElement() ?? " "
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
