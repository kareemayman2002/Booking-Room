import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 79, right: 79,
        bottom: 22)
      , child: Image.asset(AppAssets.logo, fit: BoxFit.fill,),);
  }
}
