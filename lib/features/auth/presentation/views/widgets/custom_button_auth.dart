import 'package:flutter/material.dart';
class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.title,required this.onPressed});
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 323,
        height: 50,
        child: ElevatedButton(
          onPressed:onPressed,
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff20473E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
