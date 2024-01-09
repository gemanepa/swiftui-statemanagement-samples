//
//  ObservableObjectExampleView.swift
//  StateManagementSamples
//
//  Created by Gabriel Ernesto Martinez Canepa on 07/01/2024.
//

import SwiftUI

// Second View using ObservableObject + @ObservedObject and MVVM architecture with the Model and ViewModel on the respective directories
struct ObservedObjectExampleView: View {
    // @ObservedObject variable to manage user data
    @ObservedObject var viewModel: ObservableObjectExampleViewModel

    var body: some View {
        VStack {
            Text("View using ObservableObject + @ObservedObject")
                .font(.title)
                .padding(.bottom, 5)

            Text("The @ObservedObject property wrapper (legacy since iOS 17.0) is used to declare a property that references an external object, typically a class conforming to the ObservableObject protocol (legacy since iOS 17.0. Replaced by @Observable macro). An object marked with @ObservedObject allows a view to be notified when the object's internal state changes, triggering the view to update accordingly (even if it's not using the internal state that changed!!!!")
                .padding(.bottom, 35.0)

            Text("Examples").font(.title2).padding(.bottom, 35.0)

            // Display the username from the observed object
            Text("Username: \(viewModel.userData.username)")

            // TextField to update the username
            TextField("Enter username", text: $viewModel.userData.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 35.0)

            // Display the counter from the observed object
            Text("Counter: \(viewModel.userData.counter)")

            // Button to increment the counter in the observed object
            Button("Increment Counter") {
                viewModel.userData.counter += 1
            }
            Spacer()
        }
    }
}
