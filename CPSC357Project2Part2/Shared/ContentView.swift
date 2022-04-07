//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 4/5/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var songStore : SongStore = SongStore(songs: songData)
    var body: some View {
        NavigationView {
            List {
                ForEach (songStore.songs) { song in
                    ListCell(song: song)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationBarTitle(Text("K-POP"))
            .navigationBarItems(leading: NavigationLink(destination: AddNewSong(songStore: self.songStore)) {
                Text("Add")
                    .foregroundColor(.blue)
            }, trailing: EditButton())
        }
    }
    func deleteItems(at offsets: IndexSet) {
        songStore.songs.remove(atOffsets: offsets)
    }
    
    func moveItems(from source: IndexSet, to destination: Int) {
        songStore.songs.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListCell: View {
    var song: Song
    var body: some View {
        NavigationLink(destination: SongDetail(selectedSong: song)) {
            HStack {
                Image(song.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(song.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
