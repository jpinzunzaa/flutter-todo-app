import 'package:flutter/material.dart';
import 'package:todo_app/components/custom_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback handle_submit;
  VoidCallback handle_cancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.handle_submit,
    required this.handle_cancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task'
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(text: 'Save', on_pressed: handle_submit),
                CustomButton(text: 'Cancel', on_pressed: handle_cancel),
              ],
            )
          ]
        ),
      ),
    );
  }
}