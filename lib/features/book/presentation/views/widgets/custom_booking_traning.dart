import 'package:booking_room/core/utils/assets.dart';
import 'package:flutter/material.dart';
class CustomBookingTraning extends StatelessWidget {
  const CustomBookingTraning({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 342,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        color: Colors.white
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(AppAssets.training,width: 100,height: 100,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Training room",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),textAlign: TextAlign.center,),
              Text("inside",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff555555)),textAlign: TextAlign.center,),

            ],
          ),
          IconButton(onPressed: (){}, icon: Image.asset(AppAssets.location_line,width: 35,height: 35,),)
        ],
      ),
    );
  }
}
