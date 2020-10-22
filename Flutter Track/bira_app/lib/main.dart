import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Bira Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget buildcard() {
      return (SizedBox(
        height: 250.0,
        width: 380.0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 5.0,
            child: InkWell(
              onTap: () {},
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'ID:PCG836342',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Text(
                          'January 02,2019',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                    child: Column(
                      //  mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Lorem ipsumn dolor sit amet, conctetur adipiscing elit,Ut ut gravida dolor, Phaselus vitae sim',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                    child: Row(
                      children: [Text('Assignee'), Spacer(), Text('Status')],
                    ),
                  ),
                  // Container(
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         child: Row(
                  //           children: [
                  //             //  Image.asset('assets/sigo.svg'),
                  //             ListTile(
                  //               title: Text('Sijo M Peter'),
                  //               subtitle: Text('UI/UX Designer'),
                  //             )
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // )

                  SvgPicture.asset(
                    'assets/Sijo.svg',
                  )
                ],
              ),
            ),
          ),
        ),
      ));
    }

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // leading: Image.asset('assets/Logo.svg'),
        title: Text(
          'tracker',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.notifications_on_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 30, left: 10, bottom: 20),
              child: Row(
                children: [
                  Title(
                    color: Colors.deepPurple[300],
                    child: Text(
                      'Issues',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1000,
              width: 500,
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Card(
                  color: Colors.pink[50],
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Text(
                              'To Do 5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_drop_down_outlined),
                          ],
                        ),
                      ),
                      buildcard(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
