//
//  ObservableExampleView.swift
//  StateManagementSamples
//
//  Created by Gabriel Ernesto Martinez Canepa on 09/01/2024.
//

import SwiftUI

// Third View using @Observable + @Bindable and MVVM architecture with the Model and ViewModel on the respective directories
struct ObservableExampleView: View {
    @Bindable var viewModel: ObservableExampleViewModel

    var body: some View {
        VStack {
            Text("View using @Observable + @Bindable")
                .font(.title)
                .padding(.bottom, 5)

            Text("The @Bindable property wrapper is used to create bindings to mutable properties of a data model object that conforms to the Observable protocol. An object marked with @Bindable allows a view to be notified when the object's internal state changes, triggering the view to update accordingly (but ONLY updates/rerenders if it's using the internal state that changed!!")
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
