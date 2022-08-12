import 'package:digital_solutions/models/book.dart';
import 'package:flutter/material.dart';

class MyBookCard extends StatelessWidget {

  const MyBookCard({
    Key? key,
    required Book book,
  })
      : _book = book,
        super(key: key);

  final Book _book;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: SizedBox(
        height: 80,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(_book.title, overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 8,),
                Text(_book.subTitle, overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 8,),
                Text(_book.isbn13, overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 8,),
                Text(_book.price, overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 8,),
                Text(_book.image, overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 8,),
                Text(_book.url, overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 8,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
