import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Welcome Arike Preorder'),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.amberAccent,
            child: IconButton(
                onPressed: () {
                  // print("Button Pressed");
                },
                icon: const Icon(Icons.home, color: Colors.white,))),
      ),
    );
  }
}
