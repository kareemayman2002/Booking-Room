
import 'package:booking_room/core/utils/assets.dart';
import 'package:booking_room/features/auth/presentation/views/widgets/custom_button_auth.dart';
import 'package:booking_room/features/auth/presentation/views/widgets/custom_logo_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(

          children: [

            const CustomLogoAuth(),
            
            Container(
              width: 342 ,
              height: 488 ,
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),

                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    const SizedBox(height: 5),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: 'Enter your Email',
                        hintStyle: const TextStyle(fontSize: 10,fontWeight: FontWeight.w400),
                        // labelText: 'البريد الإلكتروني',
                        prefixIcon: const Icon(Icons.email_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text("User Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    const SizedBox(height: 5),
                    TextField(
                      controller: userName,
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: const TextStyle(fontSize: 10,fontWeight: FontWeight.w400),
                        // labelText: 'البريد الإلكتروني',
                        prefixIcon: const Icon(Icons.email_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    const SizedBox(height: 5),
                    TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: const TextStyle(fontSize: 10,fontWeight: FontWeight.w400),
                        // labelText: 'كلمة المرور',
                        prefixIcon: const Icon(Icons.lock_outline),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text("Confirm Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    const SizedBox(height: 5),
                    TextField(
                      controller: confirm,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: const TextStyle(fontSize: 10,fontWeight: FontWeight.w400),
                        // labelText: 'كلمة المرور',
                        prefixIcon: const Icon(Icons.lock_outline),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Center(
                    //   child: Container(
                    //     width: 323,
                    //     height: 50,
                    //     child: ElevatedButton(
                    //       onPressed: () {
                    //       },
                    //       child: Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                    //       style: ElevatedButton.styleFrom(
                    //         backgroundColor: Color(0xff20473E),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    CustomButtonAuth(title: 'SIGN UP', onPressed: () { Navigator.pushNamed(context,'verifyCodeScreen'); },),
                    const SizedBox(height: 15,),
                Center(
                  child: RichText(
                    text: TextSpan(text: 'Already  have an account?',style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black), children: [
                      TextSpan(
                        text: 'Log In',style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context,'loginScreen'),
                      )
                    ]),
                  ),
                )

                  ],
                ),
              ),
            )
    ]
    ))
    );

  }
}

