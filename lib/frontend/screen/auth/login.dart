import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perpus/frontend/screen/auth/forgotPassword.dart';
import 'package:perpus/frontend/screen/auth/registrasi.dart';
import 'package:perpus/frontend/screen/user/mainUser.dart';
import 'package:perpus/other/color.dart';
import 'package:perpus/other/theme.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      maxRadius: 40,
                      backgroundColor: ColorData.textSecondary,
                      child: FlutterLogo(
                        size: 80,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30,bottom: 25,top: 10),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 800,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Hello there, sign in to continue",
                        style: TextStyle(
                          fontSize: 17,
                          color: ColorData.textSecondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 17,
                          color: ColorData.textSecondary,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          hintText: "Enter your email",
                          border: ThemeInputBorder.outlinedGrey,
                          enabledBorder: ThemeInputBorder.outlinedGrey,
                          focusedBorder: ThemeInputBorder.outlinedGrey,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 17,
                          color: ColorData.textSecondary,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          hintText: "Enter your password",
                          border: ThemeInputBorder.outlinedGrey,
                          enabledBorder: ThemeInputBorder.outlinedGrey,
                          focusedBorder: ThemeInputBorder.outlinedGrey,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(ForgotPasswordScreen());
                        },
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            fontSize: 17,
                            color: ColorData.secondary,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () => Get.to(MainUser()),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: ColorData.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 60),
                          primary: ColorData.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Don't have an account? ",
                                  style: TextStyle(
                                    color: ColorData.textPrimary,
                                  )),
                              TextSpan(
                                text: "Register",
                                style: TextStyle(color: ColorData.secondary),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to(RegistrationScreen());
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
