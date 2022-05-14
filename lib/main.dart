import 'package:flutter/material.dart';
import 'package:typesofwidgetsinflutter/ui/home_screen.dart';
import 'package:typesofwidgetsinflutter/widgets/filter_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Types of Widget In Flutter ',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
