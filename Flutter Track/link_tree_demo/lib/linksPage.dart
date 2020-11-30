import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class LinksPage extends StatefulWidget {
  static String route = 'LinksPage';
  @override
  _LinksPageState createState() => _LinksPageState();
}

class _LinksPageState extends State<LinksPage> {
  @override
  Widget build(BuildContext context) {
    final header = Material(
        child: Padding(
      padding: EdgeInsets.only(left: 10, right: 15),
      child: Row(
        children: [
          Image.asset(
            'assets/linktree.png',
            width: 40,
            height: 30,
          ),
          Spacer(),
          Icon(
            Icons.message,
            color: Colors.grey,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.menu,
            size: 30,
            color: Colors.black,
          ),
        ],
      ),
    ));

    final sharebuton = Material(
      borderRadius: BorderRadius.circular(10.0),
      child: MaterialButton(
        minWidth: 60,
        padding: EdgeInsets.only(left: 5, right: 5),
        onPressed: () {},
        child: Text(
          'Share',
          textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.black, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10)),
      ),
    );

    final mylink = Material(
      child: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                  text: 'My Linktree:',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' https://linktr.ee/username',
                      style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ]),
            ),
            Spacer(),
            sharebuton,
          ],
        ),
      ),
    );

    final applyButon = Material(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.blue[900],
      child: MaterialButton(
        minWidth: 300,
        height: 10,
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        onPressed: () {
          Navigator.pushNamed(context, LinksPage.route);
        },
        child: Text("Add New Link",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16)),
      ),
    );

    // final analytics = Material(
    //   child: Column(
    //     children: [
    //       Text(
    //         'Life Time Analytics:',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       )
    //     ],
    //   ),
    // );

    List<Widget> containers = [
      Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            applyButon,
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 80,
              width: 320,
              child: Card(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.more_vert,
                        size: 30,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 100),
                      Text(
                        'demo card',
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Text('hi'),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Text('hello'),
          ],
        ),
      ),
    ];

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 170,
            // Padding: EdgeInsets.zero,
            backgroundColor: Colors.grey[50],
            title: Container(
              child: Column(
                children: <Widget>[
                  header,
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  mylink,
                  Divider(),
                ],
              ),
            ),
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              indicatorPadding: EdgeInsets.zero,
              tabs: [
                Tab(text: 'Links'),
                Tab(text: 'Appearance'),
                Tab(text: 'Settings'),
              ],
            ),
          ),
          body: TabBarView(
            children: containers,
          ),
        ),
      ),
    );
  }
}
