import 'package:flutter/material.dart';
import 'package:fp1_wisata_bandung/DetailScreen.dart';
import 'package:fp1_wisata_bandung/TourismPlace.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tempat Wisata Bandung"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            final TourismPlace place = tourismPlaceList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(place: place);
                }));
              },
              child: Card(
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Image.asset(place.imageAsset)),
                    Expanded(
                        flex: 2,
                        child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(place.name),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(place.location)
                              ],
                            )))
                  ],
                ),
              ),
            );
          },
          itemCount: tourismPlaceList.length),
    );
  }
}
