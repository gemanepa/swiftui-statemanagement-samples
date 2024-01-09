//
//  ObservableUserData.swift
//  StateManagementSamples
//
//  Created by Gabriel Ernesto Martinez Canepa on 09/01/2024.
//

import Foundation
import Observation

// Model representing user data for Observable example
@Observable class ObservableUserData {
    var username: String = ""
    var counter: Int = 0
}
