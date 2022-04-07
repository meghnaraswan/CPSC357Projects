//
//  Car.swift
//  NavigationTutorial
//
//  Created by iMan on 3/31/22.
//

import Foundation
import SwiftUI
struct Car : Codable, Identifiable {
    var id: String
    var name: String
    var description: String
    var isHybrid: Bool
    var imageName: String
}
