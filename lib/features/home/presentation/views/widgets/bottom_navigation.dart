// import 'package:flutter/material.dart';
//
// import '../../../../../core/utils/assets.dart';
// import '../../../../event/presentation/views/event_screen.dart';
// import '../../../../offer/presentation/views/offers_screen.dart';
// import '../home_screen.dart';
// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({super.key});
//
//   @override
//   State<BottomNavigation> createState() => _BottomNavigationState();
// }
//
// class _BottomNavigationState extends State<BottomNavigation> {
//   int currentIndex = 0;
//
//   void onItemTapped(index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         BottomNavigationBar(
//           currentIndex:currentIndex ,
//           onTap: onItemTapped,
//           elevation: 5,
//           items: [
//             BottomNavigationBarItem(
//               icon: Image.asset(
//                 AppAssets.home,
//                 width: 20,
//                 height: 20,
//               ),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//                 icon: Image.asset(
//                   AppAssets.book,
//                   width: 20,
//                   height: 20,
//                 ),
//                 label: 'Book'
//             ),
//             BottomNavigationBarItem(
//                 icon: Image.asset(
//                   AppAssets.offer,
//                   width: 20,
//                   height: 20,
//                 ),
//                 label: 'Offers'),
//             BottomNavigationBarItem(
//                 icon: Image.asset(
//                   AppAssets.more,
//                   width: 20,
//                   height: 20,
//                 ),
//                 label: 'More'),
//           ],
//           type: BottomNavigationBarType.fixed,
//         ),
//         Screen.elementAt(selectedIndex),
//       ],
//     );
//   }
// }
