import 'package:booking_room/core/utils/assets.dart';
import 'package:flutter/material.dart';
class CustomEvent extends StatelessWidget {
  const CustomEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 163,
        height: 176,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 8,
                spreadRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight:Radius.circular(12),bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12) ),
            color: Color(0xffFFFFFF)
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),child: Image.asset(AppAssets.event,fit: BoxFit.fill,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Flutter Hackathon",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400),),
                IconButton(onPressed: (){}, icon: Image.asset(AppAssets.next))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
