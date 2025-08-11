import 'package:flutter/material.dart';

void main() {
  print("hello world");
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome to l&t',
      home: Text('welcome to flutter session'),
    );
  }
}



