import 'package:booking_room/core/utils/colors.dart';
import 'package:flutter/material.dart';
class CustomPaymentReview extends StatelessWidget {
  const CustomPaymentReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 342,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
          color: Colors.white
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Payment Method",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),textAlign: TextAlign.center,),
          SizedBox(height: 8,),
          Text("You will not be debited until your booking is confirmed",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xff555555)),textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Row(children: [
            Icon(Icons.check_circle,color: AppColors.iconDrawer,),
            Text("Add card",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xff555555)),textAlign: TextAlign.center,),
          ],)
        ],
      ),
    );
  }
}
