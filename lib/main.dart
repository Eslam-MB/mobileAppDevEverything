import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/////////////////////////////////////List Tile
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.ac_unit_sharp),
            title: const Text(
              "Cold button",
              style: TextStyle(color: Colors.red),
            ),
            subtitle: const Text("button to cool up the weather"),
            trailing:
                ElevatedButton(onPressed: () {}, child: const Text("Do it")),
          ),
          ListTile(
            leading: const Icon(Icons.hot_tub),
            title: const Text("Hot button"),
            subtitle: const Text("button to heat up the weather"),
            trailing:
                ElevatedButton(onPressed: () {}, child: const Text("Do it")),
          ),
          ListTile(
            leading: Image.asset(
              "assets/Schema.png",
              height: 40,
              width: 30,
            ),
            title: const Text("Hot button"),
            subtitle: const Text("button to heat up the weather"),
            trailing:
                ElevatedButton(onPressed: () {}, child: const Text("Do it")),
          ),
        ],
      )),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////





/////////////////////////////////////////////////////////////////////////////////CALCULATOR WITH THE DOT DETECTOR
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
// class _MyAppState extends State<MyApp> {
//   final txt = TextEditingController();
//   double? num1;
//   double? num2;
//   String? s;
//   int dot = 0;
//   Widget cteb(String str) {
//     return Padding(
//       padding: const EdgeInsets.all(3.0),
//       child: ElevatedButton(
//           onPressed: () {
//             if (str == '.') dot++;
//             if (str == '.' && dot > 1) {
//               str = "";
//             }
//             if (str == "+" || str == "-" || str == "*" || str == "/") {
//               num1 = double.parse(txt.text);
//               s = str;
//             } else if (str == "=") {
//               num2 = double.parse(txt.text);
//               if (s == "+") {
//                 txt.text = (num1! + num2!).toString();
//               }
//               if (s == "-") {
//                 txt.text = (num1! - num2!).toString();
//               }
//               if (s == "*") {
//                 txt.text = (num1! * num2!).toString();
//               }
//               if (s == "/") {
//                 txt.text = (num1! / num2!).toString();
//               }
//               if (s == "/" && num2 == 0) {
//                 txt.text = "You can't divide by zero";
//               }
//             } else if (str == "C") {
//               txt.clear();
//             } else {
//               txt.text = txt.text + str;
//             }
//           },
//           child: Text(str)),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           height: 300,
//           width: 270,
//           margin: const EdgeInsets.all(100),
//           color: const Color.fromARGB(255, 76, 109, 136),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 6),
//                 child: TextField(
//                     decoration:
//                         const InputDecoration(border: OutlineInputBorder()),
//                     controller: txt),
//               ),
//               Row(
//                 children: [cteb("1"), cteb("2"), cteb("3"), cteb("*")],
//               ),
//               Row(
//                 children: [cteb("4"), cteb("5"), cteb("6"), cteb("/")],
//               ),
//               Row(
//                 children: [cteb("7"), cteb("8"), cteb("9"), cteb("+")],
//               ),
//               Row(
//                 children: [cteb("."), cteb("0"), cteb("="), cteb("-")],
//               ),
//               Row(
//                 children: [
//                   cteb("C"),
//                 ],
//               ),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }

