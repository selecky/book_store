import 'package:bloc/bloc.dart';
import 'package:digital_solutions/locator/service_locator.dart';
import 'package:digital_solutions/models/book.dart';
import 'package:digital_solutions/repository/book_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit() : super(BookStateLoading());

  List<Book> bookList = [];

  void init() async{
    emit(BookStateLoading());
    try {
      bookList = await locator<BookRepo>().fetchBooks();
      emit(BookStateSuccess(bookList: bookList));
    } catch (e) {
      debugPrint(e.toString());
      emit(BookStateError());
    }
  }
}
