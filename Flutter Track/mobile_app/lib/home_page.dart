import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/service-info.dart';

class HomePage extends StatefulWidget {
  static String route = 'Home Page';

  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget navigatSection = Container(
      color: Colors.blue[800],
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SinfoPage()));
            },
          ),
          SizedBox(
            width: 40,
          ),
          Icon(Icons.home),
          SizedBox(
            width: 40,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 40,
          ),
          Icon(Icons.notifications),
          SizedBox(
            width: 40,
          ),
          Icon(Icons.messenger_outline_sharp),
        ],
      ),
    );

    Widget _buildCard() => SizedBox(
          height: 220,
          width: double.maxFinite,
          child: Card(
            elevation: 5.0,
            child: Column(
              children: [
                Image.asset(
                  'assets/food.jpg',
                  height: 100,
                  width: 400,
                  alignment: Alignment.topLeft,
                ),
                ListTile(
                  title: Text('HOME MADE BURGERS',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20.0)),
                  subtitle: Text('By BurgerKing'),
                ),
                Text(
                  'The spacious and best in UAE with 32 amanites...',
                  style: TextStyle(
                    color: Colors.indigo[400],
                  ),
                )
              ],
            ),
          ),
        );

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Container(
            child: AppBar(
              backgroundColor: Colors.blue[800],
              elevation: 0.0,
              title: Text(
                'HSR Layout, Bangalore',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              leading: Icon(Icons.location_on),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            navigatSection,
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: _buildCard(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: _buildCard(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: _buildCard(),
            ),
          ],
        ));
  }
}
