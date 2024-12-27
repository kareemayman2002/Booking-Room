import 'package:booking_room/features/offer/presentation/views/widgets/gridview_offers.dart';
import 'package:flutter/material.dart';
class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: GridviewOffers(),
    ));
  }
}
