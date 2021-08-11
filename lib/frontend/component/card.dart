import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:perpus/other/color.dart';

class CardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      child: Card(
        color: ColorData.textSecondary,
        child: FlutterLogo(),
      ),
    );
  }
}

class CardListBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        width: Get.width,
        height: Get.width / 2,
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: Get.width,
                  height: Get.width / 3,
                  color: ColorData.tertiary,
                ),
              ),
            ),
            Positioned.fill(
              left: 10,
              bottom: 10,
              child: Align(
                alignment: Alignment.centerLeft,
                child: CardImage(),
              ),
            ),
            Positioned.fill(
              right: 20,
              top: 20,
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  FontAwesome5.arrow_alt_circle_right,
                  size: 25,
                  color: ColorData.textSecondary,
                ),
              ),
            ),
            Positioned.fill(
              right: 5,
              bottom: 10,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: Get.width / 2,
                  height: Get.width / 3.5,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Belajar Flutter Masa Lalu",
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorData.textPrimary,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Muchammad Dwi Cahyo Nugroho",
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: ColorData.textSecondary,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardGridBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.width/2,
      width: Get.width/2,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: Get.width/2,
                height: Get.width/3,
                color: ColorData.tertiary,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: CardImage(),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: Get.width/2,
                height: Get.width/4,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Belajar Flutter Masa Lalu",
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorData.textPrimary,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Muchammad Dwi Cahyo Nugroho",
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: ColorData.textSecondary,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
