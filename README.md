# 📘 WEEK 3 – README.md

## 🚀 Flutter Development Intern Task – Week 3

### 📱 Task Management App

---

## 📌 Overview

This project is a simple Task Management application built using Flutter.

It allows users to:

* Add tasks
* Delete tasks
* Mark tasks as completed
* Persist data using SharedPreferences

The application demonstrates state management and local data persistence.

---

## 🎯 Features

* ➕ Add new tasks
* ✅ Mark tasks as complete (Checkbox)
* ❌ Delete tasks using swipe (Dismissible)
* 💾 Persistent storage using SharedPreferences
* 🔄 Data remains after app restart
* 🎨 Clean and responsive UI
* 📋 Custom AppBar with title

---

## 🛠 Technologies Used

* Flutter
* Dart
* SharedPreferences (local storage)

---

## 📂 Project Structure

```id="w3structure"
lib/
 ├── main.dart
 └── home_screen.dart
```

---

## 💾 Data Persistence Logic

Tasks are stored locally using SharedPreferences.

Each task is stored as a formatted string:

```id="w3format"
Task Title|true
Task Title|false
```

On app startup:

* Data is loaded in `initState()`
* Stored strings are split and converted back into task + completion state

---

## ▶ How to Run the Project

1. Clone the repository:

```bash id="w3clone"
git clone <your-repo-link>
```

2. Navigate to project folder:

```bash id="w3cd"
cd project-name
```

3. Install dependencies:

```bash id="w3pubget"
flutter pub get
```

4. Run the app:

```bash id="w3run"
flutter run
```

---

## 🧠 Learning Outcomes

* Understanding StatefulWidget
* Managing UI using setState
* Working with Lists and dynamic UI
* Using SharedPreferences for persistent storage
* Understanding Flutter lifecycle (initState)
* Debugging and testing

---

## 📹 Demo

A short demo video is included showcasing:

* Adding tasks
* Deleting tasks
* Marking tasks complete
* App restart with saved data

---

## 👨‍💻 Author

**Syed Hasnat Ali**
Flutter Development Intern

---
