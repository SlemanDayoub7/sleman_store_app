# sleman_store_app

A complete e-commerce implementation using FakeStoreAPI as the backend, demonstrating real app architecture with mock data.


## Features

- Product catalog with categories
- User authentication flow
- Persistent cart using local storage
- Product search and filtering
- User profile management
- Secure storage for sensitive data
- API caching with offline support
- Error handling for API failures
- Shimmer loading
- Responsive UI
- Multi-language support
- Clean architecture implementation

## Tech Stack

- **State Management**: `flutter_bloc` + `freezed`
- **Networking**: `dio` + `retrofit`
- **Localization**: `easy_localization`
- **DI**: `get_it`
- **Caching**: `cached_network_image`+ `shared_prefrence`
- **Security**: `flutter_secure_storage`
- **UI**: `flutter_svg` + `shimmer`
- **Adaptive Layouts**: `flutter_screenutil`
- **Code Generation**: `build_runner`

## Mock API Setup

This app uses [FakeStoreAPI](https://fakestoreapi.com). No setup required - just use these endpoints:

| Resource      | Endpoint                   |
|---------------|----------------------------|
| Products      | `GET /products`            |
| Categories    | `GET /products/categories` |
| Users         | `GET /users`               |
| Carts         | `POST /carts`              |
| Auth          | `POST /auth/login`         |

## Project Structure
lib/
├── core/
│   ├── networking/     # API clients & interceptors
│   ├── helpers/        # Extensions & Utilities
│   ├── di/             # Dependency injection
│   ├── theming/        # App themes
│   └── localization/   # Translation files
│   └── constants/      # App constants
│   └── routing/        # Routes & Navigation logic
│   └── widgets/        # Reusable widgets

├── features/
│   ├── home/
│   │   ├── data/
│   │   │   ├── models/    # Feature-specific models
│   │   │   └── repositories/
│   │   ├── logic/
│   │   │   ├── cubit/
│   │   │   └── state/
│   │   └── ui/         # Screens & widgets
│   │   │   ├── widgets/
│   │   │   └── home_screen
│   ├── auth/           # Authentication flow
│   ├── product detail/        # Product detail features
│   ├── cart/           # Cart management
│   └── profile/        # User profile
main.dart # App entry point

