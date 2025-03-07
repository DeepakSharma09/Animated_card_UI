# Digital Debit Card App

## Overview
This Flutter application provides a sleek digital debit card interface where users can toggle between frozen and unfrozen states, view card details, and interact with a custom bottom navigation bar. The app uses the `faker` package to generate random card details and employs `google_fonts` and `lucide_icons` for enhanced UI elements.

## Features
- **Digital Debit Card**: View generated card details including number, expiry date, and CVV.
- **Freeze/Unfreeze Functionality**: Tap to change the card state.
- **Custom Bottom Navigation Bar**: Stylish navigation bar with animated buttons.
- **Material Design UI**: Smooth and modern user interface using `google_fonts` and custom animations.

## Screenshots
![PHOTO-2025-03-07-12-41-28](https://github.com/user-attachments/assets/649d145d-3819-4d4e-8f46-fea66962fec0)


## Installation
1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/digital-debit-card.git
   cd digital-debit-card
   ```

2. **Install dependencies**:
   ```sh
   flutter pub get
   ```

3. **Run the app**:
   ```sh
   flutter run
   ```

## Dependencies
Make sure to add the following dependencies in `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^6.1.0
  lucide_icons: ^0.258.0
  faker: ^2.1.0
```

## File Structure
```
lib/
│── main.dart          # Main application file
│── assets/            # Image assets for card UI
└── pubspec.yaml       # Flutter project configuration
```

## Troubleshooting
- **Gradle Issues**: If you face Gradle-related errors, run:
  ```sh
  flutter clean
  flutter pub get
  ```
- **Assets Not Loading**: Ensure you have properly defined assets in `pubspec.yaml`:
  ```yaml
  flutter:
    assets:
      - assets/img_2.png
      - assets/yolo.png
      - assets/yes.png
      - assets/rupay.png
      - assets/img_4.png
  ```

## Contributing
1. Fork the repository.
2. Create a new branch: `git checkout -b feature-branch`
3. Commit your changes: `git commit -m "Add new feature"`
4. Push the branch: `git push origin feature-branch`
5. Open a pull request.

## License
MIT License - See [LICENSE](LICENSE) for details.

