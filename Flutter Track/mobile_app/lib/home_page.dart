import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/categories.dart';

import 'package:mobile_app/service-info.dart';
import './menu_drawer.dart';

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
    final _screenSize = MediaQuery.of(context).size;
    Widget navigatSection = Container(
      padding: const EdgeInsets.only(top: 40),
      color: Colors.blue[800],
      child: Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(bottom: 10),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/location_icon.png',
                    height: 15,
                    width: 20,
                  ),
                  Text('HSR Layout,Bangalore',
                      style: TextStyle(color: Colors.white)),
                  Image.asset('assets/location_dropdown.png',
                      height: 15, width: 20),
                ],
              )),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(Icons.home),
                SizedBox(
                  width: 40,
                ),
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Categories()));
                    }),
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
          )
        ],
      ),
    );

    Widget _buildCard() => SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 5.0,
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SinfoPage()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Ink.image(
                            height: 80,
                            image: AssetImage('assets/food.jpg'),
                            fit: BoxFit.fitWidth,
                          ),
                          Container(
                              child: Image.asset('assets/rating.png',
                                  height: 40, width: 30)),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 12, top: 10, right: 12),
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'NATURALS CAFE AND RESTAURENT',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Text('By IceLand',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.blue)),
                              Text('62 connected',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.blue)),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                        child: Text(
                          'The Spacious and best in UAE with 32 emanities... ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 10),
                          softWrap: true,
                        ),
                      )),
                    ],
                  )),
            ),
          ),
        );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.0),
        child: Container(
          child: navigatSection,
        ),
      ),
      body: Scaffold(
        drawer: DrawerPage(),
        body: SafeArea(
          child: GridView.count(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            children: List.generate(50, (index) {
              return Container(
                height: _screenSize.height * 0.2,
                child: _buildCard(),
              );
            }),
          ),
        ),
      ),
    );
  }
}
