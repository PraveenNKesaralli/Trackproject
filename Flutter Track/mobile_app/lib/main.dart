import 'package:flutter/material.dart';

import 'package:mobile_app/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MyHomePage.route: (context) => MyHomePage(),
        LoginPage.route: (context) => LoginPage(),
      },
      title: 'Tradenapp Homepage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Tradenapp Homepage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  static String route = 'Welcome';
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final loginButon = Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue[800],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(context, LoginPage.route);
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final signupButon = Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue[800],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Sign Up",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'TRADENAPP',
                  textAlign: TextAlign.center,
                  style: style.copyWith(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0),
                ),
                SizedBox(
                    height: 400.0,
                    child: ListView(children: [
                      Container(
                        margin: const EdgeInsets.all(0),
                        width: 600.0,
                        child: Image.asset(
                          "assets/welcome.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        'Find services near you',
                        textAlign: TextAlign.center,
                        style: style.copyWith(
                            color: Colors.blue[800],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Search for local and international services and browse between them',
                        textAlign: TextAlign.center,
                      ),
                    ])),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
                signupButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          'Skip',
          style: TextStyle(color: Colors.blue[800]),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
