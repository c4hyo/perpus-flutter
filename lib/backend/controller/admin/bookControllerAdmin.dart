import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:perpus/backend/collection.dart';
import 'package:perpus/backend/model/booksModel.dart';

class BookAdminController extends GetxController {
  Future<bool> addBooks(BooksModel booksModel) async {
    try {
      await FirebaseData.books.add({
        "description": booksModel.description,
        "genre": booksModel.genre,
        "writter": booksModel.writter,
        "pages": booksModel.pages,
        "qty": booksModel.qty,
        "release": booksModel.release,
        "title": booksModel.title,
        "image_url": booksModel.imageUrl,
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> editBook(BooksModel booksModel) async {
    try {
      await FirebaseData.books.doc(booksModel.idBook).update({
        "description": booksModel.description,
        "genre": booksModel.genre,
        "writter": booksModel.writter,
        "pages": booksModel.pages,
        "qty": booksModel.qty,
        "release": booksModel.release,
        "title": booksModel.title,
        "image_url": booksModel.imageUrl,
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteBook(BooksModel booksModel) async {
    try {
      await FirebaseData.books.doc(booksModel.idBook).delete();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<BooksModel> detailBook(BooksModel booksModel) async {
    try {
      DocumentSnapshot doc =
          await FirebaseData.books.doc(booksModel.idBook).get();
      return BooksModel.fromDoc(doc);
    } catch (e) {
      rethrow;
    }
  }
}
