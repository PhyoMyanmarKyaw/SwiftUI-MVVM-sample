# MVVM Posts App

A simple iOS app demonstrating MVVM architecture with SwiftUI and async/await.

## Features

- Fetch and display posts from JSONPlaceholder API
- View post details with author information
- Pull-to-refresh support
- Loading states and error handling

## Architecture

### MVVM Pattern
- **Model**: `Post` and `User` data structures
- **View**: SwiftUI views (`ContentView`, `PostDetailView`)
- **ViewModel**: `PostsViewModel` and `PostDetailViewModel` with `@Published` properties

### Key Components

**NetworkService**
- Protocol-based networking layer
- Async/await for API calls
- Error handling with custom error types

**ViewModels**
- `@MainActor` for UI thread safety
- `@Published` properties for reactive updates
- Dependency injection for testability

**Views**
- SwiftUI with proper state management
- Navigation using NavigationView/NavigationLink
- Loading and error states

## API

Uses [JSONPlaceholder](https://jsonplaceholder.typicode.com/) for sample data:
- `/posts` - List of posts
- `/users/{id}` - User details

## Getting Started

1. Clone the repository
2. Open in Xcode
3. Run the project

No additional setup or API keys required.