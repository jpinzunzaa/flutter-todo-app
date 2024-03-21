import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String task;
  final bool is_completed;
  Function(bool?)? onChanged;
  
  ToDoTile({
    super.key,
    required this.task,
    required this.is_completed,
    required this. onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            Checkbox(
              value: is_completed,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            Text(
              task,
              style: TextStyle(decoration: is_completed ? TextDecoration.lineThrough : TextDecoration.none),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12)
        ),
      )
    );
  }
}