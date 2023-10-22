import 'package:flutter/material.dart';
import 'package:learn_flutter_1/presentation/list/widgets/list_item.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  static const List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: items.length,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            return ListItem(title: "Item $index", subtitle: "Subtitle $index");
          },
        ),
      ),
    );
  }
}
