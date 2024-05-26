import 'package:flutter/material.dart';

class Islam extends StatefulWidget {
  const Islam({super.key});

  @override
  State<Islam> createState() => _IslamState();
}

class _IslamState extends State<Islam> {
  @override
  Widget build(BuildContext context) {
    int count = 5;
    return Scaffold(
      body: ListView.builder(
          itemCount: count,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text("Item $index"),
              ),
            );
          }),
    );

    // return Scaffold(
    //   body: ListView(children: const [
    //     Text("item 1"),
    //     Text("item 1"),
    //     Text("item 1"),
    //   ]),
    // );
  }
}
