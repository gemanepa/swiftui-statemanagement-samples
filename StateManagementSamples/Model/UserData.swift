//
//  UserData.swift
//  StateManagementSamples
//
//  Created by Gabriel Ernesto Martinez Canepa on 07/01/2024.
//

import Foundation

// Model representing user data
class UserData: ObservableObject {
    // The @Published property wrapper is used in conjunction with the ObservableObject protocol to automatically publish changes to properties. When applied to a property within a class or structure that conforms to ObservableObject, @Published ensures that any changes to that property trigger the object to announce the change, allowing observing views to update accordingly.
    @Published var username: String = ""
    @Published var counter: Int = 0
}
