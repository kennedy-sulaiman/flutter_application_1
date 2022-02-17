import 'package:flutter/material.dart';
import 'TourismPlace.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: [
                Image.asset(
                  place.imageAsset,
                ),
                SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      FavoriteIcon()
                    ],
                  ),
                ))
              ],
            ),
            _NameOfPlace(
              place: place,
            ),
            _Information(
              place: place,
            ),
            _Description(
              place: place,
            ),
            _ListViewPicture(
              place: place,
            )
          ],
        ),
      )),
    );
  }
}

class _NameOfPlace extends StatelessWidget {
  final TourismPlace place;
  _NameOfPlace({required this.place});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          place.name,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      margin: EdgeInsets.only(top: 20),
    );
  }
}

class _Information extends StatelessWidget {
  final TourismPlace place;
  _Information({required this.place});
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
              Text(place.openDays)
            ],
          ),
          Column(
            children: [
              Icon(Icons.schedule),
              SizedBox(height: 8.0),
              Text(place.openTime)
            ],
          ),
          Column(
            children: [
              Icon(Icons.monetization_on),
              SizedBox(height: 8.0),
              Text(place.ticketPrice)
            ],
          )
        ],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  final TourismPlace place;
  _Description({required this.place});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
        child: Text(
          place.description,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 20),
        ));
  }
}

class _ListViewPicture extends StatelessWidget {
  final TourismPlace place;
  _ListViewPicture({required this.place});
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
                child: Image.network(place.imageUrls[0])),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(place.imageUrls[1])),
          ),
          Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(place.imageUrls[2]),
              ))
        ],
      ),
    );
  }
}

class FavoriteIcon extends StatefulWidget {
  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
        onPressed: () {
          setState(() {
            _isFavorite = !_isFavorite;
          });
        });
  }
}
