import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomCourse extends StatelessWidget {
  const CustomCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24,right: 24,top: 15,bottom: 10),
      child: Container(

          height: 200,
          width: 366,
          child:Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16,bottom: 49,top: 7),
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.course, // أضف صورة مخصصة هنا
                          fit:BoxFit.fill ,
                          height: 143,
                          width: 342,
                        ),


                      ],
                    ),
                  ),
                  Positioned(
                    top:100 ,
                    left: 30,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(117, 200, 183, 0.52),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "4.7",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25,
                    right: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        size: 30,
                        Icons.favorite,
                        color: Colors.tealAccent,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 16,
                    child: Container(
                      padding: const EdgeInsets.only(left: 24,right: 24),
                      width: 310,
                      height: 44,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 8,
                            spreadRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Full Stack Course",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),)
                ],
              ),

            ],
          )),
    );
  }
}