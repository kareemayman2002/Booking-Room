import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
class CustomDrawer extends StatefulWidget {
   const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          Image.asset(AppAssets.logo),
          ListTile(
            title: const Text("Profile",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
            leading: const Icon(CupertinoIcons.person_alt_circle,
              color: AppColors.iconDrawer,),
            onTap: () {

            },
          ),
          ListTile(
            title: const Text("English",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
            leading: const Icon(Icons.language_outlined,size: 24,
              color: AppColors.iconDrawer,),
            trailing: const Icon(Icons.arrow_drop_down, color: AppColors.iconDrawer),
            onTap: () {

            },
          ),
          ListTile(
            title: const Text("Courses",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
            leading: const Icon(
              CupertinoIcons.cart, color: AppColors.iconDrawer,),
            onTap: () {

            },
          ),
          ListTile(
            title: const Text("Notification",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
            leading: const Icon(size: 24,
              Icons.notifications_none_outlined, color: AppColors.iconDrawer,),
            onTap: () {

            },
          ),
          ListTile(
            title: const Text("Rating",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
            leading: const Icon(size: 24,
              CupertinoIcons.star_fill, color: AppColors.iconDrawer,),
            onTap: () {

            },
          ),
          ListTile(
            title: const Text("Contact Us",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
            leading: const Icon(size: 24,
              Icons.contact_page_outlined, color: AppColors.iconDrawer,),
            onTap: () {

            },
          ),


        ],
      ),
    );
  }
}
