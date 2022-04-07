//
//  Song.swift
//  CPSC357Project2Part2
//
//  Created by iMan on 4/5/22.
//

import Foundation
import SwiftUI

struct Song : Codable, Identifiable {
    var id: String
    var name: String
    var artistName: String
    var albumName: String
    var isLiked: Bool
    var imageName: String
}
