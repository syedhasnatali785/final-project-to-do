🚀 Flutter Development Intern Task – Week 3
📱 Task Management App
📌 Overview

This project is a simple Task Management application built using Flutter.

It allows users to:

Add tasks

Delete tasks

Mark tasks as completed

Persist data using SharedPreferences

The application demonstrates state management and local data persistence.

🎯 Features

➕ Add new tasks

✅ Mark tasks as complete (Checkbox)

❌ Delete tasks using swipe (Dismissible)

💾 Persistent storage using SharedPreferences

🔄 Data remains after app restart

🎨 Clean and responsive UI

📋 Custom AppBar with title

🛠 Technologies Used

Flutter

Dart

SharedPreferences (local storage)

📂 Project Structure
lib/
 ├── main.dart
 └── home_screen.dart
💾 Data Persistence Logic

Tasks are stored locally using SharedPreferences.

Each task is stored as a formatted string:

Task Title|true
Task Title|false

On app startup:

Data is loaded in initState()

Stored strings are split and converted back into task + completion state

▶ How to Run the Project

Clone the repository:

git clone <your-repo-link>

Navigate to project folder:

cd project-name

Install dependencies:

flutter pub get

Run the app:

flutter run
🧠 Learning Outcomes

Understanding StatefulWidget

Managing UI using setState

Working with Lists and dynamic UI

Using SharedPreferences for persistent storage

Understanding Flutter lifecycle (initState)

Debugging and testing

📹 Demo

A short demo video is included showcasing:

Adding tasks

Deleting tasks

Marking tasks complete

App restart with saved data

👨‍💻 Author

Syed Hasnat Ali
Flutter Development Intern

## 🌟 Future Improvements
- Add task editing feature
