import 'package:flutter/material.dart';

class Islam extends StatefulWidget {
  const Islam({super.key});

  @override
  State<Islam> createState() => _IslamState();
}

class _IslamState extends State<Islam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        Text("item 1"),
        Text("item 1"),
        Text("item 1"),
      ]),
    );
  }
}
