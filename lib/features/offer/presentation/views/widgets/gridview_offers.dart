import 'package:flutter/material.dart';

import 'custom_offer.dart';


class GridviewOffers extends StatelessWidget {
  const GridviewOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => const CustomOffer(),
      itemCount: 18,

      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
