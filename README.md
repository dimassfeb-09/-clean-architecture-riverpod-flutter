# Clean Architecture with Riverpod and GetIt

This project is a Flutter application built using Clean Architecture principles, Riverpod for state management, and GetIt for dependency injection. It demonstrates a scalable and maintainable approach to building Flutter applications.

## Architecture Overview

The project follows Clean Architecture with three main layers:

### 1. Domain Layer

The core of the application, containing business logic and high-level rules. It is completely independent of other layers.

- Entities: Business models.
- Repositories (Interface): Contracts for data operations.
- Usecases: Specific business actions.

### 2. Data Layer

Handles data retrieval and persistence.

- Models: Data Transfer Objects (DTOs) with serialization logic.
- Data Sources: Remote (API) and Local (Database) data handling.
- Repositories (Implementation): Concrete implementations of Domain repositories.

### 3. Presentation Layer

Handles the UI and user interactions.

- Pages: UI screens.
- Providers: State management using Riverpod (AsyncNotifier, FutureProvider).
- Widgets: Reusable UI components.

## Tech Stack

- Flutter: UI Framework.
- Riverpod: Reactive State Management.
- GetIt: Dependency Injection.
- Dio: HTTP Client for networking.
- GoRouter: Declarative Routing.
- FPdart: Functional Programming utilities.

## Folder Structure

```text
lib/
├── core/               # Shared utilities, constants, network, and errors
├── di/                 # Dependency injection setup
├── features/           # Domain-driven feature modules
│   ├── auth/           # Authentication feature
│   │   ├── data/       # Models, repositories, datasources
│   │   ├── domain/     # Entities, usecases, repository interfaces
│   │   └── presentation/# Pages, providers, widgets
│   └── product/        # Product feature
├── routers/            # App navigation and routing
└── main.dart           # App entry point
```

## Getting Started

### Prerequisites

- Flutter SDK (latest version recommended)
- Dart SDK

### Installation

1. Clone the repository:

   ```bash
   git clone git@github.com:dimassfeb-09/-clean-architecture-riverpod-flutter.git
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the application:
   ```bash
   flutter run
   ```

## API Documentation

This project uses [DummyJSON](https://dummyjson.com/) as the backend service for authentication and product data.

## Features

- Login: Authentication using AsyncNotifier and GoRouter.
- Product List: Fetching and displaying products with FutureProvider.
- Product Detail: Dynamic routing and data fetching for specific products.
