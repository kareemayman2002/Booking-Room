import 'package:booking_room/features/home/presentation/views/widgets/custom_course.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text("Courses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          CustomCourse(),
        ],
      )
    ));
  }
}
