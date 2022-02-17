import 'package:flutter/material.dart';
import 'farm-house-desc.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'images/farm-house.jpg',
            ),
            _NameOfPlace(),
            _Information(),
            _Description(),
            _ListViewPicture()
          ],
        ),
      )),
    );
  }
}

class _NameOfPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Farm House Lembang",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      margin: EdgeInsets.only(top: 20),
    );
  }
}

class _Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.calendar_today),
              SizedBox(height: 8.0),
              Text("Open Everyday")
            ],
          ),
          Column(
            children: [
              Icon(Icons.schedule),
              SizedBox(height: 8.0),
              Text("09:00 - 20:00")
            ],
          ),
          Column(
            children: [
              Icon(Icons.monetization_on),
              SizedBox(height: 8.0),
              Text("Rp 25.000 / orang")
            ],
          )
        ],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
        child: FarmHouseDescription());
  }
}

class _ListViewPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50),
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg')),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg')),
          ),
          Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
              ))
        ],
      ),
    );
  }
}
