# State Management Exploration App

Are you looking to get started with one of the most popular state managements in Flutter? Don't know how to create a basic project setup? Or has your project become too confusing and you don't know how to resolve this? I suggest you take a look at this project. It was created as a set of templates that can be useful for the above questions, and just as a cheat sheet. So, feel free to get acquainted with it. I'll be very grateful for your comments and wishes.

Pokemon RESTful API: https://pokeapi.co/


# Scheme

This is a representation of how it works technically.

![](assets/state_managements_scheme.png)

# Technology Stack

- [x] Flutter
- [x] Provider
- [x] Riverpod
- [x] MobX
- [x] Redux
- [x] Bloc
- [x] Http Client
- [x] Hive 
- [x] Dependency Injection
- [x] Code Generation
- [x] More in code 


# Motivation

The project provides the minimum required functionality needed to implement one of the five most popular state managements in your project.

The folder structure is based on a clean architecture recommended for developing and separating the business logic, user interface, and services needed for any Flutter project.

Instead of wasting time setting up a development structure on every new project, understand how the structure and components interact, then copy and paste into your project. This will help reduce common practices and code structure and allow us to quickly focus on the main part of the application. It may also be helpful to recall the basic principles of state management that you have used in the past or bring something new to your current project. Avoid re-writing the same code from scratch.

The goal of optimal code reuse was also pursued by moving the common code into some general module and using it by other modules.


# Project Goals

The main goal is to define a reference architecture that can be used as the foundation or just an example for Flutter app:

- Create a system that can share common user interface and business logic code and be independent of another implementations
- To reducing developer time in familiarization with new State Management system and re-writing common code and project structure from scratch
- To have a common folder and packages structure that can be further extended should it required
- Clearing define the layer system approach and folders that should they include

The 3 main layers:

- Data - contains implementation of services and repositories to interact between the app and 3rd party services such as APIs
- Domain - adding methods to the service and repository interface
- Presentation - changing your ViewModel and UI to reflect changes


# How Does It Works

![Screenshot_1692782889](https://github.com/Anonymous747/state_managements_exploration/assets/47688014/50a574df-182c-4601-a854-f1fa0760e020)
![Screenshot_1692782912](https://github.com/Anonymous747/state_managements_exploration/assets/47688014/79efc2c9-d90b-4112-9ac1-d979a9606e15)
![Screenshot_1692782920](https://github.com/Anonymous747/state_managements_exploration/assets/47688014/d9a34608-521c-496d-a671-cac3b15419aa)
![Screenshot_1692782925](https://github.com/Anonymous747/state_managements_exploration/assets/47688014/7b03d63b-c8f8-4673-8d1a-7b69b87f4803)


# **setState() and StatefulWidget** (Vanilla Style): 

For simple applications or small components, you can use the built-in `setState()` method with a `StatefulWidget`. This approach allows you to manage the state within the `State` class and trigger UI updates by calling `setState()` when the state changes. However, this approach can become difficult to manage for larger applications or when the state becomes more complex.

# **InheritedWidget and InheritedModel**:

Flutter provides the `InheritedWidget` and `InheritedModel` classes for sharing data down the widget tree. These classes allow you to define a data container widget that holds the shared state and provide it to descendant widgets. Descendant widgets can access the shared state by using the `BuildContext` and `inheritFromWidgetOfExactType()` method. This approach is useful for sharing application-wide or theme-related data.

# **Provider and Riverpod**:

Provider and Riverpod are state management libraries that offer a simple and scalable way to manage state in Flutter applications. They rely on the concept of "providers" that hold and expose state to the UI. Providers can be hierarchical and can be accessed by descendant widgets using `Provider.of` or `Consumer` widgets. These libraries provide features like dependency injection, state listening, and lazy loading of dependencies.

# **MobX**:

MobX is a state management library that allows you to create observable objects. It automatically tracks and updates the UI components that depend on the observed state. MobX uses the concept of "observables," "actions," and "reactions" to manage and update the state. Libraries like `mobx` and `flutter_mobx` can be used for integrating MobX with Flutter.

# **Redux**:

Redux is a predictable state container pattern widely used in web and mobile applications. It separates the application state from the UI and provides a unidirectional data flow. Libraries like `redux` and `flutter_redux` can be used to implement Redux in Flutter applications.

# **BLoC (Business Logic Component) pattern**:

BLoC is an architecture pattern that separates the business logic from the UI layer. It involves creating "BLoC" classes that handle the state management and provide streams of data to the UI. The UI components (widgets) listen to these streams and update themselves accordingly. Libraries like `flutter_bloc` and `rxdart` can help implement the BLoC pattern.

#Conclusion

Choosing the right state management approach in Flutter based on the size of your project can be approached as follows:

- **Small Projects**: For small projects with a limited number of screens and relatively simple state management requirements, using Flutter's built-in `setState` method or the `InheritedWidget` approach can be sufficient. These approaches are lightweight and straightforward, making them easier to implement and understand for smaller-scale applications.
- **Medium-Sized Projects**: When your project grows in size and complexity, you may benefit from using state management libraries like `Provider` or `Riverpod`. These libraries offer more advanced features for managing state and can help you separate concerns and decouple components. They provide a balance between simplicity and functionality, making them suitable for medium-sized projects.
- **Large Projects**: For large projects with complex state management needs, it's often recommended to use more robust architectures like `BLoC` or `Redux`. These patterns enforce a unidirectional data flow and provide a centralized store for managing the application state. They are particularly beneficial when multiple screens or components need to interact with shared state or when you require advanced state manipulation and side-effect management capabilities.

# Was inspired by experience, articles and course: 

- https://habr.com/ru/articles/747062/
- https://markonovakovic.medium.com/clean-architecture-is-not-domain-data-presentation-e368d7ff8579
- https://www.youtube.com/watch?v=v0of23TxIKc&list=PLQkwcJG4YTCTimTCpEL5FZgaWdIZQuB7m
