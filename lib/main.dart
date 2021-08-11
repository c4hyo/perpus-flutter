import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpus/frontend/screen/auth/login.dart';
import 'package:perpus/other/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   backgroundColor: ColorData.primary,
        //   elevation: 10,
        // ),
      ),
    );
  }
}
