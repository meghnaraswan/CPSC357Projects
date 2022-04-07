//
//  AddNewSong.swift
//  CPSC357Project2Part2
//
//  Created by iMan on 4/6/22.
//

import SwiftUI

struct AddNewSong: View {
    @StateObject var songStore : SongStore
    @State private var isLiked = false
    @State private var name: String = ""
    @State private var artistName: String = ""
    @State private var albumName: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Song Details")) {
                Image(systemName: "headphones")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                DataInput(title: "Song", userInput: $name)
                DataInput(title: "Artist Name", userInput: $artistName)
                DataInput(title: "Album Name", userInput: $albumName)
                Toggle(isOn: $isLiked) {
                    Text("Liked").font(.headline)
                }
                .padding()
            }
            Button(action: addNewSong) {
                Text("Add Song")
            }
        }
    }
    func addNewSong() {
        let newSong = Song(id: UUID().uuidString, name: name, artistName: artistName, albumName: albumName, isLiked: isLiked, imageName: "kpop_lightsticks" )
        songStore.songs.append(newSong)
    }
}

struct DataInput: View {
    var title: String
    @Binding var userInput: String
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}
    
struct AddNewSong_Previews: PreviewProvider {
    static var previews: some View {
        AddNewSong(songStore: SongStore(songs: songData))
            .preferredColorScheme(.dark)
    }
}
