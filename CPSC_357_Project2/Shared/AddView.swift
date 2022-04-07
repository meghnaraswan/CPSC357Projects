//
//  AddView.swift
//  CPSC_357_Project2
//
//  Created by iMan on 3/29/22.
//

import SwiftUI

struct AddView: View {
    @State var songs: [String] = ["Baby Don't Stop","90's Love","Make A Wish (Birthday Song)","Boss","Advice","Move","Love Again","Hot Sauce","Take Off","Tail","Oh Sorry Ya","OK!","In & Out","2 Fast","Good Time","Irreplaceable","Easy","YESTODAY"]
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Songs")){
                    ForEach(songs, id: \.self){song in
                        Text(song.capitalized)
                    }
                }
            }
            .navigationTitle("KPOP")
            .navigationBarItems(leading: EditButton(), trailing: Button( "Add", action: {
                songs.append("")
            }))
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .preferredColorScheme(.dark)
    }
}
