import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:perpus/backend/collection.dart';
import 'package:perpus/backend/controller/userController.dart';
import 'package:perpus/backend/model/userModel.dart';

class AuthController extends GetxController {
  //getter user
  Rxn<User> _user = Rxn<User>();
  User? get user => _user.value;

  // loading auth
  var logins = false.obs;
  var registrations = false.obs;

  // registrasi user
  void registrasi({
    String? email,
    String? password,
    String? nama,
  }) async {
    try {
      UserCredential userCredential = await FirebaseData.auth
          .createUserWithEmailAndPassword(email: email!, password: password!);
      UserModel userModel = UserModel(
        email: email,
        name: nama,
        uid: userCredential.user!.uid,
        isAdmin: false,
        address: null,
        phone: null,
        photoUrl: null,
      );
      if (await Get.find<UserController>().createUser(userModel)) {
        Get.find<UserController>().userModel = userModel;
        Get.back();
      }
      registrations.value = false;
    } catch (e) {
      registrations.value = false;
      Get.snackbar("Gagal", e.toString());
    }
  }

  // login user
  void login({
    String? email,
    String? password,
  }) async {
    try {
      UserCredential userCredential = await FirebaseData.auth
          .signInWithEmailAndPassword(email: email!, password: password!);
      Get.find<UserController>().userModel = await Get.find<UserController>()
          .getProfil(id: userCredential.user!.uid);
      logins.value = false;
    } catch (e) {
      logins.value = false;
      Get.snackbar("Gagal", e.toString());
    }
  }

  // fungsi logout
  void logout() async {
    await FirebaseData.auth.signOut();
    Get.find<UserController>().clearProfil();
  }

  @override
  void onInit() {
    super.onInit();
    // mengecek status login dari user
    _user.bindStream(FirebaseData.auth.authStateChanges());
  }
}

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
  }
}
