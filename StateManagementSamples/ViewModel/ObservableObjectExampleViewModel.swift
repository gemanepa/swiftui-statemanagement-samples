//
//  ObservableObjectExampleViewModel.swift
//  StateManagementSamples
//
//  Created by Gabriel Ernesto Martinez Canepa on 07/01/2024.
//

import Foundation

// ViewModel for ObservedObjectExampleView
// Documentation: https://developer.apple.com/documentation/swiftui/observedobject
// Legacy since iOS 17.0
class ObservableObjectExampleViewModel: ObservableObject {
    @Published var userData: ObservableObjectUserData

    init(userData: ObservableObjectUserData) {
        self.userData = userData
    }

    func incrementCounter() {
        userData.counter += 1
    }
}
