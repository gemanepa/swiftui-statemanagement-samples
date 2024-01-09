//
//  ContentView.swift
//  StateManagementSamples
//
//  Created by Gabriel Ernesto Martinez Canepa on 07/01/2024.
//
import SwiftUI

// Main ContentView with navigation between the two views
struct ContentView: View {
    @StateObject var observableObjectUserData = ObservableObjectUserData();
    @State var observableUserData = ObservableUserData();

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                NavigationLink(destination: StateExampleView()) {
                    Text("View using @State")
                        .foregroundColor(.blue)
                        .padding(.vertical)
                }

                NavigationLink(destination: ObservedObjectExampleView(viewModel: ObservableObjectExampleViewModel(userData: observableObjectUserData))) {
                    Text("View using ObservableObject+@ObservedObject")
                        .foregroundColor(.green)
                        .padding(.vertical)
                }
                
                NavigationLink(destination: ObservableExampleView(viewModel: ObservableExampleViewModel(userData: observableUserData))) {
                    Text("View using @Observable+@Bindable")
                        .foregroundColor(.brown)
                        .padding(.vertical)
                }
                
                Spacer()
            }
            .navigationBarTitle("State Management")
            .padding(.top)
        }
    }
}

#Preview {
    ContentView()
}
