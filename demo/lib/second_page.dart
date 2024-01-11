import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  // const SecondPage({super.key});
  static const routeName = "second_page";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int numbers = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Arike Next Page",
        style: TextStyle(color: Colors.amberAccent),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    numbers = numbers + 1;
                  });
                },
                child: const Text(
                  "Add title",
                  style: TextStyle(color: Colors.amberAccent),
                )),
            ListView.builder(
              physics: const ScrollPhysics(parent: null),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: index.isEven ? Colors.amberAccent : Colors.cyan,
                  child: const ListTile(
                    trailing: Icon(Icons.device_hub),
                    title: Text("Arike Preorder"),
                    subtitle: Text("Iya fu Gbogbo Awon Omo Tiktok"),
                    leading: Icon(Icons.local_activity),
                  ),
                );
              },
              itemCount: numbers,
            )
          ],
        ),
      ),
    );
  }
}
