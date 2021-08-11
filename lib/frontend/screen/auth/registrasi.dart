import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perpus/other/color.dart';
import 'package:perpus/other/theme.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
                        "Full Name",
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
                          hintText: "Enter your full name",
                          border: ThemeInputBorder.outlinedGrey,
                          enabledBorder: ThemeInputBorder.outlinedGrey,
                          focusedBorder: ThemeInputBorder.outlinedGrey,
                        ),
                      ),
                      SizedBox(
                        height: 15,
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
                      Text(
                        "Confirmation Password",
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
                          hintText: "Enter your confirmation password",
                          border: ThemeInputBorder.outlinedGrey,
                          enabledBorder: ThemeInputBorder.outlinedGrey,
                          focusedBorder: ThemeInputBorder.outlinedGrey,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          fontSize: 17,
                          color: ColorData.primary,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () => print("Login"),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
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
                                  text: "Back to ",
                                  style: TextStyle(
                                    color: ColorData.textPrimary,
                                  )),
                              TextSpan(
                                text: "Login",
                                style: TextStyle(color: ColorData.primary),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.back();
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
