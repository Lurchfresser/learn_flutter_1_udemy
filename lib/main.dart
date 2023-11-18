import 'package:flutter/material.dart';
import 'package:learn_flutter_1/application/theme_service.dart';
import 'package:learn_flutter_1/bottom_navigation.dart';
import 'package:learn_flutter_1/presentation/navigation_example_screens/screen_one.dart';
import 'package:learn_flutter_1/presentation/navigation_example_screens/screen_two.dart';
import 'package:learn_flutter_1/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
      child: const MainApp(),
      )
    );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context,themeService,child){
      return MaterialApp(

      themeMode: themeService.isDark ? ThemeMode.dark : ThemeMode.light,
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
    });
  }
}
