import 'package:flutter/material.dart';
import 'HomeScreen.dart';

void main(List<String> args) {
  runApp(MyVacationApp());
}

class MyVacationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Vacation Application",
      theme: ThemeData(
        fontFamily: 'Oswald',
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Tempat Liburan Bandung"),
//       ),
//       body: Column(
//         children: [
//           Image.asset(
//             'images/bosscha.jpg',
//             width: 200,
//             height: 300 ,
//           ),
//         ],
//       ),
//     );
//   }
// }
