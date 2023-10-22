import 'package:flutter/material.dart';
import 'package:learn_flutter_1/presentation/components/floating_add_and_remove.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: Center(
          child: Text(
        "Count: $_counter",
        style: TextStyle(
            fontSize: 30, color: _counter > 0 ? Colors.green : Colors.red),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingAddAndRemove(
        add: () => {
          setState(() {
            _counter++;
          })	
        },
        remove: () => {
          setState(() {
            _counter--;
          })
        },
      ),
    );
  }
}
