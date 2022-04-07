//
//  CarStore.swift
//  NavigationTutorial
//
//  Created by iMan on 3/31/22.
//

import Foundation
import SwiftUI
import Combine
class CarStore : ObservableObject {
    @Published var cars: [Car]
    init (cars: [Car] = []) {
        self.cars = cars
    }
}
