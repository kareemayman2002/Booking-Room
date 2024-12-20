import 'package:booking_room/features/auth/presentation/views/widgets/custom_button_auth.dart';
import 'package:booking_room/features/auth/presentation/views/widgets/custom_logo_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Image.asset('assets/images/img_4.png'),
        //   centerTitle: true,
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        body: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomLogoAuth(),

      Container(
        width: 342,
        height: 340,
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
                decoration: InputDecoration(
                  labelText: 'Enter your Email',
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 10),
              const Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              const SizedBox(height: 5),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 4),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'forgotPasswordScreen');
                  },
                  child: const Text('Forget Password?',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0xff363636)),),
                ),
              ),
              const SizedBox(height: 5),
              // Center(
              //   child: Container(
              //     width: 323,
              //     height: 50,
              //     child: ElevatedButton(
              //       onPressed: () {
              //       },
              //       child: Text('Login',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Color(0xff20473E),
                          //         shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(10),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),

                          CustomButtonAuth(
                              title: 'Login',
                              onPressed: () {
                                Navigator.pushNamed(context, 'homeScreen');
                              }),
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                  text: 'Don’t have an account?',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Sign up',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => Navigator.pushNamed(
                                            context, 'registerScreen'),
                                    )
                                  ]),
                            ),
                          )
      ])))
            ],
          ),
        ),

    );
  }
}