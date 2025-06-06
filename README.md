# SideMenu-SwiftUI

A fully custom side menu component built in SwiftUI. It features animated transitions, enum-driven tab selection, and a modular structure that supports reusability and scalability.

---

## ✨ Features

- Smooth animated slide-in/out side menu
- Enum-based dynamic tab generation (`SideMenuRowType`)
- Profile section with image and user info
- Reusable `SideMenu` container for flexible integration
- Stylish gradient and selection highlight
- Fully native SwiftUI implementation

---

## 🧱 Project Structure

### `SideMenuRowType.swift`

An enum that represents different tabs:

```swift
enum SideMenuRowType: String, CaseIterable, Equatable {
    case home, favorite, chat, profile

    var title: String { ... }
    var iconName: String { ... }

    static func == (lhs: SideMenuRowType, rhs: SideMenuRowType) -> Bool {
        lhs.rawValue == rhs.rawValue
    }
}
```

---

### `SideMenuView.swift`

Displays a vertical list of menu options and a user profile view.

- Uses `@Binding` to reflect the selected tab
- Highlights active tab with color and gradient
- Profile section is fixed at the top
- Row interaction updates the selected tab and closes the menu

---

### `SideMenu.swift`

Reusable overlay component that:

- Darkens the background
- Slides in menu with a custom transition
- Dismisses menu on background tap

---

### `MainTabbedView.swift`

Handles the main app layout and tab switching.

- Embeds `TabView` for main content
- Integrates `SideMenuView` inside `SideMenu`
- Uses `@State` to control menu visibility and active tab

---

## 📸 Screenshots

> *(Insert relevant UI screenshots here)*  
> - Side menu open  
> - Tab view selected  
> - Mobile layout

---

## 🛠️ Requirements

- iOS 15+
- Swift 5.9+
- SwiftUI

---

**Ibrahim Gedami**  
🔗 [LinkedIn](https://www.linkedin.com/in/ibrahimmogedami/)  
💻 [GitHub](https://github.com/IbrahimMoGedami)

