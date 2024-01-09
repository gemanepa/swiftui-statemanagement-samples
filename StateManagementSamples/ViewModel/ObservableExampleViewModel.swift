//
//  ObservableExampleViewModel.swift
//  StateManagementSamples
//
//  Created by Gabriel Ernesto Martinez Canepa on 09/01/2024.
//

import Observation

// ViewModel for ObservableExampleView
// Documentation: https://developer.apple.com/documentation/swiftui/migrating-from-the-observable-object-protocol-to-the-observable-macro
// Documentation: https://useyourloaf.com/blog/migrating-to-observable/
// Documentation: https://developer.apple.com/documentation/observation/observable()
@Observable class ObservableExampleViewModel {
    var userData: ObservableUserData

    init(userData: ObservableUserData) {
        self.userData = userData
    }

    func incrementCounter() {
        userData.counter += 1
    }
}
