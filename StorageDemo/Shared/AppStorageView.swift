//
//  AppStorageView.swift
//  StorageDemo
//
//  Created by iMan on 4/9/22.
//

import SwiftUI

struct AppStorageView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
    @AppStorage("mytext") var editorText: String = "Sample Text"
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
