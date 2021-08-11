import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:perpus/frontend/component/card.dart';
import 'package:perpus/frontend/screen/user/book/all.dart';
import 'package:perpus/frontend/screen/user/book/detail.dart';
import 'package:perpus/other/color.dart';

class HomeUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        primary: true,
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: FlutterLogo(
                        size: 80,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hello Midas",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () => print("notif"),
                  icon: Icon(FontAwesome5.bell),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Available for you",
                  style: TextStyle(
                    color: ColorData.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                GestureDetector(
                  onTap: ()=>Get.to(()=>AllBookUser()),
                  child: Text(
                    "View all",
                    style: TextStyle(
                      color: ColorData.textSecondary,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 230,
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () => Get.to(DetailBookUser()),
                    child: CardImage(),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pick from Popular Genre",
                  style: TextStyle(
                    color: ColorData.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: ColorData.textSecondary,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Container(
              height: 150,
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return CardImage();
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Recently Borrowed Books",
                  style: TextStyle(
                    color: ColorData.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: ColorData.textSecondary,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Container(
              height: 230,
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return CardImage();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
