import 'package:flutter/material.dart';
import 'package:learn_flutter_1/application/theme_service.dart';
import 'package:provider/provider.dart';

class DarkModeSwitch extends StatefulWidget {
  const DarkModeSwitch({super.key});

  @override
  State<DarkModeSwitch> createState() => _DarkModeSwitchState();
}

class _DarkModeSwitchState extends State<DarkModeSwitch> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, value, child) {
        return Switch(
          value: value.isDark,
          onChanged: (value) {
            Provider.of<ThemeService>(context, listen: false).toggleTheme();
          },
        );
      },
    );
  }
}