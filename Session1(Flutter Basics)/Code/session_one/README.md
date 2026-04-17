# 📁 Session 01: Flutter Fundamentals - SwiftPay App

In this session, we built the **SwiftPay Dashboard**. The focus was on moving from Dart OOP to building a clean, modular Flutter UI and understanding how to manage simple app state.

---

## 🏗 Project Structure
We followed a modular, clean architecture to keep the code organized and reusable:
- **`lib/Screens/`**: Contains the main page structures (e.g., `dash_board_page.dart`).
- **`lib/widgets/`**: Contains reusable UI components like `VisaCard.dart`, `ActionButton.dart`, and `TransactionsListView.dart`.
- **`main.dart`**: The entry point of the application.

---

## 🚀 Key Learning Points
1. **Refactoring UI**: Breaking down a complex UI into smaller, manageable widgets (Encapsulation).
2. **Layout Mastery**: Using `Column` and `Row` with `MainAxisAlignment` to align elements perfectly.
3. **State Management**: Using `StatefulWidget` and `setState` to toggle balance visibility.
4. **List Handling**: Using `Expanded` with `ListView` to create scrollable sections without overflow.

---

## 📚 Study Materials & Resources

To master this session, explore these essential resources:

### 💡 Core Theory
* **[Flutter Internals: Under the Hood](https://medium.com/@rk5680179/flutter-internals-how-flutter-works-under-the-hood-0818439c296c)**: 
  * **Why?** To understand how Flutter renders UI. It explains the "Three Trees" (Widget, Element, and RenderObject) which is crucial for writing high-performance code.
* **[Official Flutter Documentation](https://docs.flutter.dev/)**: 
  * **Why?** This is your "Source of Truth." Use it to look up widget properties and explore specialized layout behaviors.

### 🎨 Design & Icons
* **[Google Material Icons](https://fonts.google.com/icons)**: 
  * **Why?** A visual library to find the exact names of icons. We used these to make our `ActionButton` and `VisaCard` look modern.

---

## ⚔️ Flutter vs. React Native: Under the Hood
Understanding the architectural difference helps you appreciate why we chose Flutter for **ConnectX**:

* **[How React Native Works](https://medium.com/@venky90103/how-react-native-works-under-the-hood-a-deep-dive-3444295559f3)**: React Native uses a **Bridge** to communicate between JavaScript and Native modules. This "translation" can sometimes lead to performance bottlenecks.
* **Flutter's Advantage**: Flutter skips the bridge! It uses its own rendering engine to draw directly on the screen's canvas, providing smoother animations and 100% UI consistency.

---

## 💻 Code Insights

### Modular Widget Architecture
We separated the UI into components. The `DashboardPageBody` acts as a controller that assembles our custom widgets:

```dart
Column(
  children: [
    VisaCard(), // Custom widget for the credit card
    ActionButtonRow(), // Custom widget for quick actions
    Expanded(child: TransactionsListView()), // Scrollable list
  ],
)
