//
//  StateExampleView.swift
//  StateManagementSamples
//
//  Created by Gabriel Ernesto Martinez Canepa on 07/01/2024.
//

import SwiftUI

// First View using @State. Simplicity instead of MVVM (check ObservedObject for MVVM)
struct StateExampleView: View {
    // @State variable to track the username and counter
    @State private var username: String = ""
    @State private var counter: Int = 0

    var body: some View {
        VStack {
            Text("View using @State")
                .font(.title)
                .padding(.bottom, 5)

            Text("@State is a property wrapper that is used to declare a state variable within a view. State variables are used to store and manage the data that changes over time within the view. When the value of a @State variable changes, SwiftUI automatically updates the corresponding view to reflect the new state.")
                .padding(.bottom, 35.0)

            Text("Examples").font(.title2).padding(.bottom, 35.0)

            // Display the username
            Text("Username: \(username)")

            // TextField to update the username
            TextField("Enter username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 35.0)

            // Display the counter
            Text("Counter: \(counter)")

            // Button to increment the counter
            Button("Increment Counter") {
                counter += 1
            }
            Spacer()
        }
    }
}