////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////CALCULATOR WITHOUT THE DOT DETECTOR
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
// class _MyAppState extends State<MyApp> {
//   final txt = TextEditingController();
//   // final _txt2 = TextEditingController();
//   Widget cteb(String str) {
//     return Padding(
//       padding: const EdgeInsets.all(3.0),
//       child: ElevatedButton(
//           onPressed: () {
//             if (str == "+" || str == "-" ||  str == "*" || str == "/") {
//               num1 = double.parse(txt.text);
//               s = str;
//               txt.clear();
//             } else if (str == "=") {
//               num2 = double.parse(txt.text);
//               if (s == "+") txt.text = (num1! + num2!).toString();
//               if (s == "-") txt.text = (num1! - num2!).toString();
//               if (s == "*") txt.text = (num1! * num2!).toString();
//               if (s == "/") txt.text = (num1! / num2!).toString();
//             } else if (str == "C") {
//               txt.clear();
//             } else {
//               txt.text = txt.text + str;
//             }
//           },
//           child: Text(str)),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           height: 300,
//           width: 270,
//           margin: const EdgeInsets.all(100),
//           color: Colors.greenAccent,
//           child: SizedBox(
//             width: 63,
//             child: Padding(
//               padding: const EdgeInsets.all(9.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextField(
//                     controller: _txt,
//                     decoration: const InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Enter a number'),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   // TextField(
//                   //   controller: _txt2,
//                   // ),
//                   // ElevatedButton(
//                   //   onPressed: () {
//                   //     _txt.text = _txt2.text;
//                   //   },
//                   //   child: const Icon(Icons.done),
//                   // ),
//                   Row(
//                     children: [
//                       ct("1"),
//                       ct("2"),
//                       ct("3"),
//                       ct("*"),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       ct("4"),
//                       ct("5"),
//                       ct("6"),
//                       ct("/"),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       ct("7"),
//                       ct("8"),
//                       ct("9"),
//                       ct("-"),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       ct("<="),
//                       ct("0"),
//                       ct("."),
//                       ct("="),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// // //////////////////////////////////////////////////////////////////////// ASSIGNMENT 1 FLUTTER ROW EXAMPLE
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.blue,
// //           title: const Text(
// //             "Flutter Row Example",
// //             style: TextStyle(color: Colors.white, fontSize: 18),
// //           ),
// //         ),
// //         body: Column(
// //           children: [
// //             const SizedBox(
// //               height: 9,
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 Container(
// //                   decoration: const BoxDecoration(
// //                     color: Colors.green,
// //                     borderRadius: BorderRadius.all(
// //                       Radius.circular(5),
// //                     ),
// //                   ),
// //                   child: const Padding(
// //                     padding: EdgeInsets.all(5.0),
// //                     child: Text(
// //                       "React.js",
// //                       style: TextStyle(color: Colors.white, fontSize: 18),
// //                     ),
// //                   ),
// //                 ),
// //                 Container(
// //                   decoration: const BoxDecoration(
// //                     color: Colors.green,
// //                     borderRadius: BorderRadius.all(
// //                       Radius.circular(5),
// //                     ),
// //                   ),
// //                   child: const Padding(
// //                     padding: EdgeInsets.all(5.0),
// //                     child: Text(
// //                       "Flutter",
// //                       style: TextStyle(color: Colors.white, fontSize: 18),
// //                     ),
// //                   ),
// //                 ),
// //                 Container(
// //                   decoration: const BoxDecoration(
// //                     color: Colors.green,
// //                     borderRadius: BorderRadius.all(
// //                       Radius.circular(5),
// //                     ),
// //                   ),
// //                   child: const Padding(
// //                     padding: EdgeInsets.all(5.0),
// //                     child: Text(
// //                       "MySQL",
// //                       style: TextStyle(color: Colors.white, fontSize: 18),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// // //////////////////////////////////////////////////////////////////////// ASSIGNMENT 1 FLUTTER COLUMN EXAMPLE
// //  class MyApp extends StatelessWidget {
// //    const MyApp({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.blue,
// //           title: const Text(
// //             "Flutter Column Example",
// //             style: TextStyle(color: Colors.white),
// //           ),
// //         ),
// //         body: Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 10),
// //           child: Column(
// //             children: [
// //               const SizedBox(
// //                 height: 30,
// //               ),
// //               Container(
// //                 decoration: const BoxDecoration(
// //                   color: Colors.red,
// //                   borderRadius: BorderRadius.all(
// //                     Radius.circular(5),
// //                   ),
// //                 ),
// //                 child: const Padding(
// //                   padding: EdgeInsets.all(5.0),
// //                   child: Text(
// //                     "React.js",
// //                     style: TextStyle(color: Colors.white, fontSize: 18),
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(
// //                 height: 250,
// //               ),
// //               Container(
// //                 decoration: const BoxDecoration(
// //                   color: Colors.red,
// //                   borderRadius: BorderRadius.all(
// //                     Radius.circular(5),
// //                   ),
// //                 ),
// //                 child: const Padding(
// //                   padding: EdgeInsets.all(5.0),
// //                   child: Text(
// //                     "Flutter",
// //                     style: TextStyle(color: Colors.white, fontSize: 18),
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(
// //                 height: 250,
// //               ),
// //               Container(
// //                 decoration: const BoxDecoration(
// //                   color: Colors.red,
// //                   borderRadius: BorderRadius.all(
// //                     Radius.circular(5),
// //                   ),
// //                 ),
// //                 child: const Padding(
// //                   padding: EdgeInsets.all(5.0),
// //                   child: Text(
// //                     "MySQL",
// //                     style: TextStyle(color: Colors.white, fontSize: 18),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // ////////////////////////////////////////////////////////////////////////ASSIGNMENT 1 FLUTTER TEXT EXAMPLE
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text(
// //             "Text Widget Example",
// //             style: TextStyle(color: Colors.white, fontSize: 20),
// //           ),
// //           backgroundColor: Colors.green,
// //           centerTitle: true,
// //         ),
// //         // AppBar(
// //         //   title: const Text(
// //         //     "Text Widget Example",
// //         //     style: TextStyle(color: Colors.white),
// //         //   ),
// //         //   backgroundColor: Colors.green,
// //         // ),
// //         body: const Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Row(
// //               children: [
// //                 Expanded(
// //                   child: Text(
// //                     "Hello World! \nThis is a Text \nWidget.",
// //                     style: TextStyle(
// //                       overflow: TextOverflow.ellipsis,
// //                       color: Colors.purple,
// //                       fontSize: 30,
// //                       backgroundColor: Colors.yellow,
// //                       fontWeight: FontWeight.bold,
// //                       fontStyle: FontStyle.italic,
// //                       letterSpacing: 12,
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // //////////////////////////////////////////////////////////////////
// // /////////////////////////previous class , FIRST CLASS OR SECOND I THINK///////////////////////////
// // // class MyApp extends StatelessWidget {
// // //   const MyApp({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false,
// // //       home: Scaffold(
// // //         appBar: AppBar(
// // //           title: const Text("Uni flutter app"),
// // //           centerTitle: true,
// // //         ),
// // //         body: Column(
// // //           children: [
// // //             Container(
// // //                 height: 150,
// // //                 width: 200,
// // //                 decoration: const BoxDecoration(
// // //                     borderRadius: BorderRadius.all(Radius.circular(9)),
// // //                     color: Color.fromARGB(174, 5, 196, 92)),
// // //                 child: const Padding(
// // //                   padding: EdgeInsets.all(10.0),
// // //                   child: Column(
// // //                     children: [
// // //                       TextField(
// // //                         decoration: InputDecoration(
// // //                           enabledBorder: OutlineInputBorder(
// // //                               borderSide: BorderSide(color: Colors.black)),
// // //                           border: OutlineInputBorder(
// // //                             borderRadius: BorderRadius.all(Radius.circular(9)),
// // //                           ),
// // //                         ),
// // //                       ),
// // //                       SizedBox(
// // //                         height: 5,
// // //                       ),
// // //                       TextField(
// // //                         decoration: InputDecoration(
// // //                           enabledBorder: OutlineInputBorder(
// // //                               borderSide: BorderSide(color: Colors.black)),
// // //                           border: OutlineInputBorder(
// // //                               borderRadius:
// // //                                   BorderRadius.all(Radius.circular(12))),
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 )),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
