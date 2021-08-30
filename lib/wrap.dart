import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perpus/backend/controller/authController.dart';
import 'package:perpus/backend/controller/userController.dart';
import 'package:perpus/frontend/screen/admin/mainAdmin.dart';
import 'package:perpus/frontend/screen/auth/login.dart';
import 'package:perpus/frontend/screen/user/mainUser.dart';

class WrapAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<UserController>(
      init: UserController(),
      builder: (_) {
        if (Get.find<AuthController>().user?.uid != null) {
          return WrapRole();
        } else {
          return LoginScreen();
        }
      },
    );
  }
}

class WrapRole extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: Get.find<UserController>(),
      initState: (_) async {
        Get.find<UserController>().userModel = await Get.find<UserController>()
            .getProfil(id: Get.find<AuthController>().user!.uid);
        print("Email: ${Get.find<UserController>().userModel.email}");
      },
      builder: (userS) {
        return Scaffold(
          body: Obx(
            () => (userS.userModel.email == null || userS.userModel.email == "")
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : (userS.userModel.isAdmin!)
                    ? MainAdmin()
                    : MainUser(),
          ),
        );
      },
    );
  }
}
