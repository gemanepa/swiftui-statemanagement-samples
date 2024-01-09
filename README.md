
# State Management Samples

This SwiftUI project provides examples of state management on iOS SwiftUI in a MVVM (Model-View-ViewModel) architecture. The three main views, `StateExampleView`, `ObservableExampleView`, and `ObservableObjectExampleView`, demonstrate three different approaches to managing and updating the state within a SwiftUI app.

## Useful Documentation

  - https://developer.apple.com/documentation/swiftui/managing-user-interface-state
   
  - https://developer.apple.com/documentation/swiftui/managing-model-data-in-your-app
   
  - https://developer.apple.com/documentation/swiftui/migrating-from-the-observable-object-protocol-to-the-observable-macro
   
  - https://developer.apple.com/documentation/swiftui/stateobject
   
  - https://developer.apple.com/documentation/combine/observableobject
  
  - https://developer.apple.com/documentation/swiftui/observedobject
   
  - https://developer.apple.com/documentation/observation/observable()

  - https://developer.apple.com/documentation/swiftui/bindable/
  

## Views

### StateExampleView

This view showcases the use of the `@State` property wrapper and introduces a ViewModel (`StateExampleViewModel`) to manage local state within a view. It includes examples of updating a username and a counter using `TextField` and `Button` components.

#### Features

-   `@State` for managing local state variables.
-   Introduces ViewModel for presentation logic.
-   Two-way data binding with `$` prefix.
-   Demonstrates updating username and counter.

### ObservableExampleView [Available since iOS 17.0]

This view utilizes the `@Observable` macro + the `@Bindable` property wrapper, using a ViewModel (`ObservableExampleViewModel`) to manage state stored in an external object. It showcases the synchronization of state updates between views.

#### Features

-   `@Observable` + `@Bindable` for managing external object's state.
-   Introduces ViewModel for presentation logic.
-   Two-way data binding with `$` prefix.
-   Synchronizing username and counter updates between views.

### ObservableObjectExampleView [Legacy since iOS 17.0]

This view utilizes the `ObservableObject` object + the `@ObservedObject` property wrapper (both legacy since iOS 17.0. Replaced by @Observable + @Bindable), using a ViewModel (`ObservableObjectExampleViewModel`) to manage state stored in an external object. It showcases the synchronization of state updates between views.

#### Features

-   `ObservableObject` + `@ObservedObject` for managing external object's state.
-   Introduces ViewModel for presentation logic.
-   Two-way data binding with `$` prefix.
-   Synchronizing username and counter updates between views.

## Main ContentView

The `ContentView` serves as the main entry point with navigation links to both `StateExampleView` and `ObservedObjectExampleView`. It uses a shared instance of the `UserData` class to demonstrate state sharing between views.

#### Features

-   Navigation between `StateExampleView` and `ObservedObjectExampleView`.
-   Shared instance of `UserData` for state sharing.

## Usage of `$` Prefix

In SwiftUI, the use of the `$` prefix with `@State` and `@Binding` variables is related to the way these property wrappers are used in the context of the view hierarchy. The decision to use or omit the `$` depends on whether you are reading the value or binding to it for two-way data flow.

### Examples

-   Without `$`: Reading the value.
    
    swiftCopy code
    
    `Text("Counter: \(viewModel.counter)")` 
    
-   With `$`: Binding for two-way data flow.
    
    swiftCopy code
    
    `TextField("Enter username", text: $username)` 
    

## Data Flow in SwiftUI Views

In SwiftUI, when passing data between views, such as using `NavigationLink` or other mechanisms, it's essential to provide the necessary data to the destination view. SwiftUI encourages a clear separation of concerns and flexibility in data management.

### Instantiating View Model and Data in ContentView

When working with the MVVM architecture, such as in the ObservedObjectExampleView, instantiating the view model (`ObservedObjectExampleViewModel`) and shared data (`userData`) in ContentView serves several purposes:

#### ObservedObjectExampleViewModel Instantiation:

- **Responsibility:** The ViewModel manages presentation logic, handles user input, and coordinates data between the model and the view.
- **Separation of Concerns:** By creating the ViewModel in ContentView, separation of concerns is maintained. The parent view handles the creation and management of the ViewModel, while the child view focuses on presenting data and responding to user interactions.

#### userData Instantiation:

- **Shared Data:** `userData` is an instance of `UserData`, an observable object holding shared data that can be observed and updated by multiple views.
- **Ownership and Sharing:** ContentView owns `userData`, and by passing it to ObservedObjectExampleView, data is shared between views, allowing them to stay synchronized if changes occur.

#### Why Not Automatically Instantiated:

- **Explicitness and Control:** SwiftUI promotes explicit instantiation and data passing to enhance clarity and control over data flow. This approach provides a clear understanding of how data moves through the app and allows for efficient resource management.

### @ObservedObject Declaration in ObservedObjectExampleView

While passing the view model from ContentView, declaring `@ObservedObject var viewModel: ObservedObjectExampleViewModel` within ObservedObjectExampleView is necessary to establish a connection between the view and the observed object. This enables SwiftUI to manage the view's updates based on changes in the view model. The explicit declaration aligns with SwiftUI's declarative paradigm, promoting readability and maintainability.

### @ObservedObject as var or let

When using `@ObservedObject`, it's common to declare it with `var` instead of `let`. This is because `var` allows the view to update and observe changes in the observed object over its lifecycle. SwiftUI manages updates to the view based on changes in the observed object. Declaring it as a `let` would mean that the reference to the observed object is immutable, and it cannot be reassigned to a new instance, which is generally not the desired behavior in SwiftUI.



Feel free to explore and modify the code to understand different aspects of state management in SwiftUI.
