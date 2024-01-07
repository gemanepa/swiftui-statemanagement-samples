//
//  ObservedObjectExampleViewModel.swift
//  StateManagementSamples
//
//  Created by Gabriel Ernesto Martinez Canepa on 07/01/2024.
//

import Foundation

// ViewModel for ObservedObjectExampleView
class ObservedObjectExampleViewModel: ObservableObject {
    @Published var userData: UserData

    init(userData: UserData) {
        self.userData = userData
    }

    func incrementCounter() {
        userData.counter += 1
    }
}
