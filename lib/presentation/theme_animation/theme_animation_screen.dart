import 'package:flutter/material.dart';
import 'package:learn_flutter_1/application/theme_service.dart';
import 'package:learn_flutter_1/presentation/components/dark_mode_switch.dart';
import 'package:learn_flutter_1/presentation/theme_animation/widgets/star.dart';
import 'package:learn_flutter_1/presentation/theme_animation/widgets/sun.dart';
import 'package:provider/provider.dart';

import 'widgets/moon.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Animation"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Consumer<ThemeService>(
        builder: (context, themeService, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black, blurRadius: 10),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.secondary,
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: themeService.isDark
                        ? const [
                            Color(0xFF94A9FF),
                            Color(0xFF6B66CC),
                            Color(0xFF200F75),
                          ]
                        : const [
                            Color(0xDDFFFA66),
                            Color(0xDDFFA057),
                            Color(0xDD940B99)
                          ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 70,
                      right: 50,
                      child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Star()),
                    ),
                    Positioned(
                      top: 150,
                      left: 60,
                      child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Star()),
                    ),
                    Positioned(
                      top: 40,
                      left: 100,
                      child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Star()),
                    ),
                    Positioned(
                      top: 50,
                      left: 50,
                      child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Star()),
                    ),
                    Positioned(
                      top: 100,
                      right: 200,
                      child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Star()),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      top: themeService.isDark ? 100 : 130,
                      right: themeService.isDark ? 100 : -40,
                      child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Moon()),
                    ),
                    AnimatedPadding(
                      duration: const Duration(milliseconds: 200),
                      padding: EdgeInsets.only(
                          top: themeService.isDark ? 110 : 50.0),
                      child: const Center(child: Sun()),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 225,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: themeService.isDark
                              ? Colors.grey[850]
                              : Colors.white,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  themeService.isDark
                                      ? "Too dark?"
                                      : "Too bright?",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: themeService.isDark
                                        ? Colors.white
                                        : Colors.black,
                                  )),
                              const SizedBox(
                                height: 21,
                              ),
                              Text(
                                  themeService.isDark
                                      ? "raise the sun"
                                      : "let it be night",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                    color: themeService.isDark
                                        ? Colors.white
                                        : Colors.black,
                                  )),
                              const SizedBox(
                                height: 21,
                              ),
                              const DarkModeSwitch()
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
