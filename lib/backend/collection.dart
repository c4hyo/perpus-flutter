import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseData {
  static FirebaseAuth auth = FirebaseAuth.instance;
  static CollectionReference user =
      FirebaseFirestore.instance.collection("users");
}
