Easy Responsive 📱

📌 Overview
Easy Responsive is a lightweight Flutter package designed to simplify responsive UI development. It provides an easy-to-use utility for dynamically adjusting dimensions and font sizes based on screen size and orientation, ensuring your Flutter app looks great on all devices—from mobile phones to tablets.

✨ Features
✅ Auto-adjust UI elements based on screen size.
✅ Supports both portrait and landscape modes.
✅ Customizable breakpoints for phone and tablet layouts.
✅ Lightweight & optimized for performance.
✅ Works seamlessly with existing Flutter widgets.

🚀 Installation
Add Easy Responsive to your pubspec.yaml:

dependencies:
easy_responsive: ^0.0.1

Then, run:
flutter pub get

📖 Usage
1️⃣ Responsive Dimensions
Use responsiveDimension() to get dynamic sizes based on device type.
import 'package:easy_responsive/easy_responsive.dart';

double responsiveWidth(BuildContext context) {
return ResponsiveUtil.responsiveDimension(
phoneValue: 100,
tabletValue: 200,
context: context,
);
}

2️⃣ Responsive Font Sizes
Use responsiveFontSize() to adjust text size dynamically.


Text(
'Hello, Responsive!',
style: TextStyle(
fontSize: ResponsiveUtil.responsiveFontSize(
phoneFontSize: 16,
tabletFontSize: 24,
phoneLandscapeFontSize: 18,
tabletLandscapeFontSize: 30,
context: context,
),
),
)


🙌 Contributing
We welcome contributions! If you’d like to improve Easy Responsive, follow these steps:

Fork the repo
Create a new branch (feature/awesome-feature)
Commit changes (git commit -m "Added new feature")
Push to the branch (git push origin feature/awesome-feature)
Submit a Pull Request 🎉


🐛 Issues & Feedback
If you find a bug or have suggestions, please open an issue on GitHub.


📄 License
Easy Responsive is licensed under the MIT License. See LICENSE for details.


 Made❤️ by Mohamed Essam 💙







