import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/service-info.dart';

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
        body: Column(
          children: <Widget>[
            navigatSection,
            
          ],
        ));
  }
}
