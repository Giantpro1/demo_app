import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({super.key});
  bool myNewButton = false;
  String myNewText = "Hello";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Welcome Arike Preorder'),
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    myNewButton = !myNewButton;
                  });
                },
                child: const Text("My Button")),
            Container(
              height: 30,
              child: Row(
                children: [
                  Text(myNewButton ? "This Is true" : myNewText),
                  // Text("My Student"),
                  // Text("My Student"),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.amberAccent,
            child: IconButton(
                onPressed: () {
                  // print("Button Pressed");
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ))),
      ),
    );
  }
}
