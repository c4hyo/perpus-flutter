import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:perpus/frontend/component/card.dart';
import 'package:perpus/other/color.dart';

class DetailBookUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.transparent,
                  ),
                  Container(
                    height: 225,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: ColorData.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(250, 25),
                        bottomRight: Radius.elliptical(250, 25),
                      )
                    ),
                  ),
                  Positioned.fill(
                    left: 15,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CardImage(),
                    ),
                  ),
                  Positioned.fill(
                    left: 15,
                    top: 15,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () => Get.back(),
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Icon(
                            FontAwesome5.arrow_left,
                            color: ColorData.textPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    right: 15,
                    top: 15,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () => print("favorit"),
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Icon(
                            FontAwesome5.heart,
                            color: ColorData.textSecondary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Belajar Flutter Masa Lalu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorData.textPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "Muchammad Dwi Cahyo Nugroho",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorData.textSecondary,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description",
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: ColorData.textPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "Genre : Fiction, Crime, Drama, Thriler",
                      style: TextStyle(
                        color: ColorData.textPrimary,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Pages : 180",
                      style: TextStyle(
                        color: ColorData.textPrimary,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Release : 2090",
                      style: TextStyle(
                        color: ColorData.textPrimary,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: ColorData.textPrimary,
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: ElevatedButton(
                        onPressed: () => print("pinjam"),
                        child: Text(
                          "Borrow",
                          style: TextStyle(
                            color: ColorData.textSecondary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100, 40),
                          primary: ColorData.tertiary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Similar Book",
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
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return CardImage();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
