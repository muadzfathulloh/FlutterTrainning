import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'assets/images/heroic1.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                "Surabaya Heroic Monument",
                textAlign: TextAlign.center,
                style: TextStyle(
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
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      Text('Open Everyday')
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Heroes Monument, also known as Heroic Monument (Indonesian:Tugu Pahlawan) is a monument in Surabaya, Indonesia. It is the main symbol of the city, dedicated to the people who died during the Battle of Surabaya on November 10, 1945. Entrance fee only Rp.2000,00/person',
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
                    child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset('assets/images/heroic2.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset('assets/images/heroic3.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset('assets/images/heroic4.jpg'),
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
