import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class Floatbtn extends StatelessWidget {
  const Floatbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(32, 71, 62, 0.59),
        onPressed: () {
          Navigator.pushNamed(context, 'courseScreen');
        },
        child: Image.asset(
          AppAssets.logo,
          width: 52,
          height: 52,
        ),
      ),
    );
  }
}
