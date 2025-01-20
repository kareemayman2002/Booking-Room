import 'package:flutter/material.dart';
class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.title,required this.onPressed});
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 323,
        height: 50,
        child: ElevatedButton(
          onPressed:onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff20473E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
