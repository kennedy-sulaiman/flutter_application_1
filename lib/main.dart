import 'package:flutter/material.dart';


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

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tempat Liburan Bandung"),
      ),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
                onPressed: () {},
                child: PlaceList(
                  name: "Hallo",
                )),
            margin: EdgeInsets.all(20),
          )
        ],
      ),
    );
  }
}

class PlaceList extends StatelessWidget {
  final String name;

  PlaceList({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(name),
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        shape: BoxShape.rectangle,
      ),
    );
  }
}
