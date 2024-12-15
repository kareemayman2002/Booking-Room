import 'package:flutter/material.dart';

class CustomTitleOnboarding extends StatelessWidget {
  const CustomTitleOnboarding({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11, right: 10, top: 4),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.3),
      )),
    );
  }
}
