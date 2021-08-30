import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:perpus/other/color.dart';

class AddBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesome5.arrow_alt_circle_left,
            color: tertiary,
          ),
          onPressed: () => Get.back(),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Add Books",
          style: TextStyle(color: textPrimary),
        ),
        centerTitle: true,
      ),
    );
  }
}
