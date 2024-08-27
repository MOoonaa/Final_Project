import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themes.dart';
import 'pages/sign_in_page.dart';
import 'pages/control_page.dart';
import 'pages/analytics_page.dart';
import 'pages/status_page.dart';
import 'pages/settings_page.dart';
import 'pages/emergency_assistance_page.dart';
import 'pages/customization_page.dart'; // Ensure this import matches your actual file structure
import 'pages/dashboard_page.dart'; // Import the DashboardPage

void main() {
  runApp(MyApp());
}

class ThemeNotifier with ChangeNotifier {
  bool _isDarkMode = false;

  ThemeData get currentTheme => _isDarkMode ? darkTheme : lightTheme;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            theme: themeNotifier.currentTheme,
            home: SignInPage(),
            routes: {
              '/dashboard': (context) =>
                  DashboardPage(), // Add the route for DashboardPage
              '/control': (context) => ControlPage(),
              '/analytics': (context) => AnalyticsPage(),
              '/status': (context) => StatusPage(),
              '/settings': (context) => SettingsPage(),
              '/customization': (context) => CustomizationPage(),
              '/emergency': (context) => EmergencyAssistancePage(),
            },
          );
        },
      ),
    );
  }
}
