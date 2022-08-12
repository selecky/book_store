import 'dart:convert';

import 'package:digital_solutions/models/book.dart';
import 'package:digital_solutions/strings/strings.dart';
import 'package:http/http.dart';

class BookRepo {

  Future <List<Book>> fetchBooks() async{
    List<Book> bookList = [];
    var response = await get(Uri.parse(Strings.apiRequest));
    List booksMap = jsonDecode(response.body)['books'];
    bookList = booksMap.map((e) => Book.fromJson(e)).toList();

    return bookList;
  }

}