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
      home: const MyHomePage(title: 'My Home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0; //juice

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _incrementCounter,
      ),
      appBar: AppBar(backgroundColor: Colors.amber, title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //hey mr column, plz align your children in the center of your main axis
          children: [
            Text('you clicked the button 10 times'),
            Text( '$_counter', style: TextStyle(fontSize: 20.0)),

            Image.asset(
              'assets/images/my_image.jpeg',
              fit: BoxFit.cover,
            ),          ],
        ),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++; //pouring juice
    });
  }
}
