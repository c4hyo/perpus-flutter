import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:perpus/backend/controller/user/booksControllerUser.dart';
import 'package:perpus/frontend/component/card.dart';
import 'package:perpus/other/color.dart';
import 'package:get/get.dart';
import 'package:perpus/other/theme.dart';

class AllBookUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final books = Get.put<BooksController>(BooksController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          Obx(() {
            return IconButton(
              icon: Icon(
                books.isList.isTrue
                    ? FontAwesome5.list
                    : FontAwesome5.grip_vertical,
                color: textPrimary,
              ),
              onPressed: () => books.isList.toggle(),
            );
          }),
        ],
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            FontAwesome5.arrow_alt_circle_left,
            color: textPrimary,
          ),
          onPressed: () => Get.back(),
        ),
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
      body: Obx(() {
        return Padding(
          padding: EdgeInsets.all(20),
          child: books.isList.isTrue
              ? ListView.builder(
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return CardListBook();
                  },
                )
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 1 / 1.6,
                  ),
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return CardGridBook();
                  },
                ),
        );
      }),
    );
  }
}
