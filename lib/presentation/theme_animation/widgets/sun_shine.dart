import 'package:flutter/material.dart';

class SunShine extends StatelessWidget {
  final double radius;
  final Widget child;
  const SunShine({super.key, required this.radius, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.1),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
