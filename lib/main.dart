import 'package:flutter/material.dart';
import 'package:learn_flutter_1/bottom_navigation.dart';
import 'package:learn_flutter_1/presentation/navigation_example_screens/screen_one.dart';
import 'package:learn_flutter_1/presentation/navigation_example_screens/screen_two.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.amber,
      )),
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
