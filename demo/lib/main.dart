import 'package:demo/third_page.dart';
import 'package:flutter/material.dart';
import 'second_page.dart';
import 'home_page.dart';

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
  int nums = 0;
  final ButtonStyle style = ElevatedButton.styleFrom(
    backgroundColor:
        const Color.fromARGB(255, 236, 191, 57), // Choose your preferred color
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SizedBox(
        child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/pixel.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: const MyScalfordApp()),
      ),
      routes: {
        SecondPage.routeName: (_) => SecondPage(),
        ThirdPage.routeName: (_) => ThirdPage()
      },
    );
  }
}
