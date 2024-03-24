# Flutter Counter App with Design Patterns

This project showcases various design patterns for building user interfaces in Flutter, using a simple counter app as a demonstration. Each folder implements the counter app with a specific design pattern:

- **mvc** (Model-View-Controller)
- **mvp** (Model-View-Presenter)
- **mvvm** (Model-View-ViewModel)
- **mvi** (Model-View-Intent)

## Design Pattern Descriptions

### MVC (Model-View-Controller):

- Separates the application into three distinct layers:
    - Model (data)
    - View (UI)
    - Controller (business logic)
- The Controller acts as the central communication hub, handling user interactions and updates from the View and updating the Model accordingly.

### MVP (Model-View-Presenter):

- Similar to MVC, but replaces the Controller with a Presenter.
- The Presenter manages communication between the View and Model, encapsulating business logic and presentation details.

### MVVM (Model-View-ViewModel):

- Utilizes a ViewModel as a mediator between the View and Model.
- The ViewModel exposes data and behaviors to the View, simplifying data binding and UI updates.

### MVI (Model-View-Intent):

- Employs a unidirectional data flow.
- The View dispatches Intents (user actions) to the Bloc (Business Logic Component).
- The Bloc processes Intents, updates the state, and emits changes to the View through a BlocBuilder.

## Exploring the Code

Each folder contains the implementation of the counter app using the respective design pattern. You can explore the code to gain a deeper understanding of their structures and interactions.

## Getting Started:

- Clone this repository.
- Ensure you have Flutter installed (https://docs.flutter.dev/get-started/install).
- Run `flutter pub get` in the project directory to install dependencies.
- Navigate to each folder (mvc, mvp, mvvm, mvi) and run `flutter run` to launch the corresponding counter app implementation.

## Contributing

We welcome contributions to this project! Feel free to add improvements or explore additional design patterns. Please follow standard pull request practices.

## License

This project is licensed under the MIT License (see LICENSE file).
