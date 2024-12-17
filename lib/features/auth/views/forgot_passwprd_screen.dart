import 'package:booking_room/features/auth/views/widgets/custom_button_auth.dart';
import 'package:booking_room/features/auth/views/widgets/custom_logo_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          CustomLogoAuth(),
          Container(
            width: 342,
            height: 300,
            decoration: BoxDecoration(
                color: Color(0xffF2F2F2),

                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Forgot Your Password?",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff101623)),
                  ),
                  const Text(
                    "Enter your Email, we will send you \n confirmation code ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff101623)),
                  ),

                  SizedBox(height: 40,),

                  Text("Email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  SizedBox(height: 5),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'Enter your Email',
                      hintStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),
                      // labelText: 'البريد الإلكتروني',
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  SizedBox(height: 24,),
                  // Center(
                  //   child: Container(
                  //     width: 323,
                  //     height: 50,
                  //     child: ElevatedButton(
                  //       onPressed: () {
                  //         Navigator.pushNamed(context,'verifyCodeScreen');
                  //       },
                  //       child: Text('Reset Password',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                  //       style: ElevatedButton.styleFrom(
                  //         backgroundColor: Color(0xff20473E),
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  CustomButtonAuth(title: 'Reset Password', onPressed: () { Navigator.pushNamed(context,'verifyCodeScreen'); },)
                ],
              ),
            ),
          )

        ],
      ),
    ));
  }
}
