import 'package:booking_room/features/event/presentation/views/widgets/gridview_event.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'eventDetailsScreen');
          },
          child: GridviewEvent()),
    ));
  }
}
