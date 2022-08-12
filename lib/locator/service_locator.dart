
import 'package:digital_solutions/repository/book_repo.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;

Future<void> setupLocator () async{

  locator.registerSingleton<BookRepo>(BookRepo());

}