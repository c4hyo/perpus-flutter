import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perpus/backend/controller/authController.dart';
import 'package:perpus/other/color.dart';
import 'package:perpus/other/theme.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Get.find<AuthController>();
    final email = TextEditingController();
    final name = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
      backgroundColor: primary,
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
                          color: textSecondary,
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
                          color: textSecondary,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: name,
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
                          color: textSecondary,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
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
                          color: textSecondary,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: password,
                        obscureText: true,
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
                          color: textSecondary,
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
                          color: secondary,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Obx(() {
                        return (auth.registrations.isTrue)
                            ? Container(
                                height: 60,
                                width: double.infinity,
                                child: CircularProgressIndicator.adaptive(),
                              )
                            : ElevatedButton(
                                onPressed: () {
                                  auth.registrations.value = true;
                                  if (password.text.isEmpty ||
                                      email.text.isEmpty ||
                                      name.text.isEmpty) {
                                    Get.snackbar(
                                      "Error",
                                      "All filed cannot be null",
                                      snackPosition: SnackPosition.BOTTOM,
                                    );
                                  }
                                  if (!GetUtils.isEmail(email.text)) {
                                    Get.snackbar(
                                      "Error",
                                      "Email is not valid",
                                      snackPosition: SnackPosition.BOTTOM,
                                    );
                                  }
                                  auth.registrasi(
                                    email: email.text,
                                    nama: name.text,
                                    password: password.text,
                                  );
                                  Get.back();
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: textPrimary,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(double.infinity, 60),
                                  primary: primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              );
                      }),
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
                                    color: textPrimary,
                                  )),
                              TextSpan(
                                text: "Login",
                                style: TextStyle(color: secondary),
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
