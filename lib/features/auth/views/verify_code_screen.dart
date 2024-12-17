import 'package:booking_room/features/auth/views/widgets/custom_button_auth.dart';
import 'package:booking_room/features/auth/views/widgets/custom_logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import '../../../core/utils/assets.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomLogoAuth(),
          Padding(
            padding: const EdgeInsets.only(
                left: 24, right: 24, top: 45),
            child: Container(
                width: 342,
                height: 300,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Enter Verification Code",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff101623)),
                          ),
                          const Text(
                            "Enter code that we have sent to your email \n moh12***@gmail.com ",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff101623)),
                          ),
                          ////////////////////////////////////

                          SizedBox(height: 40,),

                          Center(
                            child: VerificationCode(
                              textStyle: TextStyle(fontSize: 20.0, color: Colors.green),
                              // keyboardType: TextInputType.number,
                              underlineColor: Color(0xff68F3D6), // If this is null it will use primaryColor: Colors.red from Theme
                              length: 6,
                              margin: EdgeInsets.only(left: 18),
                              cursorColor: Color(0xff68F3D6),
                              onCompleted: (String value) {  },
                              onEditing: (bool value) {  },
                            ),
                          ),

                          SizedBox(height: 40,),

                          ///////////////////////////////////
                          // Center(
                          //   child: Container(
                          //     width: 323,
                          //     height: 50,
                          //     child: ElevatedButton(
                          //       onPressed: () {
                          //       },
                          //       child: Text(
                          //         'Verify',
                          //         style: TextStyle(
                          //             fontWeight: FontWeight.w500,
                          //             fontSize: 12,
                          //             color: Colors.white),
                          //       ),
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Color(0xff20473E),
                          //         shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(10),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          CustomButtonAuth(title: 'Verify', onPressed: () { Navigator.pushNamed(context,''); },),
                        ]))),
          )
        ],
      ),
    );
  }
}
