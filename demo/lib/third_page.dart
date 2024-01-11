import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  // const SecondPage({super.key});
  static const routeName = "third_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Arike Third",
        style: TextStyle(color: Colors.amberAccent),
      )),
      body: ListView(
        children: [
          Container(
            color: Colors.amberAccent,
            child: const ListTile(
              leading: Icon(Icons.access_time_filled_sharp),
              title: Text("Arike Preoder"),
              subtitle: Text("Subtitle"),
              trailing: Icon(Icons.developer_mode),
            ),
          ),
          Container(
            color: Colors.amberAccent,
            child: const ListTile(
              leading: Icon(Icons.access_time_filled_sharp),
              title: Text("Arike Preoder"),
              subtitle: Text("Subtitle"),
              trailing: Icon(Icons.developer_mode),
            ),
          ),
        ],
      ),
    );
  }
}
