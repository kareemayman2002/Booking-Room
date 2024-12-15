import 'package:flutter/material.dart';

class CustomSkipOnboarding extends StatelessWidget {
  const CustomSkipOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,right: 24,bottom: 85),
      child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'loginScreen');
          },
          child: const Text('Skip', style: TextStyle(fontSize: 17,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w400,
              letterSpacing: 0.3))),
    );
  }
}
