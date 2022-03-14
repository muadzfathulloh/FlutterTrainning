import 'package:flutter/material.dart';
import 'package:flutter_1/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              place.imageAsset,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      Text(place.day)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      Text(place.hour)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      Text(place.fee)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.desc,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(place.galery[0]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(place.galery[1]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(place.galery[2]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
