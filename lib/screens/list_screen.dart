import 'package:digital_solutions/blocs/book_cubit.dart';
import 'package:digital_solutions/myWidgets/my_book_card.dart';
import 'package:digital_solutions/strings/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(Strings.list),
      ),
      body: BlocBuilder<BookCubit, BookState>(
        builder: (context, state) {

          if(state is BookStateLoading){
            return const Center(child: CircularProgressIndicator());
          }

          if(state is BookStateSuccess){
            return ListView.builder(
                itemCount: state.bookList.length,
                itemBuilder: (_, index) {
                  return MyBookCard(
                      book: state.bookList.reversed.toList()[index],
                      );
                });
          } 
          
          else {
            return const Center(child: Text('Error'));
          }
        },
      ),
    );
  }
}
