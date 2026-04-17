# 📁 Session 01: Flutter Fundamentals - SwiftPay App

In this session, we built the **SwiftPay Dashboard**. The focus was on moving from Dart OOP to building a clean, modular Flutter UI and understanding how to manage simple app state.

## 🏗 Project Structure
We followed a modular structure to keep the code organized and reusable:
- **`Screens/`**: Contains the main pages (e.g., `dash_board_page.dart`).
- **`widgets/`**: Contains reusable UI components like `VisaCard`, `ActionButton`, and `TransactionsListView`.
- **`main.dart`**: The entry point of the application.

---

## 🚀 Key Learning Points
1. **Refactoring UI**: Breaking down a complex UI into smaller, manageable widgets (Encapsulation).
2. **Layout Mastery**: Using `Column` and `Row` with `MainAxisAlignment` to align elements perfectly.
3. **State Management**: Using `StatefulWidget` and `setState` to toggle balance visibility.
4. **List Handling**: Using `Expanded` with `ListView` to create scrollable sections without overflow.

---

## 💻 Code Insights

### Modular Widget Architecture
Instead of one giant file, we separated the UI into components. For example, the `DashboardPageBody` acts as a controller that assembles our custom widgets:
```dart
Column(
  children: [
    VisaCard(), // Custom widget for the credit card
    ActionButtonRow(), // Custom widget for quick actions
    Expanded(child: TransactionsListView()), // Scrollable list
  ],
)
