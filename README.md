Spotlight 🎯

Spotlight is a Flutter plugin designed to highlight specific UI elements in your application. It is ideal for creating onboarding experiences, tutorials, or emphasizing key areas of your app.


---

![spotlight_image](https://github.com/user-attachments/assets/6df626ad-da7e-47c5-b62b-d3a04465d2ab)



---

🚀 Getting Started

Installation

Add the following to your pubspec.yaml file:

dependencies:
  spotlight: ^1.0.3

Run the command to fetch the package:

flutter pub get


---

🎨 Usage

Basic Example

Here’s how you can use Spotlight to highlight a button in your app:

import 'package:flutter/material.dart';
import 'package:spotlight/spotlight.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Spotlight Demo')),
        body: Spotlight(
          child: ElevatedButton(
            onPressed: () => print("Button Pressed"),
            child: Text('Click Me!'),
          ),
          description: "This button lets you explore the app further.",
          shape: SpotlightShape.circle,
        ),
      ),
    );
  }
}

Advanced Customization

Customize the spotlight with additional properties:

Spotlight(
  child: YourWidget(),
  description: "Custom description for your widget.",
  shape: SpotlightShape.rectangle,
  animationDuration: Duration(milliseconds: 600),
  overlayColor: Colors.black.withOpacity(0.8),
);


---

📄 Documentation

Detailed documentation, including a complete list of options, is available at pub.dev.


---

📷 Demo




You can use this demo to highlight your package’s features and usability.


---

🛠️ Platforms

This plugin currently supports:

Flutter (Dart-only)
To add platform-specific implementations (e.g., Android, iOS), follow the instructions provided in the plugin documentation.



---

🤝 Contributing

We welcome contributions! Please see our CONTRIBUTING.md for details.


---

❤️ Support

If you like this package, please:

1. Give it a like on pub.dev.


2. Share it with your Flutter developer community.




---

📝 License

This project is licensed under the MIT License. See the LICENSE file for details.


---

Let me know if you want me to help optimize the image for better clarity or add anything else!

