//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 4/9/22.
//

import SwiftUI

struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
    var body: some View {
        TabView {
            SceneStorageView()
            .tabItem {
                Image(systemName: "circle.fill")
                Text("SceneStorage")
            }
            AppStorageView()
            .tabItem {
                Image(systemName: "square.fill")
                Text("AppStorage")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
