import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:bira_app/darwer_list.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    Widget titlefield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Title:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  labelText: "Title",
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

    Widget typefield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Type:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                  ),
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

    Widget priorityfield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Priority:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                  ),
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

    Widget affectfield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Affect Version/s:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
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

    Widget componentfield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Component/s:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
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

    Widget labelfield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Labels:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
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

    Widget storyfield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Story Points:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                  ),
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

    Widget statusfield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Status:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
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

    Widget resolutionfield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Resolution:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
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

    Widget fixvfield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Fixversion/s:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                  ),
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

    Widget assigneefield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Assignee:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                  ),
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

    Widget reportfield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Reporter:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                  ),
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

    Widget descfield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Description:',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
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

    Widget ftypefield() {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Select Type:',
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

    final submitButton = Material(
      elevation: 10.0,
      color: Colors.blue[800],
      child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sumbit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              )
            ],
          )),
    );

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
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Title(
                  color: Colors.deepPurple,
                  child: Text(
                    'Create',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 20,
              ),
              titlefield(),
              SizedBox(height: 20),
              typefield(),
              SizedBox(height: 20),
              priorityfield(),
              SizedBox(height: 20),
              affectfield(),
              SizedBox(height: 20),
              componentfield(),
              SizedBox(height: 20),
              labelfield(),
              SizedBox(height: 20),
              storyfield(),
              SizedBox(height: 20),
              statusfield(),
              SizedBox(height: 20),
              resolutionfield(),
              SizedBox(height: 20),
              fixvfield(),
              SizedBox(height: 20),
              assigneefield(),
              SizedBox(height: 20),
              reportfield(),
              SizedBox(height: 20),
              descfield(),
              SizedBox(height: 20),
              ftypefield(),
              SizedBox(height: 20),
              submitButton,
            ],
          ),
        ),
      ),
    );
  }
}
