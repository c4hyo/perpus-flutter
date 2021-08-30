import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perpus/backend/controller/admin/homeControllerAdmin.dart';
import 'package:perpus/backend/controller/authController.dart';
import 'package:perpus/backend/controller/userController.dart';
import 'package:perpus/other/color.dart';

class HomeAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Get.find<UserController>();
    final auth = Get.find<AuthController>();
    return Container(
      child: Column(
        children: [
          Text("${user.userModel.email}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: Get.width / 3.5,
                width: Get.width / 3.5,
                color: primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "20",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Buku"),
                  ],
                ),
              ),
              Container(
                height: Get.width / 3.5,
                width: Get.width / 3.5,
                color: secondary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "20",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Pengguna"),
                  ],
                ),
              ),
              Container(
                height: Get.width / 3.5,
                width: Get.width / 3.5,
                color: tertiary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "20",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Pengunjung",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text("Buku Terpopuler"),
          Text("Peminjam Terbaru"),
          ElevatedButton(
            onPressed: () {
              auth.logout();
              Get.find<HomeControllerAdmin>().indexTab.value = 0;
            },
            child: Text("Logout"),
          )
        ],
      ),
    );
  }
}
