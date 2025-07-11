# 📱 SwiftUI + MVVM Posts App

A simple iOS app demonstrating MVVM architecture with SwiftUI and async/await.

## Features
- 🗂️ Fetch and display posts from [JSONPlaceholder API](https://jsonplaceholder.typicode.com)
- 👤 View post details with author information
- 🔄 Pull-to-refresh support
- ⏳ Loading states & error handling

## Screenshots
| List View | Detail View |
|-----------|------------|
| <img width="150" alt="Image" src="https://github.com/user-attachments/assets/8524422d-b3c0-4079-bfa3-731e1ee5d3d0" /> | <img width="150" alt="Image" src="https://github.com/user-attachments/assets/be867aea-06a2-4940-b385-0feee2c425d4" />

## Tech Stack
- **SwiftUI** for declarative UI
- **Swift Concurrency** (`async/await`) for networking
- **URLSession + Codable** for API calls
- **MVVM** for separation of concerns

## API Endpoints Used
| Endpoint | Description |
|----------|-------------|
| `GET /posts` | Fetch all posts |
| `GET /users/{id}` | Fetch user details for a post |

## Installation
1. Clone the repo:
   ```bash
   git clone https://github.com/PhyoMyanmarKyaw/SwiftUI-MVVM-sample.git
   
2. Open SwiftUI_MVVM-sample.xcodeproj in Xcode.
3. Build and run (⌘ + R).

 No API keys or additional setup required.
