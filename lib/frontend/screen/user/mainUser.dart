import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:perpus/backend/controller/user/homeControllerUser.dart';
import 'package:perpus/frontend/screen/user/mainComponent/borrow.dart';
import 'package:perpus/frontend/screen/user/mainComponent/home.dart';
import 'package:perpus/other/color.dart';

class MainUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeUser = Get.put(HomeUserController());
    List<Widget> _tabs() => listScreen;
    final List<Widget> _tab = _tabs();
    return Obx(() {
      return Scaffold(
        backgroundColor: ColorData.primary,
        bottomNavigationBar: BottomNavigationBar(
          items: bottomBarItem,
          currentIndex: homeUser.indexTab.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorData.textPrimary,
          unselectedItemColor: ColorData.textSecondary,
          iconSize: 20,
          onTap: (i) {
            homeUser.indexTab.value = i;
          },
        ),
        body: SafeArea(
          child: Container(child: _tab[homeUser.indexTab.value]),
        ),
      );
    });
  }
}

List<Widget> listScreen = [
  HomeUser(),
  BorrowUser(),
  Text("page 3"),
  Text("page 4"),
];

List<BottomNavigationBarItem> bottomBarItem = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesome5.handshake),
    label: "Borrowed",
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesome.bookmark),
    label: "Favorites",
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesome.user_secret),
    label: "Profil",
  ),
];
