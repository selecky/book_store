import 'package:digital_solutions/models/book.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  final Book _book;

  const DetailScreen({Key? key, required Book book})

      : _book = book,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(_book.title),);
  }
}
