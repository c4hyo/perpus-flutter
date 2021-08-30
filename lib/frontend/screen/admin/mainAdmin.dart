import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:perpus/backend/controller/admin/homeControllerAdmin.dart';
import 'package:perpus/frontend/screen/admin/mainComponent/books.dart';
import 'package:perpus/frontend/screen/admin/mainComponent/home.dart';
import 'package:perpus/other/color.dart';

class MainAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final home = Get.put(HomeControllerAdmin());
    List<Widget> _tabs() => listScreenAdmin;
    final List<Widget> _tab = _tabs();
    return Obx(
      () => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: bottomBarItem,
          currentIndex: home.indexTab.value,
          backgroundColor: secondary,
          selectedItemColor: tertiary,
          unselectedItemColor: textSecondary,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          onTap: (i) {
            home.indexTab.value = i;
          },
        ),
        body: SafeArea(
          child: Container(child: _tab[home.indexTab.value]),
        ),
      ),
    );
  }
}

List<Widget> listScreenAdmin = [
  HomeAdmin(),
  ListBooksAdmin(),
  Text("page 3"),
  Text("page 4"),
];

List<BottomNavigationBarItem> bottomBarItem = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesome.book),
    label: "Books",
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesome5.handshake),
    label: "Borrowed",
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesome.user_secret),
    label: "Profil",
  ),
];
