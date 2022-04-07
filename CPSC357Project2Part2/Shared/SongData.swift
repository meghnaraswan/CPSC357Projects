//
//  SongData.swift
//  CPSC357Project2Part2
//
//  Created by iMan on 4/5/22.
//

import Foundation

import UIKit
import SwiftUI
var songData: [Song] = loadJson("songData.json")
func loadJson<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename,
    withExtension: nil)
    else {
        fatalError("\(filename) not found.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
    fatalError("Could not load \(filename): \(error)")
    }
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse \(filename): \(error)")
    }
}
