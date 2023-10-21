import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => states.contains(MaterialState.pressed) ? Colors.red : Colors.green),
      ),
        onPressed: () {
          print("pressed");
        },
        onLongPress: () {
          print("long pressed");
        },
        child: const Text("Button"));
  }
}
