# CCE106 Flutter Activities

A Flutter application demonstrating various UI concepts and widget implementations for CCE106 course activities.

## Overview

This project contains three activities showcasing different Flutter fundamentals:

### Activity 1: Strawberry Pavlova Recipe Card
- **File**: `lib/activity1/pavlova.dart`
- Demonstrates: `Card`, `ListView`, `Image.asset`, custom widgets, `Row`/`Column` layouts, rating stars, and info stat rows

### Activity 2: Layout Alignment & Padding
- **Files**: `lib/activity2/columnAlignment.dart`, `lib/activity2/rowAlignment.dart`, `lib/activity2/padding.dart`
- **Column Alignment**: Demonstrates all `MainAxisAlignment` and `CrossAxisAlignment` values for `Column`
- **Row Alignment**: Demonstrates all `MainAxisAlignment` and `CrossAxisAlignment` values for `Row`
- **Padding**: Shows different `EdgeInsets` configurations (`all`, `symmetric`, `only`, `fromLTRB`)

### Activity 3: Authentication Flow
- **Files**: `lib/activity3/login.dart`, `lib/activity3/register.dart`, `lib/activity3/landing.dart`
- **Login Page**: Username/password fields with validation, navigation to landing page
- **Register Page**: Full registration form (full name, username, password, confirm password, gender, civil status, birthdate with date picker), validation, navigation to login
- **Landing Page**: Displays logged-in user info with logout functionality

## Getting Started

### Prerequisites
- Flutter SDK (^3.13.0)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- Android emulator, iOS simulator, or physical device

### Installation

```bash
cd activity
flutter pub get
```

### Running the App

```bash
# Run on connected device/emulator
flutter run

# Run on specific platform
flutter run -d android
flutter run -d ios
flutter run -d web
```

### Building

```bash
# Android APK
flutter build apk --release

# iOS (requires macOS)
flutter build ios --release

# Web
flutter build web --release
```

## Project Structure

```
lib/
├── main.dart                 # App entry point, home screen with activity list
├── activity1/
│   └── pavlova.dart         # Recipe card demo
├── activity2/
│   ├── columnAlignment.dart # Column alignment examples
│   ├── rowAlignment.dart    # Row alignment examples
│   └── padding.dart         # Padding/EdgeInsets examples
└── activity3/
    ├── login.dart           # Login form
    ├── register.dart        # Registration form
    └── landing.dart         # Post-login landing page
```

## Features

- **Material 3** design with green color scheme
- **Responsive layouts** using ListView, Column, Row
- **Navigation** with `Navigator.push` and named routes
- **Form handling** with `TextEditingController` and validation
- **Date picker** integration for birthdate selection
- **Asset images** (strawberry pavlova)
- **Custom app bars** with consistent dark theme

## Screenshots

The app includes screenshot references in the code:
- `lib/activity1/Pavlova SCREENSHOT.jpg`
- `lib/activity2/EdgeInset SCREENSHOT.jpg`

## Dependencies

- `flutter` (SDK)
- `cupertino_icons: ^1.0.8`
- `flutter_lints: ^6.0.0` (dev)
- `flutter_test` (dev)

## License

This is a school project for CCE106 coursework.