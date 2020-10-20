import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './menu_drawer.dart';
import 'package:mobile_app/home_page.dart';

class Categories extends StatefulWidget {
  static String route = 'Categories';

  Categories({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
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
                IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }),
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
          )
        ],
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
        body: ListView(
          children: <Widget>[
            Row(
              children: [
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18.0),
                    ),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: SizedBox(
                    width: 280,
                    height: 35.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search here",
                                icon: Icon(
                                  Icons.search,
                                ),
                              ),
                            )),
                        Expanded(
                          flex: 0,
                          child: Row(
                            children: [
                              IconButton(
                                  icon: Icon(Icons.mic), onPressed: null),
                              IconButton(
                                  icon: Icon(Icons.more_vert),
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  'assets/search_filter.png',
                  height: 35,
                  width: 45,
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20.0),
              child: Text('CATEGORIES',
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              height: 1000,
              padding: EdgeInsets.only(top: 10),
              child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 3,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/price.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('price'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/camera.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('camera'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/card.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('Card'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/deactivate.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('Deactivate'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/facebook.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('facebook'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/expiry_date.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('experience'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/cash_on_delivery.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('cash_on_delivery'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/my_services_selected.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('My services'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/see_reviews.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('See_reviews'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/deactivate.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('Deactivate'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/deactivate.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('Deactivate'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/deactivate.png',
                        height: 70,
                        width: 60,
                      ),
                      SizedBox(height: 10),
                      Text('Deactivate'),
                    ],
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
