import 'package:flutter/material.dart';

class SinfoPage extends StatefulWidget {
  static String route = 'HomePage';

  SinfoPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SinfoPageState createState() => _SinfoPageState();
}

class _SinfoPageState extends State<SinfoPage> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'NATURALS CAFE & RESTAURENT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
                Text(
                  'Cafe | By Satva',
                  style: TextStyle(
                    color: Colors.blue[400],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget rating = Container(
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/star_rating.png',
            width: 60,
            height: 30,
          ),
          Text('4.5',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          Text(
            '(128)',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width: 40.0,
          ),
          Text(
            '15K followers',
            style: TextStyle(color: Colors.blue[800]),
          )
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/see_reviews.png',
            width: 30,
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              'See Reviews',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
          Image.asset(
            'assets/follow.png',
            width: 30,
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              'Follow',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
          Image.asset(
            'assets/share.png',
            width: 30,
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              'Share',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Text(
            'Naturals Cafe lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Restaurents. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
            softWrap: true,
            style: TextStyle(fontSize: 16, color: Colors.indigo[400]),
          ),
        ],
      ),
    );
    return MaterialApp(
      title: 'Service Details',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SERVICE INO'),
          backgroundColor: Colors.blue[800],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/food.jpg',
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            rating,
            buttonSection,
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 20, 0, 0),
              child: Text(
                'ABOUT',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, color: Colors.blue[400]),
              ),
            ),
            // SizedBox(
            //   height: 20.0,
            // ),
            textSection,
          ],
        ),
      ),
    );
  }
}
