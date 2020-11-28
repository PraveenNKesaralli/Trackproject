import 'package:flutter/material.dart';

import 'package:link_tree_demo/main.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key key, this.title}) : super(key: key);
  static String route = 'SignupPage';
  final String title;
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  bool selected = false;
  @override
  Widget build(BuildContext context) {
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
              'Sign up for your Linktree account',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );

    final registerButon = Material(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.grey[200],
      child: MaterialButton(
        minWidth: 270,
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        onPressed: () {
          //  Navigator.pushNamed(context, LoginPage.route);
        },
        child: Text("Register",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16)),
      ),
    );

    final loginButon = Material(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.grey[200],
      child: MaterialButton(
        minWidth: 270,
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        child: Text("Log in",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16)),
      ),
    );

    final footer = Material(
      child: Container(
        color: Colors.grey[200],
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.only(top: 10, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'By using this service you are agreeing to the terms of service and privacy policy',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12),
            ),
            SizedBox(height: 15),
            Text(
              "Already have an account? Log in here.",
              textAlign: TextAlign.center,
              style: style.copyWith(fontWeight: FontWeight.w300, fontSize: 16),
            ),
            loginButon,
          ],
        ),
      ),
    );

    final emailInputElement = TextField(
      scrollPadding: EdgeInsets.only(left: 40),
      obscureText: false,
      style: TextStyle(fontSize: 16.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 5.0),
        labelText: "Email",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
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

    final passwordCredential = TextField(
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

    final repeatPassword = TextField(
      scrollPadding: EdgeInsets.only(left: 40),
      obscureText: true,
      style: TextStyle(fontSize: 16.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 5.0),
        labelText: " Repeat Password",
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
              height: 30,
            ),
            emailInputElement,
            userName,
            passwordCredential,
            repeatPassword,
            SizedBox(
              height: 35.0,
            ),
            registerButon,
            SizedBox(
              height: 35.0,
            ),
            footer,
          ],
        ),
      ),
    );
  }
}
