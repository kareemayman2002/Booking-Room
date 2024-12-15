import 'package:flutter/material.dart';

class CustomImageOnboarding extends StatelessWidget {
  const CustomImageOnboarding(
      {super.key,
      required this.image,
      required this.height,
      required this.width});

  final String image;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 17),
      child: Container(
          width: width,
          height: height,
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          )),
    );
  }
}
