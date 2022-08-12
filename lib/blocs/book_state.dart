part of 'book_cubit.dart';

@immutable
abstract class BookState {}

class BookStateLoading extends BookState {}

class BookStateError extends BookState {}

class BookStateSuccess extends BookState {
  final List<Book> bookList;
  BookStateSuccess({required this.bookList});
}
