# Notes App 📝

A beautiful and functional Notes application built with **Flutter**, designed to help you organize your thoughts and tasks efficiently. This app leverages **Hive** for fast local database storage and **Cubit** for clean state management, ensuring a smooth and responsive user experience.

## ✨ Features

* **Create Notes:** Easily add new notes with a title and detailed content.
* **Edit Notes:** Update your existing notes whenever you need.
* **Delete Notes:** Remove notes you no longer need with a simple tap.
* **Color Customization:** Assign different colors to your notes to categorize them visually.
* **Persistent Storage:** All data is stored locally using **Hive**, ensuring your notes remain safe even when the app is closed.
* **Dark Theme:** Features a sleek dark interface with the **Poppins** font for a modern look.
* **State Management:** Built using the **Bloc/Cubit** pattern for maintainable and testable code.

## 🛠️ Tech Stack

* **Framework:** [Flutter](https://flutter.dev/)
* **Language:** [Dart](https://dart.dev/)
* **State Management:** [Flutter Bloc (Cubit)](https://pub.dev/packages/flutter_bloc)
* **Local Database:** [Hive](https://pub.dev/packages/hive)
* **UI Components:** Custom widgets, Modal Bottom Sheets, and [Font Awesome Icons](https://pub.dev/packages/font_awesome_flutter).

## 🚀 Getting Started

Follow these steps to get a local copy up and running.

### Prerequisites

* [Flutter SDK](https://docs.flutter.dev/get-started/install) installed on your machine.
* A code editor like VS Code or Android Studio.

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/mohammedzom/notes_app.git](https://github.com/mohammedzom/notes_app.git)
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd notes_app
    ```
3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```
4.  **Run the app:**
    ```bash
    flutter run
    ```

## 📂 Project Structure

The project is organized for scalability:

* `lib/cubit`: Contains `NotesCubit` and `AddNoteCubit` for managing app state.
* `lib/models`: Contains the `NoteModel` and Hive adapters.
* `lib/views`: Contains the main screens (`NotesView`, `EditNoteView`) and custom widgets.
* `lib/consts.dart`: Stores app-wide constants (e.g., Hive box names, colors).

---

Developed with ❤️ using Flutter.

