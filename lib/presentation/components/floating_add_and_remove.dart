import 'package:flutter/material.dart';

class FloatingAddAndRemove extends StatelessWidget {
  final Function add;
  final Function remove;

  const FloatingAddAndRemove({super.key, required this.add, required this.remove});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                add();
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                remove();
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      );
  }
}