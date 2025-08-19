# Quiz Game Flutter App

A modern, interactive quiz application built with Flutter, designed to demonstrate Object-Oriented Programming (OOP) principles and best practices in mobile app development.

## 📱 Screenshots



## 🎯 Project Overview

This Flutter application was developed as part of a Flutter formation program where I served as a mentor. The primary goal was to showcase the implementation and efficiency of Object-Oriented Programming principles in organizing a Flutter project.

### Key Learning Objectives
- Demonstrate clean code architecture using OOP principles
- Show efficient project organization and structure
- Implement interactive UI/UX patterns
- Practice state management in Flutter

## ✨ Features

- **Multiple Quiz Categories**: Tech, Sports, Math, and more
- **Offline Mode**: Complete functionality without internet connection
- **Interactive UI**: Smooth animations and transitions with purple-themed design
- **Real-time Feedback**: Instant answer validation with visual feedback
- **Score Tracking**: Track correct and incorrect answers with visual indicators
- **Question Progress**: Clear progress indication (1/10 format)
- **Results Summary**: Comprehensive results page with congratulations and performance metrics
- **Responsive Design**: Optimized for different screen sizes
- **Clean Architecture**: Domain-driven design with clear separation of concerns

## 🏗️ Architecture & OOP Implementation

This project demonstrates a **Domain-Driven Design (DDD)** approach with clean architecture principles and solid OOP implementation:

### **🏛️ Clean Architecture Layers**

#### **1. Domain Layer**
- **Entities**: Core business objects (`question.dart`, `quizz.dart`, `quizz_card.dart`)
- **Data**: Static data sources for offline functionality (`quizzCards.dart`, `quizzes.dart`)

#### **2. Presentation Layer**
- **Screens**: Main UI screens with navigation logic
- **Widgets**: Reusable UI components with single responsibility

#### **3. Constants Layer**
- **Styles**: Centralized theming and design system
- **Other**: Configuration constants and app-wide settings

### **🎯 OOP Principles Demonstrated**

#### **1. Encapsulation**
- Quiz entities encapsulate their data and behavior
- Widgets maintain private state and expose public interfaces
- Data classes hide internal structure while providing clean APIs

#### **2. Inheritance**
- StatefulWidget and StatelessWidget inheritance for UI components
- Common widget behaviors inherited from Flutter's base classes

#### **3. Abstraction**
- Clean separation between data models and presentation logic
- Abstract UI patterns through reusable widget components
- Business logic abstracted from UI implementation

#### **4. Single Responsibility Principle**
- Each widget has a single, well-defined purpose
- Entities focus solely on data representation
- Clear separation between data, business logic, and presentation

## 📂 Project Structure

```
lib/
├── constants/
│   ├── other.dart          # App constants and configurations
│   └── styles.dart         # Theme colors, text styles, and UI constants
├── domain/
│   ├── data/
│   │   ├── quizzCards.dart # Quiz categories data (Tech, Sports, Math)
│   │   └── quizzes.dart    # Quiz questions and answers data
│   └── entity/
│       ├── question.dart   # Question model class
│       ├── quizz.dart      # Quiz model with business logic
│       └── quizz_card.dart # Quiz card model for categories
├── view/presentation/
│   ├── screen/
│   │   ├── home_page.dart       # Main screen with quiz categories
│   │   ├── questions_screen.dart # Quiz gameplay screen
│   │   └── result_screen.dart   # Results and congratulations screen
│   └── widget/
│       ├── how_to_play.dart           # Instructions widget
│       ├── question_screen_header.dart # Header with progress and timer
│       ├── quizz_card.dart           # Category card widget
│       ├── submession_button.dart     # Submit/Next button widget
│       └── suggestion_box.dart        # Answer options widget
└── main.dart               # Application entry point
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)
- Android Studio / VS Code
- Android device or emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/diaazg/quizz_game.git
   cd quizz_game
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

## 📋 How to Play

1. **Select Category**: Choose from Tech, Sports, Math, or other available categories
2. **Read Instructions**: Review the "How to play" section
3. **Answer Questions**: Select your answer from multiple choice options
4. **Track Progress**: Monitor your score and remaining questions
5. **View Results**: See your final score and performance summary

## 🎓 Educational Value

This project serves as an excellent learning resource for:

- **Flutter Development**: Real-world implementation of Flutter widgets and navigation
- **OOP Principles**: Practical application of encapsulation, inheritance, and polymorphism
- **Code Organization**: Structured approach to large-scale Flutter applications
- **UI/UX Design**: Implementation of Material Design principles
- **State Management**: Handling application state across different screens

## 🔄 Future Enhancements

- [ ] Add more quiz categories and questions
- [ ] Implement local storage for user progress
- [ ] Add difficulty levels (Easy, Medium, Hard)
- [ ] Include multimedia questions (images, audio)
- [ ] Custom quiz creation functionality
- [ ] Export results functionality
- [ ] Dark/Light theme toggle
- [ ] Multiple language support
- [ ] Enhanced animations and micro-interactions



---

**Note**: This application was developed for educational purposes to demonstrate Flutter development skills and OOP implementation in a real-world project.
