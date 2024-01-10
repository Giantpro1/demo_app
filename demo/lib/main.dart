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
  int nums = 0;
  final ButtonStyle style = ElevatedButton.styleFrom(
    backgroundColor:
        const Color.fromARGB(255, 236, 191, 57), // Choose your preferred color
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Welcome Arike Preorder'),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: nums == 0
                  ? MainAxisAlignment.start
                  : nums == 1
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  child: Image.network(
                      'https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg'),
                ),
                Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: nums == 0
                        ? MainAxisAlignment.start
                        : nums == 1
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              // myNewButton = !myNewButton;
                              nums == 2 ? nums = 0 : nums = nums + 1;
                            });
                          },
                          child: const Text(
                            "My Button",
                            style: TextStyle(color: Colors.white),
                          )),
                      // Text(myNewButton ? "This Is true" : myNewText),
                      // Text("My Student"),
                      // Text("My Student"),
                    ],
                  ),
                )
              ],
            ),
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
      ),
    );
  }
}
