# Clean Product Flutter App

A clean-architecture Flutter app showing a product list and details, with local or API data.

## 🚀 How to Run the App

1. **Install Flutter 3.x or newer** ([Flutter install guide](https://docs.flutter.dev/get-started/install))
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the app:
   ```sh
   flutter run
   ```

## 🔄 How to Switch Between Local Data and API

- Open `lib/screens/home_screen.dart`.
- Change the value of `useApi` (true = API, false = local):
  ```dart
  final bool useApi = false; // set to true for API
  ```
- If using API, ensure you have internet and the `http` package is in `pubspec.yaml`.

## 🛠️ Flutter Version Required

- **Flutter 3.x or newer** (with Dart null-safety)

## 📁 File Structure

```
lib/
├── main.dart
├── models/
│   └── product.dart
├── screens/
│   ├── home_screen.dart
│   └── product_details_screen.dart
├── widgets/
│   └── product_card.dart
├── services/
│   └── product_service.dart
```

---

- Code is modular, clean, and easy to maintain.
- Add more features (favorites, cart, dark mode) as needed!
# fake-app
