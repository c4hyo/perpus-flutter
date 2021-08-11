class BooksModel {
  String? idBook;
  String? title;
  String? idWritter;
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
    this.idWritter,
    this.pages,
    this.qty,
    this.release,
    this.title,
    this.imageUrl,
  });
}
