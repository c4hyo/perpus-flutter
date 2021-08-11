import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:perpus/frontend/component/card.dart';
import 'package:perpus/other/color.dart';
import 'package:perpus/other/theme.dart';

class BorrowUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorData.primary,
        title: Text(
          "All Borrowed Books",
          style: TextStyle(color: ColorData.textPrimary),
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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (_, index) {
            return CardListBook();
          },
        ),
      ),
    );
  }
}
