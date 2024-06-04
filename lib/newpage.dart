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
            "https://www.aqueon.com/-/media/project/oneweb/aqueon/us/blog/ways-to-know-your-fish-are-happy/fish-are-happy-and-healthy-1.png?h=66%25&w=100%25&hash=D8A0FDD1D6120B433A8F206753F1D10E"),
    Items(
        id: 20,
        name: "Kuna",
        imgImage:
            "https://www.thesprucepets.com/thmb/mqDUthvhFDnGW_D0pV-oT3PS4jc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/goldfishwithplant-3a74a71246a04848b14146ed55b55d94.png"),
    Items(
        id: 33,
        name: "Fish",
        imgImage:
            "https://www.aqueon.com/-/media/project/oneweb/aqueon/us/blog/ways-to-know-your-fish-are-happy/fish-are-happy-and-healthy-1.png?h=66%25&w=100%25&hash=D8A0FDD1D6120B433A8F206753F1D10E"),
    Items(
        id: 40,
        name: "Shark",
        imgImage:
            "https://www.aqueon.com/-/media/project/oneweb/aqueon/us/blog/ways-to-know-your-fish-are-happy/fish-are-happy-and-healthy-1.png?h=66%25&w=100%25&hash=D8A0FDD1D6120B433A8F206753F1D10E"),
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
                        NetworkImage(listItems[index].imgImage.toString()),
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
