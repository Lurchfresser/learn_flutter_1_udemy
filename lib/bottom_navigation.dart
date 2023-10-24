import 'package:flutter/material.dart';
import 'package:learn_flutter_1/presentation/counter/counter_screen.dart';
import 'package:learn_flutter_1/presentation/list/list_screen.dart';
import 'package:learn_flutter_1/presentation/quiz/quiz_screen.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          ListScreen(),
          CounterScreen(),
          QuizScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amber,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Home'),
        ],
      ),
    );
  }
}