# Route Definitions
All routes are defined in `route.dart`:
```dart
import 'package:flutter/material.dart';
import 'ui/screens/aboutScreen.dart';
import 'ui/screens/guessCountry.dart';

class AppRoutes {
  static const String home = '/';
  static const String about = '/about';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => GuessCountry());
      case about:
        return MaterialPageRoute(builder: (_) => AboutScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
```

# Integration in Main App
In `main.dart`, the routes are integrated into the `MaterialApp`:
```dart
import 'package:flutter/material.dart';
import 'route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
```

---
# Features of Named Routes Implementation:
## Centralized Route Management:

A route.dart file has been added to define all named routes in one place. This centralizes route management and simplifies the addition or modification of navigation paths.<br>
**Named Routes:**

Screens are now accessed using named identifiers instead of manual navigation calls.<br>
For example, instead of directly using Navigator.push, you can now navigate with Navigator.pushNamed(context, '/about').<br>
**Ease of Navigation:**

Named routes provide a more readable and intuitive way to navigate between screens, especially in apps with multiple pages.<br>
**Consistency:**

All navigation logic is standardized, ensuring consistency throughout the app.<br>
**Improved Maintainability:**

If a route name or path needs to be updated, changes are made in a single location (route.dart), reducing the chances of errors and improving maintainability.<br>
**Support for Dynamic Routing:**

Named routes also support passing arguments to screens, making the navigation system more powerful and flexible.

# Key Changes and Features of Named Routes Implementation:
## Centralized Route Management:

A route.dart file has been added to define all named routes in one place. This centralizes route management and simplifies the addition or modification of navigation paths.<br><br>
**Named Routes:**

Screens are now accessed using named identifiers instead of manual navigation calls.<br>
For example, instead of directly using Navigator.push, you can now navigate with Navigator.pushNamed(context, '/about').<br><br>
**Ease of Navigation:**

Named routes provide a more readable and intuitive way to navigate between screens, especially in apps with multiple pages.<br><br>
**Consistency:**

All navigation logic is standardized, ensuring consistency throughout the app.<br><br>
**Improved Maintainability:**

If a route name or path needs to be updated, changes are made in a single location (route.dart), reducing the chances of errors and improving maintainability.<br><br>
**Support for Dynamic Routing:**

Named routes also support passing arguments to screens, making the navigation system more powerful and flexible.
