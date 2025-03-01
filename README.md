```md
# 📱 Easy Responsive

## 📌 Overview
**Easy Responsive** is a lightweight Flutter package designed to simplify responsive UI development. It provides an easy-to-use utility for dynamically adjusting dimensions and font sizes based on screen size and orientation, ensuring your Flutter app looks great on all devices—from mobile phones to tablets.

## ✨ Features
✅ Auto-adjust UI elements based on screen size.  
✅ Supports both portrait and landscape modes.  
✅ Customizable breakpoints for phone and tablet layouts.  
✅ Lightweight & optimized for performance.  
✅ Works seamlessly with existing Flutter widgets.

## 🚀 Installation

Add **Easy Responsive** to your `pubspec.yaml`:

```


```sh
dependencies:
  easy_responsive_flutter: ^0.0.3
```

Then, run:

```sh
flutter pub get
```

## 📖 Usage

### 1️⃣ Responsive Dimensions

Use `responsiveDimension()` to get dynamic sizes based on device type.

```dart
import 'package:easy_responsive_flutter/easy_responsive_flutter.dart';

double responsiveWidth(BuildContext context) {
  return EasyResponsiveFlutter.responsiveDimension(
    phoneValue: 100,
    tabletValue: 200,
    context: context,
  );
}
```

### 2️⃣ Responsive Font Sizes

Use `responsiveFontSize()` to adjust text size dynamically.

```dart
Text(
  'Hello, Responsive!',
  style: TextStyle(
    fontSize: EasyResponsiveFlutter.responsiveFontSize(
      phoneFontSize: 16,
      tabletFontSize: 31,
      phoneLandscapeFontSize: 8,
      tabletLandscapeFontSize: 18,
      context: context,
    ),
  ),
)
```

## 🙌 Contributing

We welcome contributions! If you’d like to improve **Easy Responsive**, follow these steps:

1. **Fork** the repository.
2. **Create a new branch** (`feature/awesome-feature`).
3. **Commit changes** (`git commit -m "Added new feature"`).
4. **Push to the branch** (`git push origin feature/awesome-feature`).
5. **Submit a Pull Request** 🎉

## 🐛 Issues & Feedback

If you find a bug or have suggestions, please open an **issue** on [GitHub](https://github.com/your-repo-link).

## 📄 License

**Easy Responsive** is licensed under the MIT License. See the `LICENSE` file for details.

---

### ❤️ Made with love by **Mohamed Essam** 💙
```
