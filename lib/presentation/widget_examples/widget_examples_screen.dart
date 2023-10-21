import 'package:flutter/material.dart';
import 'package:learn_flutter_1/presentation/widget_examples/widgets/rotateble_question_scroll_view.dart';

class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Snackbar"),
              ),
            );
          },
          child: const Icon(Icons.ac_unit),
        );
      }),
      appBar: AppBar(title: const Text("Hello World!")),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(35),
        ),
        child: const RotatebleQuestionScrollView(),
      ),
    );
  }
}
