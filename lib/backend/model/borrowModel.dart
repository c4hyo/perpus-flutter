class BorrowModel {
  String? id;
  String? idBook;
  String? idUser;
  String? bookTitle;
  String? userName;
  String? borrowDate;
  String? returnDate;
  bool? borrowed;
  String? idAdminLends;
  String? idAdminReceiving;

  BorrowModel({
    this.idBook,
    this.id,
    this.idUser,
    this.bookTitle,
    this.borrowDate,
    this.borrowed,
    this.idAdminLends,
    this.idAdminReceiving,
    this.returnDate,
    this.userName,
  });
}
