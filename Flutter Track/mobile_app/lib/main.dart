import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'TRADENAPP',
            style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent),
          ),
          Image.asset('asstes/welcome.png'),
          new Container(
            margin: const EdgeInsets.all(20),
            child: SizedBox(
              width: 800,
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {},
                child: Text('Login'),
                color: Colors.blue,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: SizedBox(
              width: 800,
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {},
                child: Text('Sign up'),
                color: Colors.blue,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
