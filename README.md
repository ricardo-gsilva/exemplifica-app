# 📱 Exemplifica

**Exemplifica** is a Flutter mobile application designed to help people with difficulties in mathematics by providing educational content and interactive calculators.

The project evolved from a simple application (2020) into a modern, scalable architecture focused on **clean structure, code organization, and maintainability**, and is now used as a portfolio project.

---

## 🧠 Highlights

* Dynamic UI driven by configuration (no hardcoded navigation)
* Registry + Strategy pattern applied in a real-world scenario
* Feature-based scalable architecture
* Clear separation between UI, logic, and configuration layers
* Pure math engine fully decoupled from UI

---

## 📥 Download

[![Play Store](https://img.shields.io/badge/Google_Play-414141?style=for-the-badge\&logo=google-play\&logoColor=white)](https://play.google.com/store/apps/details?id=br.com.exemplifica)

---

## 🧩 Project Structure

```bash
lib
├── core                       # Shared layer (config, UI, navigation, logic)
│   ├── config                 # Dynamic configuration system (buttons & registries)
│   │   ├── registry           # Strategy-based registries (content & navigation mapping)
│   │   │   ├── content        # Category/content organization (algebra, finance, etc.)
│   │   │   ├── calculator_button_registry.dart
│   │   │   └── learning_buttons_registry.dart
│   │   └── buttons_config.dart # Central button behavior configuration
│
│   ├── constants              # Global constants (colors, strings, font sizes, assets)
│   ├── extensions             # Helper extensions (BuildContext, colors, etc.)
│   ├── math_engine            # Pure calculation logic (independent of UI)
│   ├── navigation             # Routing and navigation control
│   └── ui                     # Shared UI layer (widgets, enums, models)
│
├── features                   # Feature-based architecture (modular and scalable)
│   ├── basic_rules            # Educational content (math rules)
│   │   ├── content            # Structured content (lists + strings)
│   │   └── page               # UI layer for the feature
│
│   ├── calculators            # Calculation feature (logic-driven)
│   │   ├── config             # Calculator configuration and registry
│   │   ├── controllers        # State management layer
│   │   ├── enums              # Calculator types and layouts
│   │   ├── models             # Data structures
│   │   ├── presentation       # UI (pages/screens)
│   │   ├── usecases           # Business rules abstraction
│   │   └── widgets            # Feature-specific UI components
│
│   ├── home                   # Entry point and navigation hub
│   │   ├── content            # Home content (lists + strings)
│   │   └── page               # Home screen UI
│
│   └── splash                 # App initialization
│       └── presentation       # Splash screen UI
│
└── main.dart                  # Application entry point
```

---

## 🧠 Architecture Overview

This project follows a **feature-based architecture**, combined with a strong separation of responsibilities:

### 🔹 Core Layer

* Centralizes reusable logic and UI
* Prevents duplication across features
* Contains navigation, engines, and global configurations

### 🔹 Feature Layer

* Each feature is isolated and self-contained
* Clear separation between content, logic, and UI
* Improves scalability and maintainability

### 🔹 Math Engine Layer

* Fully decoupled from UI
* Pure functions for calculations
* Easy to test and reuse

---

## ⚙️ Button Configuration Pattern (Registry + Strategy)

One of the main highlights of this project is the **dynamic button system**, inspired by the **Strategy pattern**.

Instead of hardcoding navigation and UI behavior:

* Buttons are defined via **registries**
* Each registry maps:

  * content
  * navigation routes
  * behavior
* A central configuration (`buttons_config.dart`) orchestrates everything

---

### 📌 Problem

In traditional applications:

* UI components directly control navigation and logic
* Each screen manages its own behavior
* High coupling between UI, navigation, and business logic
* Difficult to scale and maintain

---

### ✅ Solution

This project introduces a system based on:

* **Registry Pattern** → defines *what exists*
* **Strategy Pattern** → defines *what happens*
* **Configuration Layer** → defines *how everything connects*

---

### 🧩 How It Works

#### 1. Central Configuration

```bash
core/config/buttons_config.dart
```

Defines:

* Button type
* Layout
* Data source

---

#### 2. Registries

```bash
core/config/registry/
```

Each registry represents a domain:

* `main_buttons_registry.dart`
* `learning_buttons_registry.dart`
* `calculator_button_registry.dart`
* `content/*_registry.dart`

👉 These act as **behavior catalogs**, decoupling UI from logic.

---

#### 3. Strategy in Practice

Each button is defined by:

* Type (`enum`)
* Configuration (registry)
* Destination (route, content, or action)

Example:

```dart
ButtonConfig(
  type: ButtonType.calculator,
  action: () => navigateToCalculator(type),
)
```

👉 The UI only renders
👉 The behavior comes from configuration

---

### 🚀 Benefits

* 🔄 Extensibility: add new features without changing UI
* 🧠 Low coupling
* ♻️ Reusability
* 📦 Centralized logic
* ⚡ Scalable structure

---

## 🧮 Math Engine

```bash
core/math_engine/
```

All mathematical logic is isolated from the UI.

Each operation has its own engine:

* `percentage_math_engine.dart`
* `rule_of_three_math_engine.dart`
* `compound_interest_math_engine.dart`
* etc.

👉 No UI logic leakage
👉 Easy to test and maintain

---

## 🎨 UI Layer (Design System)

```bash
core/ui/widgets/
```

Reusable components:

* `ScaffoldCustom`
* `ButtonsGrid`
* `CardCustom`
* `TextCustom`
* `IconButtonCustom`

👉 Ensures visual consistency
👉 Reduces duplication

---

## 🧭 Navigation

```bash
core/navigation/
```

Centralized navigation system:

* `app_routes.dart`
* `app_generate_route.dart`
* `app_navigator.dart`

👉 Decoupled from UI

---

## 🚀 Features

Each feature is independent and organized by responsibility.

---

### 📘 Basic Rules

```bash
features/basic_rules/
```

* Educational content
* Separation between:

  * `content_list` → structure
  * `strings` → text
  * `page` → UI

---

### 🧮 Calculators

```bash
features/calculators/
```

Most advanced feature.

Clear separation:

* `controllers` → state management
* `usecases` → business logic
* `models` → data structures
* `widgets` → UI
* `config` → registry integration

👉 Strong influence of **Clean Architecture**

---

### 🏠 Home

```bash
features/home/
```

Responsible for:

* Displaying content
* Orchestrating navigation
* Consuming registries

---

### 🌊 Splash

```bash
features/splash/
```

* Initial loading screen
* App bootstrap

---

## 🧠 Technical Decisions

* Configuration-driven UI (no hardcoded navigation)
* Registry Pattern for behavior centralization
* Strategy Pattern for dynamic actions
* Clear separation between:

  * UI
  * Logic
  * Configuration
* Gradual evolution toward Clean Architecture
* Full feature isolation

---

## 📈 Project Evolution

1. 2020 → Simple educational app
2. Migration to Flutter
3. Structural refactor (2024)
4. Current refactor → focus on scalability and architecture

---

## 🎯 Purpose

This project has two main goals:

* 📚 Help users learn basic math
* 💼 Serve as a portfolio project demonstrating:

  * Flutter architecture
  * Code organization
  * Best practices

---

## 👨‍💻 Author

Developed by **Ricardo Gomes**
Flutter Developer