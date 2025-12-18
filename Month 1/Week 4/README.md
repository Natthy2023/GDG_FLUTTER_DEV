# Hello Flutter App

My first Flutter application following the assignment instructions.

## Widget Tree Hierarchy

hello_flutter/ → lib/ → main.dart → MyApp (StatelessWidget) → MaterialApp → HomePage (StatelessWidget) → Scaffold → [AppBar → Text('Welcome to Flutter')] + [Center → Text('This is my first Flutter app', style: TextStyle(fontSize: 24.0, color: Colors.deepPurple, fontWeight: FontWeight.bold))] ← main() function

## App Features
- Title: "Welcome to Flutter"
- Center-aligned description text
- Custom text styling (size: 24.0, color: deepPurple, weight: bold)

## Screenshot

![App Screenshot](app_screenshot.png)

## How to Run
1. Ensure Flutter is installed
2. Run `flutter pub get`
3. Run `flutter run`