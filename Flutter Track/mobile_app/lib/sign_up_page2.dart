import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:mobile_app/service-info.dart';

class SignupPage2 extends StatefulWidget {
  static String route = 'SignupPage2';
  SignupPage2({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _SignupPage2State createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      obscureText: false,
      style: TextStyle(fontSize: 15.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: "NAME",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
    final emailField = TextField(
      obscureText: false,
      style: TextStyle(fontSize: 15.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: "EMAIL ADDRESS / PHONE NUMBER",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );

    final passwordField = TextField(
      obscureText: true,
      style: TextStyle(fontSize: 15.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: "PASSWORD",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        suffixIcon: Icon(Icons.visibility_sharp),
      ),
    );

    final confirmpwdField = TextField(
      obscureText: true,
      style: TextStyle(fontSize: 15.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: "CONFIRM PASSWORD",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        suffixIcon: Icon(Icons.visibility_sharp),
      ),
    );

    final signupButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue[800],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SinfoPage()));
        },
        child: Text("SIGN UP",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.blue[800],
          ),
          title: Text(
            'SIGN UP',
            style: style.copyWith(
                color: Colors.blue[800],
                fontWeight: FontWeight.bold,
                fontSize: 35.0),
            textAlign: TextAlign.center,
          ),
          centerTitle: true),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                nameField,
                SizedBox(
                  height: 15.0,
                ),
                emailField,
                SizedBox(height: 15.0),
                passwordField,
                SizedBox(
                  height: 15.0,
                ),
                confirmpwdField,
                SizedBox(height: 10.0),
                ListTile(
                  leading: CircularCheckBox(
                      value: this.selected,
                      checkColor: Colors.white,
                      activeColor: Colors.blue[100],
                      inactiveColor: Colors.redAccent,
                      disabledColor: Colors.grey,
                      onChanged: (val) => this.setState(() {
                            this.selected = !this.selected;
                          })),
                  title: Text(
                    "I agree with all terms and conditions",
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () => this.setState(() {
                    this.selected = !this.selected;
                  }),
                ),
                SizedBox(
                  height: 10.0,
                ),
                signupButton,
                SizedBox(height: 15.0),
                Text(
                  'Already have an account? Login',
                  style: TextStyle(color: Colors.blue[800]),
                ),
                SizedBox(
                  height: 50.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
