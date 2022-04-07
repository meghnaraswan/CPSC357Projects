//
//  SongStore.swift
//  CPSC357Project2Part2
//
//  Created by iMan on 4/6/22.
//

import Foundation
import SwiftUI
import Combine
class SongStore : ObservableObject {
    @Published var songs: [Song]
    init (songs: [Song] = []) {
        self.songs = songs
    }
}
