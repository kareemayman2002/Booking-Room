import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
class CustomOffer extends StatelessWidget {
  const CustomOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
        width: 163,
        height: 176,
        alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight:Radius.circular(12),bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12) ),
                color: Color(0xffFFFFFF)
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),child: Image.asset(AppAssets.offers,fit: BoxFit.fill,)),
              Text("Today’s offer",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("10% discount on 3 \n hours or more",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400),),
                  IconButton(onPressed: (){}, icon: Image.asset(AppAssets.next))
                ],
              ),
            ],
          ),
        );
  }
}
