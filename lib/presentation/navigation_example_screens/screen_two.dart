import 'package:flutter/material.dart';
import 'package:learn_flutter_1/presentation/navigation_example_screens/screen_one.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: TextButton(child: const Text("Screen One"), onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ScreenOne()));
        },),
      )
    );
  }
}