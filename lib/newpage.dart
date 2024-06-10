import 'package:app1/main.dart';
import 'package:flutter/material.dart';
import 'items.dart';

class Islam extends StatefulWidget {
  const Islam({super.key});

  @override
  State<Islam> createState() => _IslamState();
}

class _IslamState extends State<Islam> {
  List<Items> listItems = [
    Items(
        id: 10,
        name: "Tuna",
        imgImage:
            "assets/vecteezy_spaghetti-italian-pasta-with-tomato-sauce_9887173.png"),
    Items(
        id: 20,
        name: "Kuna",
        imgImage:
            "assets/vecteezy_spaghetti-italian-pasta-with-tomato-sauce_9887173.png"),
    Items(
        id: 33,
        name: "Fish",
        imgImage:
            "assets/vecteezy_spaghetti-italian-pasta-with-tomato-sauce_9887173.png"),
    Items(
        id: 40,
        name: "Shark",
        imgImage:
            "assets/vecteezy_spaghetti-italian-pasta-with-tomato-sauce_9887173.png"),
  ];
  @override
  Widget build(BuildContext context) {
    // int count = 5;
    return Scaffold(
      body: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomePage()));
              },
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        AssetImage(listItems[index].imgImage.toString()),
                  ),
                  title: Text(
                    listItems[index].id.toString(),
                  ),
                  subtitle: Text(listItems[index].name.toString()),
                ),
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
