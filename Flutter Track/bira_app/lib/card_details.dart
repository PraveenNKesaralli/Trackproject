//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:bira_app/darwer_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardDetails extends StatefulWidget {
  @override
  _CardDetailsState createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 15, 0),
        child: Text(
          'Lorem ipsum dolor sit amit,cosectetur adipiscing elit.',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            wordSpacing: 2,
          ),
          softWrap: true,
        ),
      );
    }

    Widget boxfield1() {
      return Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: Row(
          children: [
            FlatButton(
              minWidth: 90,
              onPressed: () => {},
              color: Colors.cyan[100],
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset('assets/Edit.svg'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            FlatButton(
              minWidth: 140,
              onPressed: () => {},
              color: Colors.cyan[100],
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset('assets/Comment.svg'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Comment",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            FlatButton(
              onPressed: () => {},
              color: Colors.cyan[100],
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Assign",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget boxfield2() {
      return Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
        child: Row(
          children: [
            FlatButton(
                minWidth: 100,
                onPressed: () => {},
                color: Colors.cyan[100],
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Wont Fix",
                  style: TextStyle(fontSize: 18),
                )),
            SizedBox(
              width: 10,
            ),
            FlatButton(
                minWidth: 100,
                onPressed: () => {},
                color: Colors.cyan[100],
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Accept",
                  style: TextStyle(fontSize: 18),
                )),
            SizedBox(
              width: 10,
            ),
            FlatButton(
                minWidth: 120,
                onPressed: () => {},
                color: Colors.cyan[100],
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Work Flow",
                  style: TextStyle(fontSize: 18),
                )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      );
    }

    return Scaffold(
        drawer: DrawerPage(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
              builder: (context) => IconButton(
                  icon: new Icon(
                    Icons.menu,
                    color: Colors.blue,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer())),
          title: Text(
            'tracker',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications_on_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
                onPressed: () {}),
          ],
        ),
        body: Center(
          child: ListView(
            children: [
              header(),
              SizedBox(height: 20),
              boxfield1(),
              SizedBox(height: 5),
              boxfield2()
            ],
          ),
        ));
  }
}
