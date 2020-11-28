import 'package:flutter/material.dart';

import 'package:link_tree_demo/SignUp_lt.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:link_tree_demo/linksPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MyHomePage.route: (context) => MyHomePage(),
        LinksPage.route: (context) => LinksPage(),
        SignupPage.route: (context) => SignupPage(),
      },
      title: 'Linktree loginpage',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Linktree Loginpage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  static String route = 'LoginPage';
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    final loginButon = Material(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.grey[200],
      child: MaterialButton(
        minWidth: 270,
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        onPressed: () {
          Navigator.pushNamed(context, LinksPage.route);
        },
        child: Text("Log in",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16)),
      ),
    );

    final signupButon = Material(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.grey[200],
      child: MaterialButton(
        minWidth: 270,
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        onPressed: () {
          Navigator.pushNamed(context, SignupPage.route);
        },
        child: Text("Sign up",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16)),
      ),
    );

    final signInsta = Material(
      // borderRadius: BorderRadius.circular(10.0),
      color: Colors.grey[200],
      child: FlatButton(
        // minWidth: MediaQuery.of(context).size.width,
        minWidth: 200,

        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        onPressed: () {
          //  Navigator.pushNamed(context, LoginPage.route);
        },
        child: Row(
          children: [
            Image.asset(
              "assets/insta.png",
              fit: BoxFit.contain,
              width: 40,
              height: 30,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'Sign in with Instagram',
              textAlign: TextAlign.center,
              style:
                  style.copyWith(fontWeight: FontWeight.w600, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );

    final header = Material(
      child: Container(
        color: Colors.grey[200],
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.only(top: 50, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/linktree.png",
                    fit: BoxFit.contain,
                    width: 50,
                  ),
                  Text(
                    'Linktree',
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 35.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Log in to continue to your Linktree admin',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );

    final footer = Material(
      child: Container(
        color: Colors.grey[200],
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.only(top: 20, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Don't have an account? Sign up here.",
              textAlign: TextAlign.center,
              style: style.copyWith(fontWeight: FontWeight.w300, fontSize: 16),
            ),
            signupButon,
          ],
        ),
      ),
    );

    final userName = TextField(
      scrollPadding: EdgeInsets.only(left: 40),
      obscureText: false,
      style: TextStyle(fontSize: 16.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 5.0),
        labelText: "Username",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );

    final password = TextField(
      scrollPadding: EdgeInsets.only(left: 40),
      obscureText: true,
      style: TextStyle(fontSize: 16.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 5.0),
        labelText: "Password",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            header,
            SizedBox(
              height: 30.0,
            ),
            signInsta,
            SizedBox(
              height: 30,
            ),
            Row(children: <Widget>[
              Expanded(child: Divider()),
              Text("or"),
              Expanded(child: Divider()),
            ]),
            SizedBox(
              height: 10.0,
            ),
            userName,
            password,
            SizedBox(
              height: 10.0,
            ),
            ListTile(
              leading: CircularCheckBox(
                  value: this.selected,
                  checkColor: Colors.black,
                  activeColor: Colors.grey[200],
                  inactiveColor: Colors.redAccent,
                  disabledColor: Colors.grey,
                  onChanged: (val) => this.setState(() {
                        this.selected = !this.selected;
                      })),
              title: Text(
                "Remember me",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              onTap: () => this.setState(() {
                this.selected = !this.selected;
              }),
            ),
            SizedBox(
              height: 10.0,
            ),
            loginButon,
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Forgot your password? click to reset',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.0,
            ),
            footer,
          ],
        ),
      ),
    );
  }
}
