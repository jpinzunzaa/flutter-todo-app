import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  VoidCallback on_pressed;

  CustomButton({
    super.key,
    required this.text,
    required this.on_pressed
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: on_pressed,
      color: Theme.of(context).primaryColor,
      child: Text(text)
    );
  }
}