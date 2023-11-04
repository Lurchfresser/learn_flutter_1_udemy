import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  const CustomButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      child: Ink(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.green,
              Colors.black,
            ],
          ),
        ),
        child: InkWell(
          customBorder: const CircleBorder(),
          splashColor: Colors.red,
          onTap: () {
            onTap();
          },
          child: const Center(
            child: Icon(Icons.add),
          ),
        )
      ),
    );
  }
}