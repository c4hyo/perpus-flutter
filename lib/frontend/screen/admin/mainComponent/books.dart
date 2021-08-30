import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:perpus/frontend/screen/admin/book/add.dart';
import 'package:perpus/other/color.dart';
import 'package:perpus/other/theme.dart';

class ListBooksAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: tertiary,
        onPressed: () => Get.to(
          () => AddBook(),
        ),
        child: Icon(
          FontAwesome5.plus_circle,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "All Books",
          style: TextStyle(color: textPrimary),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            padding: EdgeInsets.only(left: 30, top: 10, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(FontAwesome5.times_circle),
                hintText: "Search Book",
                fillColor: Colors.white,
                filled: true,
                border: ThemeInputBorder.outlinedGrey,
                enabledBorder: ThemeInputBorder.outlinedGrey,
                focusedBorder: ThemeInputBorder.outlinedGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
