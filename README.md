# 💸 Flutter Expense Tracker App

A simple yet powerful expense tracker app built with **Flutter**. This app allows you to add, view, and delete expenses with beautiful charts and category-wise analysis. It also supports **light** and **dark** themes automatically based on your device settings.

---

## ✨ Features

- Add new expenses with:
  - Title
  - Amount
  - Date picker
  - Category selection (Food, Travel, Leisure, Work)
- View expenses in:
  - **List** view for smaller screens
  - **Grid** view for larger screens
- Interactive **Chart** to analyze expenses by category
- Swipe to delete expenses with undo option via **Snackbar**
- Responsive Design:
  - Auto-switch between **Column** and **Row** layouts based on screen width
- Custom light & dark themes with **Material 3**
- Gradient backgrounds for better aesthetics
- Auto date formatting and validations

---

## 📦 Folder Structure

lib/
│
├── chart/
│ ├── chart.dart
│ └── chart_bar.dart
│
├── models/
│ └── expense.dart
│
├── widgets/
│ ├── expenses.dart
│ ├── expenses_list/
│ │ ├── expenses_list.dart
│ │ └── expense_item.dart
│ └── new_expense.dart
│
├── theme.dart
│
└── main.dart

---

## 🚀 Getting Started

1. Clone this repo:

git clone https://github.com/GoldleoM/expense_tracker_app.git

2. Navigate to project folder:
   cd expense_tracker

 3. Install dependencies:

    flutter pub get

4. Run the app:

    flutter run


