//
//  ContentView.swift
//  StateManagementSamples
//
//  Created by Gabriel Ernesto Martinez Canepa on 07/01/2024.
//
import SwiftUI

// Main ContentView with navigation between the two views
struct ContentView: View {
    @StateObject var userData = UserData()

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                NavigationLink(destination: StateExampleView()) {
                    Text("Navigate to View using @State")
                        .foregroundColor(.blue)
                        .padding()
                }

                NavigationLink(destination: ObservedObjectExampleView(viewModel: ObservedObjectExampleViewModel(userData: userData))) {
                    Text("Navigate to View using @ObservedObject")
                        .foregroundColor(.green)
                        .padding()
                }
                Spacer()
            }
            .navigationBarTitle("State Management")
            .padding(.top)
        }
        .padding(.horizontal, 15.0)
    }
}

#Preview {
    ContentView()
}
