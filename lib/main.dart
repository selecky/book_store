import 'package:digital_solutions/blocs/book_cubit.dart';
import 'package:digital_solutions/locator/service_locator.dart';
import 'package:digital_solutions/screens/list_screen.dart';
import 'package:digital_solutions/strings/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{

  // Initializing service locator
  await setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookCubit()..init(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(Strings.appTitle),
      ),
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(Strings.appTitle, style: Theme
              .of(context)
              .textTheme
              .titleLarge,),
          const SizedBox(height: 8,),
          Text(Strings.description),
        ],
      ),),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(Strings.list),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const ListScreen()));
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
