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

    Widget bodyfield() {
      return Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Type:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Task',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Priority:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'High Priority',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Affects Version/s:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'None',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Component/s:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'None',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Labels:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Webetc',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Sprint:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Story Points:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '6',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Status',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'New',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Resolution:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Unresolved',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bodyfield2() {
      return Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Fix Version/s:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'None',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Assignee:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/Sijo.svg',
                        height: 15,
                        width: 15,
                      ),
                      Text(
                        'Sijo M Peter',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Reporter:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/Sijo.svg',
                        height: 15,
                        width: 15,
                      ),
                      Text(
                        'Sijo M Peter',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Votes:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '0',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Watchers:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '1 stop watching the issue',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.blue[800]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Created:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '02.01.2019',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Updated:',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '02.01.2019',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget descfield() {
      return Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Description:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  labelText: 'Click to add description',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget agilefield() {
      return Container(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Agile:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  labelText: 'View on Board',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget attachfield() {
      return Container(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Attachment:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.cloud_upload_outlined),
                  labelText: 'Drop files to attach',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
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
          child: Container(
            child: ListView(
              children: [
                header(),
                SizedBox(height: 20),
                boxfield1(),
                SizedBox(height: 5),
                boxfield2(),
                bodyfield(),
                bodyfield2(),
                SizedBox(height: 10),
                descfield(),
                SizedBox(height: 10),
                agilefield(),
                SizedBox(height: 10),
                attachfield(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ));
  }
}
