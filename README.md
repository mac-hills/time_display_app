# Time Display App

Time Display App is a simple Flutter application that displays the current time in full-screen mode. The app updates the time every minute and adjusts the font size based on the device orientation. The app also hides the status bar and bottom navigation bar for an uninterrupted view of the clock.

## Features

- Displays the current time in `hh:mm` format.
- Full-screen mode with a blue background and white text.
- Automatically updates the time every minute.
- Adjusts font size based on device orientation (portrait and landscape).
- Handles app lifecycle events to ensure the time is always up-to-date.

## Screenshot

![Landscape Mode](screenshots/landscape_mode.png)

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- An editor (e.g., Android Studio, VSCode) with Flutter support.

### Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/yourusername/time_display_app.git
2. Navigate to the project directory:

   ```sh
   cd time_display_app
3. Get the dependencies:

   ```sh
   flutter pub get  
### Running the App

1. Connect your Android device or start an Android emulator.

2. Run the app:

   ```sh
   flutter run
## Code Overview

### 'main.dart'

The main.dart file sets up the basic structure of the app, including full-screen mode and the removal of the debug banner.

### 'clock_settings.dart'

The clock_settings.dart file contains the ClockSettings widget, which handles the logic for updating the time and managing app lifecycle events.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

## License
This project is licensed under the Apache License 2.0 - see the [LICENSE](https://www.apache.org/licenses/LICENSE-2.0) for details.

## Contact
For any questions or feedback, please contact [mac-hills](https://github.com/mac-hills) on GitHub.

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Documentation](https://dart.dev/guides)