import 'package:demo/second_page.dart';
import 'package:flutter/material.dart';
import 'third_page.dart';

class MyScalfordApp extends StatefulWidget {
  const MyScalfordApp({super.key});

  @override
  State<MyScalfordApp> createState() => _MyScalfordAppState();
}

class _MyScalfordAppState extends State<MyScalfordApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Welcome Arike Preorder'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: nums == 0
          //     ? MainAxisAlignment.start
          //     : nums == 1
          //         ? MainAxisAlignment.center
          //         : MainAxisAlignment.end,
          children: [
            Container(
              child: Image.asset('images/pixel.jpg'),
            ),
            // Container(
            //   height: 30,
            //   child: Row(
            //     mainAxisAlignment: nums == 0
            //         ? MainAxisAlignment.start
            //         : nums == 1
            //             ? MainAxisAlignment.center
            //             : MainAxisAlignment.end,
            //     children: [
            // ElevatedButton(
            //     style: style,
            //     onPressed: () {
            //       setState(() {
            //         // myNewButton = !myNewButton;
            //         nums == 2 ? nums = 0 : nums = nums + 1;
            //       });
            //     },
            //     child: const Text(
            //       "My Button",
            //       style: TextStyle(color: Colors.white),
            //     )),
            // Text(myNewButton ? "This Is true" : myNewText),
            // Text("My Student"),
            // Text("My Student"),
            //   ],
            // ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amberAccent,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                // print("Button Pressed");
              },
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SecondPage.routeName);
              },
              icon: const Icon(
                Icons.heart_broken,
                color: Color.fromARGB(255, 234, 23, 23),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ThirdPage.routeName);
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
