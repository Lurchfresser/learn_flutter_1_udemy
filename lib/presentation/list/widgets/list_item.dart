import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;
  final String subtitle;

  const ListItem({super.key, required this.title, required this.subtitle});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(widget.title),
                subtitle: Text(widget.subtitle),
                leading: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                )
              ),
            );
  }
}