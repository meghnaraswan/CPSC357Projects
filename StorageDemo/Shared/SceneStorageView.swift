//
//  SceneStorageView.swift
//  StorageDemo
//
//  Created by iMan on 4/9/22.
//

import SwiftUI

//struct SceneStorageView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

struct SceneStorageView: View {
//    @State private var editorText: String = ""
    @SceneStorage ("mytext") private var editorText = ""
    var body: some View {
        TextEditor(text: $editorText)
        //The TextEditor view is passed a binding to a state property into //which any typed text will be stored
        // (note that we aren’t yet using scene storage).
            .padding(30)
            .font(.largeTitle)
    }
}

struct SceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageView()
    }
}
