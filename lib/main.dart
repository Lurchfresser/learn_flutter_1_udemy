import 'package:flutter/material.dart';
import 'package:learn_flutter_1/bottom_navigation.dart';
import 'package:learn_flutter_1/presentation/navigation_example_screens/screen_one.dart';
import 'package:learn_flutter_1/presentation/navigation_example_screens/screen_two.dart';
import 'package:learn_flutter_1/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.system,
      theme: AppTheme.lighttheme,
      darkTheme: AppTheme.darktheme,
      
      home: const SafeArea(
        child: RootBottomNavigation(),
      ),
      routes: {
        "/root": (context) => const RootBottomNavigation(),
        "/screenOne": (context) => const ScreenOne(),
        "/screenTwo": (context) => const ScreenTwo(),
      },
    );
  }
}
