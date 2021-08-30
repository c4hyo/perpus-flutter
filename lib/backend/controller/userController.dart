import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:perpus/backend/collection.dart';
import 'package:perpus/backend/model/userModel.dart';

class UserController extends GetxController {
  //setter getter userModel
  // Rxn<UserModel> _userModel = Rxn<UserModel>();
  // UserModel get userModel => _userModel.value!;
  // set userModel(UserModel model) => this._userModel.value = model;

  final _userModel = UserModel().obs;
  UserModel get userModel => _userModel.value;
  set userModel(UserModel value) => this._userModel.value = value;

  Future<bool> createUser(UserModel userModel) async {
    try {
      await FirebaseData.user.doc(userModel.uid).set({
        "name": userModel.name,
        "is_admin": userModel.isAdmin,
        "email": userModel.email,
        "address": userModel.address,
        "phone": userModel.phone,
        "photo_url": userModel.photoUrl,
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  // mengambil data profil berdasarkan id
  Future<UserModel> getProfil({String? id}) async {
    try {
      DocumentSnapshot doc = await FirebaseData.user.doc(id!).get();
      return UserModel.docSnapshot(doc);
    } catch (e) {
      rethrow;
    }
  }

  // menghapus data user saat logout
  void clearProfil() {
    _userModel.value = UserModel();
  }
}
