// import 'package:flutter/material.dart';
//
// import '../../../../../core/utils/assets.dart';
// class CustomSliderCourse extends StatelessWidget {
//   const CustomSliderCourse({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           height: MediaQuery.of(context).size.height * 0.25,
//           decoration:  BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(AppAssets.event),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Positioned(
//           top: 10,
//           right: 10,
//           child: IconButton(
//             icon: const Icon(Icons.notifications),
//             color: Colors.white,
//             onPressed: () {
//               // فتح صفحة الإشعارات
//               Navigator.pushNamed(context, 'notificationScreen');
//             },
//           ),
//         ),
//         Positioned(
//             top: 10,
//             left: 10,
//             child: MaterialButton(
//               onPressed: () {
//                 setState(() {
//                   scaffoldKey.currentState!.openDrawer();
//                 });
//               },
//               child: const Icon(Icons.menu,color: Colors.white,),
//             )),
//         Positioned(
//           bottom: 42,
//           right: 20,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Container(
//                 width: 51,
//                 height: 22,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: AppColors.iconDrawer,
//                 ),
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Icon(Icons.star, color: Colors.yellow),
//                     Text("4.7",
//                         style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Positioned(
//             bottom: 70,
//             left: 10,
//             child: Container(
//               height: 33,
//               width: 123,
//               decoration: BoxDecoration(
//                   color: AppColors.iconDrawer,
//                   borderRadius: BorderRadius.circular(20)),
//               child: const Row(
//                 children: [
//                   Icon(
//                     Icons.location_on_outlined,
//                     color: Colors.white,
//                   ),
//                   Text(
//                     "Course Location",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w400,
//                         fontSize: 12),
//                   ),
//                 ],
//               ),
//             )),
//         Positioned(
//           bottom: 10,
//           left: 10,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 " Course Name",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16),
//               ),
//               const SizedBox(height: 5),
//               DotsIndicator(
//                 dotsCount: items.length,
//                 position: currentIndex,
//                 decorator: const DotsDecorator(
//                   size: Size.square(10.0),
//                   activeSize: Size.square(10.0),
//                   color: Color.fromRGBO(117, 200, 183, 0.48), // Inactive color
//                   activeColor: AppColors.iconDrawer,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
