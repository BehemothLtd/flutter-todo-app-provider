import 'package:flutter/material.dart';
import 'package:todo_provider/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String appTitle = "ToDo App with Provider";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFFf6f5ee),
      ),
      home: HomePage(appTitle: appTitle),
    );
  }
}
