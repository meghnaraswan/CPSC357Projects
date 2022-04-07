//
//  SongDetail.swift
//  CPSC357Project2Part2
//
//  Created by iMan on 4/6/22.
//

import SwiftUI

import SwiftUI
struct SongDetail: View {
    let selectedSong: Song
    var body: some View {
        Form {
            Section(header: Text("Song Details")) {
                Image(selectedSong.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                HStack{
                    Text("Title")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Text(selectedSong.name)
                        .font(.title3)
                }
                HStack{
                    Text("Artist")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Text(selectedSong.artistName)
                        .font(.title3)
                }
                HStack{
                    Text("Album")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Text(selectedSong.albumName)
                        .font(.title3)
                }
                HStack {
                    Text("Liked").font(.title3).fontWeight(.bold)
                    Spacer()
                    Image(systemName: selectedSong.isLiked ?
                    "checkmark.circle" : "xmark.circle" )
                }
            }
        }
    }
}
struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail(selectedSong: songData[0])
            .preferredColorScheme(.dark)
    }
}
