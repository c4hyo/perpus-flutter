import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? uid;
  String? name;
  String? email;
  String? phone;
  bool? isAdmin;
  String? address;
  String? photoUrl;

  UserModel({
    this.uid,
    this.name,
    this.isAdmin,
    this.email,
    this.address,
    this.phone,
    this.photoUrl,
  });

  UserModel.docSnapshot(DocumentSnapshot doc) {
    isAdmin = doc['is_admin'];
    email = doc['email'];
    address = doc['address'];
    phone = doc['phone'];
    photoUrl = doc['photo_url'];
    name = doc['name'];
    uid = doc.id;
  }
}
