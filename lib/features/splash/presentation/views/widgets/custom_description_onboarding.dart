import 'package:flutter/material.dart';

class CustomDescriptionOnboarding extends StatelessWidget {
  const CustomDescriptionOnboarding({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24,top: 25, bottom: 63),
      child: Center(
          child: Text(
            textAlign: TextAlign.center,
        description,
        style: const TextStyle(
            fontSize: 16,
            color: Color(0xffFFC100),
            fontWeight: FontWeight.w400,
            ),
      )),
    );
  }
}
