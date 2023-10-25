import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  final Function onPressed;

  const ButtonExample({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
  
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => states.contains(MaterialState.pressed) ? Colors.red : Colors.green),
      ),
        onPressed: () {
          onPressed();
        },
        child: const Text("Button"));
  }
}
