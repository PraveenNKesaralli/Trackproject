import 'package:flutter/material.dart';

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

    return Scaffold(
      body: Center(
        child: ListView(
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
    );
  }
}
