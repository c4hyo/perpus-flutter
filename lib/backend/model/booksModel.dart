import 'package:cloud_firestore/cloud_firestore.dart';

class BooksModel {
  String? idBook;
  String? title;
  String? writter;
  int? pages;
  int? release;
  String? genre;
  String? description;
  int? qty;
  String? imageUrl;

  BooksModel({
    this.idBook,
    this.description,
    this.genre,
    this.writter,
    this.pages,
    this.qty,
    this.release,
    this.title,
    this.imageUrl,
  });

  BooksModel.fromDoc(DocumentSnapshot doc) {
    idBook = doc.id;
    description = doc['description'];
    genre = doc['genre'];
    writter = doc['writter'];
    pages = doc['pages'];
    qty = doc['qty'];
    release = doc['release'];
    title = doc['title'];
    imageUrl = doc['image_url'];
  }
}
