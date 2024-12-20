import 'package:flutter/material.dart';

import 'custom_event.dart';
class GridviewEvent extends StatelessWidget {
  const GridviewEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(24),
      shrinkWrap: true,
      itemBuilder:(context,index)=> CustomEvent(),itemCount: 6, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),);
  }
}
